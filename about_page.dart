import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final VoidCallback onNext;

  const AboutPage({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.info_outline,
                size: 100,
                color: Colors.indigo,
              ),

              const SizedBox(height: 20),

              const Text(
                'About Us',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'This is the About Page',
                style: TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 30),

              ElevatedButton.icon(
                onPressed: onNext,
                icon: const Icon(Icons.arrow_forward),
                label: const Text('Go to Contact'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}