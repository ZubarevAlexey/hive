import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController _controller;
  final String _txtLabel;

  CustomTextFormField(
      {Key? key,
      required TextEditingController controller,
      required String txtLabel})
      : _controller = controller,
        _txtLabel = txtLabel,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          label: Text("$_txtLabel")),
      controller: _controller,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return '$_txtLabel cant be empty';
        }
        return null;
      },
    );
  }
}
