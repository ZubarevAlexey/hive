import 'package:flutter/material.dart';

class CustomDatePickerFormField extends StatelessWidget {
  final TextEditingController _controller;
  final String _txtLabel;
  final Function() callback;

  const CustomDatePickerFormField(
      {super.key,
      required TextEditingController controller,
      required String txtLabel,
      required VoidCallback callback})
      : _controller = controller,
        _txtLabel = txtLabel,
        callback = callback;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          label: Text(_txtLabel)),
      controller: _controller,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Date of Birth cant be empty';
        }
        return null;
      },
      onTap: () => callback,
    );
  }
}
