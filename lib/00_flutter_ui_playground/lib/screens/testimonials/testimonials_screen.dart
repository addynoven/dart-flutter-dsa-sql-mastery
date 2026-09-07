import 'package:flutter/material.dart';

// Standardized model name to UpperCamelCase singular form
class Testimonial {
  final String name;
  final String testimonial;
  final String imageUrl;
  final String designation;

  Testimonial({
    required this.name,
    required this.testimonial,
    required this.imageUrl,
    required this.designation,
  });
}

List<Testimonial> testimonialsList = [
  Testimonial(
    name: 'John Doe',
    testimonial:
        'This is an amazing product! I have been using it for a few months now and it has exceeded my expectations.',
    imageUrl: 'https://randomuser.me/api/portraits/men/1.jpg',
    designation: 'Software Engineer',
  ),
  Testimonial(
    name: 'Jane Smith',
    testimonial:
        'I highly recommend this product to anyone looking for a reliable and efficient solution. It has made my life so much easier!',
    imageUrl: 'https://randomuser.me/api/portraits/women/1.jpg',
    designation: 'Product Manager',
  ),
  Testimonial(
    name: 'Michael Johnson',
    testimonial:
        'I was skeptical at first, but after trying this product, I am a believer. It has helped me streamline my workflow and save time.',
    imageUrl: 'https://randomuser.me/api/portraits/men/2.jpg',
    designation: 'UX Designer',
  ),
  Testimonial(
    name: 'Emily Davis',
    testimonial:
        'I have tried many similar products in the past, but this one stands out. The customer support is excellent and the features are top-notch.',
    imageUrl: 'https://randomuser.me/api/portraits/women/2.jpg',
    designation: 'Marketing Specialist',
  ),
  Testimonial(
    name: 'David Wilson',
    testimonial:
        'I am extremely satisfied with this product. It has helped me achieve my goals and I will continue to use it in the future. Highly recommended!',
    imageUrl: 'https://randomuser.me/api/portraits/men/3.jpg',
    designation: 'Data Analyst',
  ),
];

class TestimonialsScreen extends StatefulWidget {
  const TestimonialsScreen({super.key});

  @override
  State<TestimonialsScreen> createState() => _TestimonialsScreenState();
}

class _TestimonialsScreenState extends State<TestimonialsScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _navigateToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Testimonials')),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),
            // 1. Properly centered headline text block
            Text(
              'What People Say',
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),

            // 2. The Slider Module wrapped inside Expanded
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: testimonialsList.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  final item = testimonialsList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 8.0,
                    ),
                    // Main layout container card design
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '"',
                              style: TextStyle(
                                fontSize: 64,
                                fontFamily: 'serif',
                                height: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              item.testimonial,
                              style: const TextStyle(fontSize: 16, height: 1.5),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 24),
                            const Divider(indent: 40, endIndent: 40),
                            const SizedBox(height: 16),
                            CircleAvatar(
                              radius: 36,
                              backgroundImage: NetworkImage(item.imageUrl),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              item.name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              item.designation,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // 3. Dot Indicator Panel Layout Module
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                testimonialsList.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  height: 8,
                  width: _currentIndex == index ? 24 : 8,
                  decoration: BoxDecoration(
                    color: _currentIndex == index
                        ? Theme.of(context).colorScheme.primary
                        : Colors.grey[400],
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // 4. Manual Text Control Buttons Footer Group
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    onPressed: _currentIndex == 0
                        ? null
                        : () => _navigateToPage(_currentIndex - 1),
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Previous'),
                  ),
                  TextButton.icon(
                    onPressed: _currentIndex == testimonialsList.length - 1
                        ? null
                        : () => _navigateToPage(_currentIndex + 1),
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('Next'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
