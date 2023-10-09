import 'package:flutter/material.dart';
import 'package:listflutter/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'name': '',
      'lastName': '',
      'email': '',
      'confirmEmail': '',
      'password': '',
      'confirmPassword': '',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                TextInputCustom(
                  name: 'Nombre',
                  type: TextInputType.name,
                  formProperties: 'name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                TextInputCustom(
                  name: 'Apellido',
                  formProperties: 'lastName',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                TextInputCustom(
                  name: 'Correo',
                  type: TextInputType.emailAddress,
                  formProperties: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                TextInputCustom(
                  name: 'Confirmar Correo',
                  type: TextInputType.emailAddress,
                  formProperties: 'confirmEmail',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                TextInputCustom(
                  name: 'Contraseña',
                  obs: true,
                  formProperties: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                TextInputCustom(
                  name: 'Confirmar Contraseña',
                  obs: true,
                  formProperties: 'confirmPassword',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar'),
                    ),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario No valido');
                      return;
                    } else {}
                    print(formValues);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
