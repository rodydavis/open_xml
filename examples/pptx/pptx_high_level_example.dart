import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final pres = await Presentation.create(fs);

  final slide1 = pres.addSlide();
  slide1.addTitle('Hello OpenXML!');
  slide1.addText('This is a high-level API demo.');
  slide1.addText('It generates PPTX files with ease.');

  final slide2 = pres.addSlide();
  slide2.addTitle('Slide 2 Title');
  slide2.addText('Bullet point 1');
  slide2.addText('Bullet point 2');
  slide2.addTextBox(
    text: 'Hello World',
    x: 1000000,
    y: 5000000,
    fontSize: 2400,
    isBold: true,
    color: 'FF0000',
  );

  // Add a remote hyperlink
  final linkBox = SlideTextBox(
    x: 1000000,
    y: 6000000,
    width: 3000000,
    height: 1000000,
  );
  linkBox.addRun(
    TextRun(
      text: 'Click here for Google',
      url: 'https://www.google.com',
      color: '0000FF',
      isBold: true,
    ),
  );
  slide2.elements.add(linkBox);
  slide2.addTextBox(
    text: 'Floating Text Box',
    x: 1000000,
    y: 4000000,
    width: 3000000,
    height: 1000000,
    fontSize: 2400, // 24pt
    isBold: true,
    color: 'FF0000', // Red
  );

  // Set a transition for slide 2 (e.g., Push Right, Fast)
  slide2.setTransition(
    PushTransition(
      direction: P_ST_TransitionSideDirectionType.r,
      speed: P_ST_TransitionSpeed.fast,
    ),
  );

  final slide3 = pres.addSlide();
  slide3.addTitle('Slide 3: Fade');
  slide3.addText('This slide fades in.');
  slide3.setTransition(FadeTransition());

  await pres.save(fs.file('out/high_level_example.pptx'));
  print('Created high_level_example.pptx');
}
