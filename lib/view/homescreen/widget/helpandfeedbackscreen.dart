import 'package:flutter/material.dart';

class HelpFeedbackScreen extends StatelessWidget {
  const HelpFeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help & Feedback'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // FAQs Section
            ExpansionTile(
              title: const Text(
                'FAQs',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              children: [
                ListTile(
                  title: const Text('How do I reset my password?'),
                  subtitle: const Text(
                      'You can reset your password by going to Settings > Account > Reset Password.'),
                ),
                ListTile(
                  title: const Text('How do I contact support?'),
                  subtitle: const Text(
                      'You can contact support via the Contact Us form below.'),
                ),
                // Add more FAQs as needed
              ],
            ),
            const SizedBox(height: 20),

            // Provide Feedback Section
            const Text(
              'Provide Feedback',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Write your feedback here...',
                hintText: 'Let us know how we can improve.',
              ),
            ),
            const SizedBox(height: 20),

            // Contact Us Section
            const Text(
              'Contact Us',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your Name',
                hintText: 'Enter your name',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email Address',
                hintText: 'Enter your email address',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Message',
                hintText: 'Enter your message here...',
              ),
            ),
            const SizedBox(height: 20),

            // Send Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle send feedback action
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Feedback sent successfully!'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: const Color.fromARGB(255, 57, 92, 152),
                ),
                child: const Text(
                  'Send Feedback',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
