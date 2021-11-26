import 'package:Cat_what/models/content.dart';

class Utils {
  static List<Content> getMockedContents() {
    return [
      Content(
      header: "1เรื่องน่ารู้",
      detail: "test",
      subContents: [
        subContents(header: "1เรื่องน่ารู้", detail: "test")
      ]
    ),
    Content(
      header: "2เรื่องน่ารู้",
      detail: "test",
      subContents: [
        subContents(header: "2เรื่องน่ารู้", detail: "test")
      ]
    ),
    Content(
      header: "3เรื่องน่ารู้",
      detail: "test",
      subContents: [
        subContents(header: "3เรื่องน่ารู้", detail: "test")
      ]
    ),
    ];
  }

  static subContents({String? header, String? detail}) {}
}
