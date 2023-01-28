import "dart:async";
import "package:flutter/cupertino.dart";
import "package:flutter/services.dart";
import "package:http/http.dart" as http;
import "dart:convert";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState(); // State 생성
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();
  var uri = "";
  static const key = "q4ytWWJjwnA1YTPHNIbDEXQbBZWfjvmzoSXQ4babUPs";
  static const url = "https://api.unsplash.com/photos/random?client_id=$key";

  Future<http.Response> fetchRandomImage() {
    return http.get(Uri.parse(url));
  }

  Future<void> getImgUrl() async {
    final randomImage = await fetchRandomImage();
    final data = jsonDecode(randomImage.body);
    uri = data.urls.raw;
  }

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 2), (timer) {
      int? nextPage = pageController.page?.toInt();
      if (nextPage == null) return;
      if (nextPage == 4) {
        nextPage = 0;
      } else {
        nextPage++;
      }
      pageController.animateToPage(nextPage,
          duration: const Duration(milliseconds: 600), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return CupertinoPageScaffold(
        // navigationBar: const CupertinoNavigationBar(
        //   middle: Text("Hello"),
        // ),
        child: PageView(
      controller: pageController,
      children: [1, 2, 3, 4, 5]
          .map((n) => Image.network(
                uri,
                fit: BoxFit.cover,
              ))
          .toList(),
    ));
  }
}
