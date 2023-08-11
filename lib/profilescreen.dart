import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // Retrieve the arguments passed from the SignupScreen
    final Arguments args =
        ModalRoute.of(context)!.settings.arguments as Arguments;

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/asmat.jpg'),
            ),
            const SizedBox(height: 20),
            Text('Name: ${args.name}'),
            const SizedBox(height: 10),
            Text('Email: ${args.email}'),
          ],
        ),
      ),
    );
  }
}

class Arguments {
  final String email;
  final String name;

  Arguments({required this.email, required this.name});
}
