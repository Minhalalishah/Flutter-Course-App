
import 'package:flutter/material.dart';
import '../models/user_model.dart';
import 'detail_screen.dart';
import 'login_screen.dart';

class DashboardScreen extends StatelessWidget {
  final UserModel user;

  DashboardScreen({super.key, required this.user});

  final subjects = [
    'Mobile App Development',
    'Software Re-engineering',
    'Management Information Systems (MIS)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
            const SizedBox(height: 10),
            Text('${user.firstName} ${user.lastName}'),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(subjects[index]),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailScreen(
                              subject: subjects[index],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
