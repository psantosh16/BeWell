part of "home_view.dart";

class HomeViewModel extends BaseViewModel {
  final log = getLogger("HomePage");

  String testLink =
      "https://www.evidentlycochrane.net/wp-content/uploads/2020/02/Featured-image-visual-blog-Depressed-Girl-Blog-Header-01-1-e1580916482139.jpg";

  final List<TestModel> tests = [];

  void init() {
    tests.addAll([
      TestModel(text: "Depression Test", image: testLink),
      TestModel(text: "Anxiety Test", image: testLink),
      TestModel(text: "Stress Test", image: testLink),
    ]);
  }

  void disposeView() {}
}

class TestModel {
  final String text;
  final String image;

  TestModel({required this.text, required this.image});
}
