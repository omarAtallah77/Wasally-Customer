import 'package:flutter/material.dart';
import 'SignIn/core/validation.dart';

class PasswordFormField extends StatefulWidget {
  final TextEditingController passwordController;

  const PasswordFormField({super.key, required this.passwordController});

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passwordController,
      keyboardType: TextInputType.visiblePassword,
      obscureText: !showPassword,

      decoration: InputDecoration(
        labelText: 'Password',
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() => showPassword = !showPassword);
          },
          icon: Icon(
            showPassword ? Icons.visibility : Icons.visibility_off,
          ),
        ),
      ),

      validator: (value) => Validation.validate(value, "password"),
    );
  }
}

class TextFormInput extends StatelessWidget {
  final TextEditingController TextController;
  final TextInputType keyboardType;
  final String inputType;

  const TextFormInput({super.key , required this.TextController , required this.inputType,this.keyboardType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: TextController,
      decoration: InputDecoration(
        labelText: inputType,
        border: const OutlineInputBorder(),
      ),
      validator: (value) => Validation.validate(value, inputType),
    );
  }
}
