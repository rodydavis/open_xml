import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final outputDir = fs.directory('out');
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }

  final pres = await Presentation.create(fs);

  // Slide 1: Question
  final slide1 = pres.addSlide();
  slide1.addTitle('Quiz Time!');

  final questionBox = SlideTextBox(
    text: 'What is 2 + 2?',
    x: 1000000,
    y: 2000000,
    width: 5000000,
    fontSize: 2400,
  );
  slide1.elements.add(questionBox);

  // Answers
  final answerBox = SlideTextBox(
    x: 1000000,
    y: 3500000,
    width: 5000000,
    height: 2000000,
  );
  answerBox.addRun(TextRun(text: 'A. 3  ', fontSize: 2000));
  answerBox.addRun(
    TextRun(
      text: '(Click here)',
      fontSize: 2000,
      isBold: true,
      color: 'FF0000',
      url: '#slide3', // Incorrect slide
    ),
  );
  answerBox.addRun(TextRun(text: '\n\n', fontSize: 2000));
  answerBox.addRun(TextRun(text: 'B. 4  ', fontSize: 2000));
  answerBox.addRun(
    TextRun(
      text: '(Click here)',
      fontSize: 2000,
      isBold: true,
      color: '00FF00',
      url: '#slide2', // Correct slide
    ),
  );
  slide1.elements.add(answerBox);

  // Slide 2: Correct
  final slide2 = pres.addSlide();
  slide2.addTitle('Correct!');
  slide2.addText('Great job. 2 + 2 is indeed 4.');

  final backLink2 = SlideTextBox(
    x: 1000000,
    y: 4000000,
    width: 3000000,
    height: 1000000,
  );
  backLink2.addRun(
    TextRun(text: 'Try Again', url: '#slide1', isBold: true, color: '0000FF'),
  );
  slide2.elements.add(backLink2);

  // Slide 3: Incorrect
  final slide3 = pres.addSlide();
  slide3.addTitle('Wrong Answer');
  slide3.addText('Sorry, that is incorrect.');

  final backLink3 = SlideTextBox(
    x: 1000000,
    y: 4000000,
    width: 3000000,
    height: 1000000,
  );
  backLink3.addRun(
    TextRun(text: 'Try Again', url: '#slide1', isBold: true, color: '0000FF'),
  );
  slide3.elements.add(backLink3);

  final outputPath = 'out/pptx_hyperlinks.pptx';
  await pres.save(fs.file(outputPath));
  print('Created $outputPath');
}
