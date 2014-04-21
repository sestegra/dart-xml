part of xml;

/**
 * XML attribute node.
 */
class XmlAttribute extends XmlNode {

  /**
   * Return the name of the attribute.
   */
  final XmlName name;

  /**
   * Return the value of the attribute.
   */
  final String value;

  /**
   * Create an attribute with [name] and [value].
   */
  XmlAttribute(this.name, this.value);

  @override
  XmlNodeType get nodeType => XmlNodeType.ATTRIBUTE;

  @override
  void writeTo(StringBuffer buffer) {
    name.writeTo(buffer);
    buffer.write('="');
    buffer.write(_encodeXmlAttributeValue(value));
    buffer.write('"');
  }

}