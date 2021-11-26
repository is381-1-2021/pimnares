class Content {
  String header;
  String detail;
  List<Content>? subContents;

  Content(
    {
      required this.header,
      required this.detail,
      this.subContents
    }
  );
}
