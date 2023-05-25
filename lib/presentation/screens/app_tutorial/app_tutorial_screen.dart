import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/localisation/localizations.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
}

class AppTutorialScreen extends StatefulWidget {
  static const route = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  PageController pageViewController = PageController();
  bool endReach = false;
  List<SlideInfo> slides = [];

  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if (!endReach && page >= slides.length - 1.5) {
        setState(() {
          endReach = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    slides = <SlideInfo>[
      for (var i = 1; i <= 3; i++)
        SlideInfo(
            title: AppLocalizations.of(context)!.text("intro_tit_$i"),
            caption: AppLocalizations.of(context)!.text("intro_sub_$i"),
            imageUrl: 'assets/images/$i.png'),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slide) => _Slide(
                    title: slide.title,
                    imageUrl: slide.imageUrl,
                    caption: slide.caption))
                .toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text(
                'Salir',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              onPressed: () {
                context.pop();
              },
            ),
          ),
          endReach
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(milliseconds: 400),
                    child: FilledButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: const Text('Comenzar'),
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(imageUrl),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
