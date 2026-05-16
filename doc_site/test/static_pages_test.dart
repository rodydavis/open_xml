import 'package:jaspr_test/jaspr_test.dart';
import 'package:jaspr_test/src/testers/server_tester.dart';
import 'package:doc_site/main.server.dart';
import 'package:doc_site/main.server.options.dart';
import 'package:jaspr/server.dart';
// import 'package:test/test.dart';

void main() {
  setUpAll(() {
    // Initialize Jaspr with default server options so the testing environment is configured correctly.
    Jaspr.initializeApp(options: defaultServerOptions);
  });

  group('Doc Site Static Pages Server Rendering', () {
    testServer('renders Overview page correctly', (tester) async {
      tester.pumpComponent(getApp());

      final response = await tester.request('/');
      expect(response.statusCode, 200);
      expect(response.document, isNotNull);
      expect(response.body, contains('Welcome to OpenXML'));
      expect(response.body, contains('High-Level Features'));
      expect(response.body, contains('Getting Started'));
      
      // Verify that Exporter's shimmering skeleton placeholder is rendered
      expect(response.body, contains('skeleton-loading'));
    });

    testServer('renders Core Concepts page correctly', (tester) async {
      tester.pumpComponent(getApp());

      final response = await tester.request('/core');
      expect(response.statusCode, 200);
      expect(response.document, isNotNull);
      expect(response.body, contains('Core Concepts'));
      expect(response.body, contains('File System Abstraction'));
      expect(response.body, contains('Opening Existing Files'));
    });

    testServer('renders Word Documents (.docx) page correctly', (tester) async {
      tester.pumpComponent(getApp());

      final response = await tester.request('/docx');
      expect(response.statusCode, 200);
      expect(response.document, isNotNull);
      expect(response.body, contains('Word Documents (.docx)'));
      expect(response.body, contains('Creating a Document'));
      expect(response.body, contains('Adding Paragraphs and Text Runs'));
    });

    testServer('renders Spreadsheets (.xlsx) page correctly', (tester) async {
      tester.pumpComponent(getApp());

      final response = await tester.request('/xlsx');
      expect(response.statusCode, 200);
      expect(response.document, isNotNull);
      expect(response.body, contains('Spreadsheets (.xlsx)'));
      expect(response.body, contains('Creating a Workbook'));
      expect(response.body, contains('Adding Data (Rows and Cells)'));
    });

    testServer('renders Presentations (.pptx) page correctly', (tester) async {
      tester.pumpComponent(getApp());

      final response = await tester.request('/pptx');
      expect(response.statusCode, 200);
      expect(response.document, isNotNull);
      expect(response.body, contains('Presentations (.pptx)'));
      expect(response.body, contains('Creating a Presentation'));
      expect(response.body, contains('Template Type Generation'));
    });
  });
}
