
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String subject;

  const DetailScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subject)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: subject == 'Mobile App Development'
                    ? Image.asset(
                        'assets/images/2045.jpg',
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        'assets/images/banner.png',
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              subject,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This course provides theoretical and practical concepts '
              'related to software development and system management.',
            ),
            const SizedBox(height: 20),
            const Text(
              'Schedule: Monday - Wednesday\nTime: 10:00 AM - 12:00 PM',
            ),
          ],
        ),
      ),
    );
  }
}
