import 'package:archive/archive.dart';
import 'package:file/memory.dart';
import 'package:open_xml/open_xml.dart';
import 'package:open_xml/src/package/package.dart';
import 'package:test/test.dart';

void main() {
  group('PPTX Regression Test', () {
    test('Generate Presentation with all features and validate OOXML', () async {
      final fs = MemoryFileSystem();
      final pres = await Presentation.create(fs);

      // Slide 1: Title, Text, Notes, Comment, SolidBackground
      pres.addSlide()
        ..addTitle('Slide 1')
        ..addText('Content')
        ..addNote('Speaker notes for slide 1')
        ..addComment('Review this slide', author: 'Tester', initials: 'T')
        ..setBackground(SolidColorBackground(OpenXmlColor('112233')));

      // Slide 2: Transition + TextBox + GradientBackground
      final slide2 = pres.addSlide();
      slide2.setTransition(
        PushTransition(direction: P_ST_TransitionSideDirectionType.r),
      );
      slide2.addTextBox(text: 'Floating Text', x: 100, y: 100);
      slide2.setBackground(
        LinearGradientBackground(
          angle: 45,
          stops: [
            GradientStop(OpenXmlColor('FF0000'), 0),
            GradientStop(OpenXmlColor('0000FF'), 100000),
          ],
        ),
      );

      final outputFile = fs.file('test_full.pptx');
      await pres.save(outputFile);

      final (isValid, messages) = await pres.validate();
      expect(isValid, isTrue, reason: messages.join('\n'));

      expect(outputFile.existsSync(), isTrue);
      expect(outputFile.lengthSync(), greaterThan(0));

      final archive = ZipDecoder().decodeBytes(outputFile.readAsBytesSync());

      // Verify slideLayout1.xml has a:xfrm in p:grpSpPr and p:clrMapOvr
      final layoutFile = archive.files.firstWhere(
        (f) => f.name == 'ppt/slideLayouts/slideLayout1.xml',
      );
      final layoutDoc = XmlDocument.parse(
        String.fromCharCodes(layoutFile.content as List<int>),
      );
      final sldLayout = layoutDoc.rootElement;
      expect(sldLayout.getAttribute('type'), equals('blank'));
      expect(sldLayout.getAttribute('preserve'), equals('1'));
      final layoutGrpSpPr = sldLayout.findAllElements('p:grpSpPr').first;
      expect(layoutGrpSpPr.findElements('a:xfrm'), isNotEmpty);
      expect(sldLayout.findElements('p:clrMapOvr'), isNotEmpty);

      // Verify slideMaster1.xml has a:effectLst in p:bgPr and no ma14:wrappingTextBoxFlag
      final masterFile = archive.files.firstWhere(
        (f) => f.name == 'ppt/slideMasters/slideMaster1.xml',
      );
      final masterXml = String.fromCharCodes(masterFile.content as List<int>);
      expect(masterXml, isNot(contains('wrappingTextBoxFlag')));
      final masterDoc = XmlDocument.parse(masterXml);
      final masterBgPr = masterDoc.findAllElements('p:bgPr').first;
      expect(masterBgPr.findElements('a:effectLst'), isNotEmpty);

      // Verify core.xml has W3CDTF UTC timestamps and title/creator
      final coreFile = archive.files.firstWhere(
        (f) => f.name == 'docProps/core.xml',
      );
      final coreDoc = XmlDocument.parse(
        String.fromCharCodes(coreFile.content as List<int>),
      );
      expect(coreDoc.findAllElements('dc:title').first.innerText, isNotEmpty);
      final createdEl = coreDoc.findAllElements('dcterms:created').first;
      expect(createdEl.getAttribute('xsi:type'), equals('dcterms:W3CDTF'));
      expect(createdEl.innerText.endsWith('Z'), isTrue);

      // Verify app.xml has PowerPoint properties and slide/notes count
      final appFile = archive.files.firstWhere(
        (f) => f.name == 'docProps/app.xml',
      );
      final appDoc = XmlDocument.parse(
        String.fromCharCodes(appFile.content as List<int>),
      );
      expect(
        appDoc.findAllElements('Application').first.innerText,
        equals('Microsoft Office PowerPoint'),
      );
      expect(appDoc.findAllElements('Slides').first.innerText, equals('2'));
      expect(appDoc.findAllElements('Notes').first.innerText, equals('1'));
    });

    test('Generate Presentation with Images and ImageBackground', () async {
      final fs = MemoryFileSystem();
      final dummyImg = fs.file('dummy.png');
      dummyImg.writeAsBytesSync([1, 2, 3]); // Mock image data

      final pres = await Presentation.create(fs);
      final slide = pres.addSlide();
      slide.addImage(path: 'dummy.png');
      slide.setBackground(ImageBackground('dummy.png'));

      final outputFile = fs.file('test_images.pptx');
      await pres.save(outputFile);

      final (isValid, messages) = await pres.validate();
      expect(isValid, isTrue, reason: messages.join('\n'));

      expect(outputFile.existsSync(), isTrue);

      final archive = ZipDecoder().decodeBytes(outputFile.readAsBytesSync());
      final slideFile = archive.files.firstWhere(
        (f) => f.name == 'ppt/slides/slide1.xml',
      );
      final slideDoc = XmlDocument.parse(
        String.fromCharCodes(slideFile.content as List<int>),
      );
      final bgPr = slideDoc.findAllElements('p:bgPr').first;
      expect(bgPr.findElements('a:blipFill'), isNotEmpty);
      expect(bgPr.findElements('a:effectLst'), isNotEmpty);
    });

    test('validateDirectory catches missing a:effectLst in p:bgPr and missing a:xfrm in p:grpSpPr', () async {
      final fs = MemoryFileSystem();
      final dir = fs.directory('/invalid_pptx')..createSync(recursive: true);

      // Slide with p:bgPr missing a:effectLst and p:grpSpPr missing a:xfrm
      dir.childFile('slide1.xml').writeAsStringSync('''
<?xml version="1.0" encoding="UTF-8"?>
<p:sld xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main"
       xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"
       xmlns:p="http://schemas.openxmlformats.org/presentationml/2006/main">
  <p:cSld>
    <p:bg>
      <p:bgPr>
        <a:solidFill><a:srgbClr val="FFFFFF"/></a:solidFill>
      </p:bgPr>
    </p:bg>
    <p:spTree>
      <p:nvGrpSpPr>
        <p:cNvPr id="1" name=""/>
        <p:cNvGrpSpPr/>
        <p:nvPr/>
      </p:nvGrpSpPr>
      <p:grpSpPr/>
    </p:spTree>
  </p:cSld>
</p:sld>
''');

      final (isValid, messages) = await validateDirectory(dir);
      expect(isValid, isFalse);
      final joined = messages.join('\n');
      expect(joined, contains('Missing required <a:effectLst/>'));
      expect(joined, contains('Missing required <a:xfrm>'));
    });

    test(
      'extensionless media paths and custom title produce valid [Content_Types].xml and core.xml',
      () async {
        final fs = MemoryFileSystem();
        // Create an extensionless file inside a directory with a dot in its name
        final imgFile = fs.file('/tmp/v1.0/900')..createSync(recursive: true);
        // 1x1 PNG magic bytes
        imgFile.writeAsBytesSync([
          0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A,
          0x00, 0x00, 0x00, 0x0D, 0x49, 0x48, 0x44, 0x52,
          0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
          0x08, 0x06, 0x00, 0x00, 0x00, 0x1F, 0x15, 0xC4,
          0x89, 0x00, 0x00, 0x00, 0x0A, 0x49, 0x44, 0x41,
          0x54, 0x78, 0x9C, 0x63, 0x00, 0x01, 0x00, 0x00,
          0x05, 0x00, 0x01, 0x0D, 0x0A, 0x2D, 0xB4, 0x00,
          0x00, 0x00, 0x00, 0x49, 0x45, 0x4E, 0x44, 0xAE,
          0x42, 0x60, 0x82,
        ]);

        final pres = await Presentation.create(fs);
        pres.title = 'Custom Hymn Title';
        final slide = pres.addSlide(layout: 'Missing Custom Layout');
        slide.addImage(path: imgFile.path);

        final outFile = fs.file('/test_extless.pptx');
        await pres.save(outFile);

        final (isValid, messages) = await pres.validate();
        expect(isValid, isTrue, reason: messages.join('\n'));
        await pres.close();

        final pkg = await OoxmlPackage.open(outFile);
        final ctXml = await pkg.readPartAsString('[Content_Types].xml');
        expect(ctXml, isNot(contains('v1.0')));
        expect(ctXml, isNot(contains('/900')));

        final coreXml = await pkg.readPartAsString('docProps/core.xml');
        expect(coreXml, contains('<dc:title>Custom Hymn Title</dc:title>'));

        final slideRelsXml = await pkg.readPartAsString(
          'ppt/slides/_rels/slide1.xml.rels',
        );
        expect(slideRelsXml, contains('Target="../slideLayouts/slideLayout1.xml"'));
        await pkg.close();
      },
    );

    test(
      'addSlide resolves layout names containing XML-escaped &amp; to existing slideLayoutN.xml',
      () async {
        final fs = MemoryFileSystem();
        // Create an initial presentation with a custom layout named "Title & Bullets"
        final seedPres = await Presentation.create(fs);
        seedPres.addSlide();
        final seedFile = fs.file('/seed_template.pptx');
        await seedPres.save(seedFile);
        await seedPres.close();

        // Inject a second layout with name="Title &amp; Bullets" into the template package
        final seedPkg = await OoxmlPackage.open(seedFile);
        final layout1Xml = await seedPkg.readPartAsString(
          'ppt/slideLayouts/slideLayout1.xml',
        );
        final layout2Xml = layout1Xml.replaceFirst(
          '<p:cSld name="Blank">',
          '<p:cSld name="Title &amp; Bullets">',
        );
        final l2Part = await seedPkg.createPart(
          'ppt/slideLayouts/slideLayout2.xml',
        );
        l2Part.write(layout2Xml);
        await l2Part.close();
        final l2RelsPart = await seedPkg.createPart(
          'ppt/slideLayouts/_rels/slideLayout2.xml.rels',
        );
        l2RelsPart.write(
          await seedPkg.readPartAsString(
            'ppt/slideLayouts/_rels/slideLayout1.xml.rels',
          ),
        );
        await l2RelsPart.close();
        await seedPkg.save(seedFile);
        await seedPkg.close();

        final pres = await Presentation.open(seedFile);
        pres.slides.clear();
        pres.addSlide(layout: 'Title &amp; Bullets').addTitle('Resolved Layout');

        final outFile = fs.file('/resolved_layout.pptx');
        await pres.save(outFile);
        final (isValid, messages) = await pres.validate();
        expect(isValid, isTrue, reason: messages.join('\n'));
        await pres.close();

        final outPkg = await OoxmlPackage.open(outFile);
        final relsXml = await outPkg.readPartAsString(
          'ppt/slides/_rels/slide1.xml.rels',
        );
        expect(relsXml, contains('Target="../slideLayouts/slideLayout2.xml"'));
        await outPkg.close();
      },
    );

    test(
      'validateDirectory catches empty core.xml/app.xml, non-UTC W3CDTF, invalid Content_Types Extension, broken rels Target, sld element order, and sldMaster r:id mismatch',
      () async {
        final fs = MemoryFileSystem();
        final dir = fs.directory('/invalid_ooxml_pkg')..createSync();

        // 1. Empty core.xml and non-UTC timestamp
        dir.childFile('core_empty.xml').writeAsStringSync('''
<?xml version="1.0" encoding="UTF-8"?>
<cp:coreProperties xmlns:cp="http://schemas.openxmlformats.org/package/2006/metadata/core-properties"/>
''');
        dir.childFile('core_non_utc.xml').writeAsStringSync('''
<?xml version="1.0" encoding="UTF-8"?>
<cp:coreProperties xmlns:cp="http://schemas.openxmlformats.org/package/2006/metadata/core-properties"
  xmlns:dcterms="http://purl.org/dc/terms/"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <dcterms:created xsi:type="dcterms:W3CDTF">2026-10-25T12:00:00.123456</dcterms:created>
  <dcterms:modified xsi:type="dcterms:W3CDTF">2026-10-25T12:00:00</dcterms:modified>
</cp:coreProperties>
''');

        // 2. Empty app.xml
        dir.childFile('app_empty.xml').writeAsStringSync('''
<?xml version="1.0" encoding="UTF-8"?>
<Properties xmlns="http://schemas.openxmlformats.org/officeDocument/2006/extended-properties"/>
''');

        // 3. Invalid [Content_Types].xml Extension with slash
        dir.childFile('[Content_Types].xml').writeAsStringSync('''
<?xml version="1.0" encoding="UTF-8"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
  <Default Extension="/var/folders/tmp/900" ContentType="application/octet-stream"/>
</Types>
''');

        // 4. Out-of-order <p:transition> before <p:clrMapOvr> in <p:sld>
        dir.childFile('bad_order_slide.xml').writeAsStringSync('''
<?xml version="1.0" encoding="UTF-8"?>
<p:sld xmlns:p="http://schemas.openxmlformats.org/presentationml/2006/main"
       xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main">
  <p:cSld>
    <p:spTree>
      <p:nvGrpSpPr><p:cNvPr id="1" name=""/><p:cNvGrpSpPr/><p:nvPr/></p:nvGrpSpPr>
      <p:grpSpPr><a:xfrm><a:off x="0" y="0"/><a:ext cx="0" cy="0"/><a:chOff x="0" y="0"/><a:chExt cx="0" cy="0"/></a:xfrm></p:grpSpPr>
    </p:spTree>
  </p:cSld>
  <p:transition spd="med"/>
  <p:clrMapOvr><a:masterClrMapping/></p:clrMapOvr>
</p:sld>
''');

        // 5. SlideMaster r:id pointing to theme instead of slideLayout
        final mastersDir = dir.childDirectory('ppt/slideMasters')
          ..createSync(recursive: true);
        final mastersRelsDir = mastersDir.childDirectory('_rels')..createSync();
        mastersRelsDir.childFile('slideMaster1.xml.rels').writeAsStringSync('''
<?xml version="1.0" encoding="UTF-8"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  <Relationship Id="rId2" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme" Target="../theme/theme1.xml"/>
</Relationships>
''');
        mastersDir.childFile('slideMaster1.xml').writeAsStringSync('''
<?xml version="1.0" encoding="UTF-8"?>
<p:sldMaster xmlns:p="http://schemas.openxmlformats.org/presentationml/2006/main"
             xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main"
             xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">
  <p:cSld>
    <p:spTree>
      <p:nvGrpSpPr><p:cNvPr id="1" name=""/><p:cNvGrpSpPr/><p:nvPr/></p:nvGrpSpPr>
      <p:grpSpPr><a:xfrm><a:off x="0" y="0"/><a:ext cx="0" cy="0"/><a:chOff x="0" y="0"/><a:chExt cx="0" cy="0"/></a:xfrm></p:grpSpPr>
    </p:spTree>
  </p:cSld>
  <p:clrMap bg1="lt1" tx1="dk1" bg2="lt2" tx2="dk2" accent1="accent1" accent2="accent2" accent3="accent3" accent4="accent4" accent5="accent5" accent6="accent6" hlink="hlink" folHlink="folHlink"/>
  <p:sldLayoutIdLst>
    <p:sldLayoutId id="2147483649" r:id="rId2"/>
  </p:sldLayoutIdLst>
  <p:txStyles><p:titleStyle/><p:bodyStyle/><p:otherStyle/></p:txStyles>
</p:sldMaster>
''');

        final (isValid, messages) = await validateDirectory(dir);
        expect(isValid, isFalse);
        final joined = messages.join('\n');
        expect(joined, contains('Missing required <dcterms:created>'));
        expect(joined, contains('invalid W3CDTF timestamp'));
        expect(joined, contains('Properties cannot be empty'));
        expect(joined, contains('Invalid Default Extension'));
        expect(
          joined,
          contains(
            'Invalid element sequence in p:sld: <p:clrMapOvr> cannot appear after <p:transition>',
          ),
        );
        expect(
          joined,
          contains('points to relationship of type'),
        );
        expect(joined, contains('does not exist in package'));
      },
    );
  });
}
