import 'package:flutter/material.dart';

/// 1. DATA MODEL STRUCTURE
class ImageAsset {
  final String imagePath;
  final String imageName;

  ImageAsset({required this.imagePath, required this.imageName});
}

/// 2. APP IMAGES MOCK DATASET
List<ImageAsset> images = [
  ImageAsset(imagePath: 'assets/images/1.png', imageName: 'turtle'),
  ImageAsset(imagePath: 'assets/images/2.png', imageName: 'lion'),
  ImageAsset(imagePath: 'assets/images/3.png', imageName: 'leopard'),
  ImageAsset(imagePath: 'assets/images/4.png', imageName: 'white dog'),
  ImageAsset(imagePath: 'assets/images/5.png', imageName: 'cat'),
  ImageAsset(imagePath: 'assets/images/6.png', imageName: 'fox'),
  ImageAsset(imagePath: 'assets/images/7.png', imageName: 'jellyfish'),
  ImageAsset(imagePath: 'assets/images/8.png', imageName: 'red panda'),
  ImageAsset(imagePath: 'assets/images/9.png', imageName: 'deer'),
  ImageAsset(imagePath: 'assets/images/10.png', imageName: 'white tiger'),
];

/// 3. STATEFUL CAROUSEL INTERFACE
class ImageCarouselScreen extends StatefulWidget {
  const ImageCarouselScreen({super.key});

  @override
  State<ImageCarouselScreen> createState() => _ImageCarouselScreenState();
}

class _ImageCarouselScreenState extends State<ImageCarouselScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  int get arrSize => images.length - 1;

  void switchImage(int nextIndex) {
    _pageController.animateToPage(
      nextIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Carousel Screen'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Sized bounding box for the slider track area
              SizedBox(
                height: screenSize.height * 0.40,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: images.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: screenSize.width * 0.85,
                          maxHeight: screenSize.height * 0.38,
                        ),
                        child: AspectRatio(
                          aspectRatio: 1.4,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage(images[index].imagePath),
                                fit: BoxFit.contain,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withAlpha(20),
                                  blurRadius: 12,
                                  spreadRadius: 1,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 24),

              // Animal Name Text
              Text(
                images[_currentIndex].imageName.toUpperCase(),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  images.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    height: 8,
                    width: _currentIndex == index ? 24 : 8,
                    decoration: BoxDecoration(
                      color: _currentIndex == index
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // Control Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: _currentIndex == 0
                        ? null
                        : () => switchImage(_currentIndex - 1),
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('prev'),
                  ),
                  ElevatedButton.icon(
                    onPressed: _currentIndex == arrSize
                        ? null
                        : () => switchImage(_currentIndex + 1),
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('next'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
