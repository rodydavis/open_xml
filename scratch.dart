import 'package:xml/xml.dart';

void main() {
  final builder = XmlBuilder();
  builder.element('dummy', namespace: 'http://test', nest: () {
    builder.namespace('http://test', 'ns0');
    builder.namespace('http://relationships', 'r');
    builder.attribute('id', 'test', namespace: 'http://relationships');
  });
  
  final node = builder.buildDocument().rootElement;
  print(node.toXmlString());
  print(node.getAttribute('id', namespace: 'http://relationships'));
}
