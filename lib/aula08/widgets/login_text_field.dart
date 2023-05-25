import 'package:flutter/material.dart';
import 'package:projeto_principal/aula08/classes/login_details.dart';

class LoginTextField extends StatefulWidget {
  final TextEditingController controler;
  final TiposDeLogin tipoLogin;

  const LoginTextField(
      {required this.controler, required this.tipoLogin, super.key});

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  var loginDetails = LoginDetails.loginDetails();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controler,
      decoration: InputDecoration(
        label: Text(loginDetails[widget.tipoLogin]!.label),
        hintText: loginDetails[widget.tipoLogin]!.hintText,
        border: const OutlineInputBorder(),
        prefixIcon: loginDetails[widget.tipoLogin]!.prefixIcon,
      ),
    );
  }
}
