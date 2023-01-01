import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    Key? key,
    required this.size,
    required TextEditingController nameController,
    required this.hintText, required this.validator,
  })  : _nameController = nameController,
        super(key: key);

  final Size size;
  final TextEditingController _nameController;
  final String hintText;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: TextFormField(
        controller: _nameController,
        decoration: InputDecoration(
          hintText: hintText,
          isDense: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.grey, width: 1.0)),
        ),
        validator: validator,
      ),
    );
  }
}
