import 'package:flutter/material.dart';

class TextInputCustom extends StatelessWidget {
  final String name;
  final TextInputType? type;
  final bool obs;
  final String formProperties;
  final Map<String, String> formValues;
  const TextInputCustom({
    super.key,
    required this.name,
    this.type,
    this.obs = false,
    required this.formProperties,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      keyboardType: type,
      obscureText: obs,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => {
        formValues[formProperties] = value,
      },
      validator: (value) {
        if (value == null) {
          return "Elemento Vacio";
        }
        return value.length < 4 ? 'Minimo 4 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(labelText: name),
    );
  }
}
