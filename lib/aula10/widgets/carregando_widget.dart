import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CarregandoWidget extends StatelessWidget {
  const CarregandoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text('Carregando...'),
        SizedBox(
          height: 16,
        ),
        CircularProgressIndicator(),
      ],
    );
  }
}
