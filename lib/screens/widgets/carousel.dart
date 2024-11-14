import 'dart:async';

import 'package:flutter/material.dart';

void carousel() {
  runApp(const Carousel());
}

class CarouselInformation {
  final String title;
  final Image image;

  CarouselInformation({
    required this.title,
    required this.image,
  });
}

class Carousel extends StatefulWidget {
  const Carousel({super.key});
  @override
  CarouselState createState() => CarouselState();
}

class CarouselState extends State<Carousel> {
  late final PageController _pageController;
  int _activePageIndex = 0;
  Timer? _autoPlayTimer;
  bool _isAutoPlayEnabled = true;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.85,
    );
    _startAutoPlay();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _stopAutoPlay();
    super.dispose();
  }

  final List<CarouselInformation> listImagesInfo = [
    CarouselInformation(
        title: "image001",
        image: Image.network("https://images.unsplash.com/photo-1607083206869-4c7672e72a8a?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            fit: BoxFit.cover)),
    CarouselInformation(
        title: "image002",
        image: Image.network("https://images.unsplash.com/photo-1555529733-0e670560f7e1?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            fit: BoxFit.cover))
  ];

  void _startAutoPlay() {
    _autoPlayTimer = Timer.periodic(const Duration(seconds: 2), (_) {
      if (_isAutoPlayEnabled) {
        _nextPage();
      }
    });
  }

  void _stopAutoPlay() {
    _autoPlayTimer?.cancel();
  }

  void _nextPage() {
    setState(() {
      _activePageIndex = (_activePageIndex + 1) % listImagesInfo.length;
      _pageController.animateToPage(_activePageIndex,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _isAutoPlayEnabled = !_isAutoPlayEnabled;
        if (_isAutoPlayEnabled) {
          _startAutoPlay();
        } else {
          _stopAutoPlay();
        }
      },
      child: SizedBox(
        height: 220,
        child: PageView.builder(
            allowImplicitScrolling: true,
            clipBehavior: Clip.none,
            controller: _pageController,
            itemCount: listImagesInfo.length,
            onPageChanged: (int index) {
              setState(() {
                _activePageIndex = index;
              });
            },
            itemBuilder: (c, i) {
              return AnimatedScale(
                scale: _activePageIndex == i ? 1 : 0.1,
                duration: const Duration(milliseconds: 100),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10, color: Colors.black.withOpacity(0.1))
                      ]),
                  child: listImagesInfo[i].image,
                ),
              );
            }),
      ),
    );
  }
}