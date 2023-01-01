// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:fluttercrudphp/Screens/homepage.dart';

import '../Widgets/button_widget.dart';
import '../Widgets/inputfieldwidget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

// text form field controller
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: SizedBox(
          width: double.infinity,
          height: size.height,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      InputFieldWidget(
                        size: size,
                        nameController: _nameController,
                        hintText: 'Name',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Required';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: size.height * 0.012),
                      InputFieldWidget(
                        size: size,
                        nameController: _emailController,
                        hintText: 'Email',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Required';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: size.height * 0.012),
                      InputFieldWidget(
                        size: size,
                        nameController: _passwordController,
                        hintText: 'Password',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Required';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: size.height * 0.02),
                      ButtonWidget(
                        size: size,
                        label: 'Login',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print('Success');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => HomePage(
                                  uid: '0',
                                  name: _nameController.text.toString(),
                                  email: _emailController.text.toString(),
                                ),
                              ),
                            );
                          } else {
                            print('Error');
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
