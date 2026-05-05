import 'package:test/test.dart';
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> exampleMain() async {
  const fs = LocalFileSystem();
  final presentation = await Presentation.create(fs);

  final slide = presentation.addSlide();

  // Add a text box
  slide.addTextBox(
    text: 'Hello World',
    x: 2000000,
    y: 2000000,
    width: 2000000,
    height: 2000000,
  );

  await presentation.save(fs.file('out/example.pptx'));
  print('Created example.pptx');
}
void main() {
  test('pptx_example', () async {
    await exampleMain();
  });
}
