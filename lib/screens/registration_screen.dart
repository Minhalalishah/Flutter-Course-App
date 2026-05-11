
import 'package:flutter/material.dart';
import '../controllers/auth_controller.dart';
import '../models/user_model.dart';
import '../utils/validators.dart';
import 'login_screen.dart';

enum Gender { male, female }

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final formKey = GlobalKey<FormState>();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  Gender? selectedGender;

  void register() {
    if (formKey.currentState!.validate()) {
      AuthController.register(
        UserModel(
          firstName: firstName.text,
          lastName: lastName.text,
          email: email.text,
          gender: selectedGender.toString(),
          password: password.text,
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Registration Successful')),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registration')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: firstName,
                decoration: const InputDecoration(labelText: 'First Name'),
                validator: (value) =>
                    Validators.validateEmpty(value ?? '', 'First Name'),
              ),
              TextFormField(
                controller: lastName,
                decoration: const InputDecoration(labelText: 'Last Name'),
                validator: (value) =>
                    Validators.validateEmpty(value ?? '', 'Last Name'),
              ),
              TextFormField(
                controller: email,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) =>
                    Validators.validateEmail(value ?? ''),
              ),
              DropdownButtonFormField<Gender>(
                value: selectedGender,
                decoration: const InputDecoration(labelText: 'Gender'),
                items: Gender.values.map((gender) {
                  return DropdownMenuItem(
                    value: gender,
                    child: Text(gender.name),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() => selectedGender = value);
                },
              ),
              TextFormField(
                controller: password,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
                validator: (value) =>
                    Validators.validatePassword(value ?? ''),
              ),
              TextFormField(
                controller: confirmPassword,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Confirm Password'),
                validator: (value) {
                  if (value != password.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: register,
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
