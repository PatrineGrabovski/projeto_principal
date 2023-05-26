import 'package:flutter/material.dart';
import 'package:projeto_principal/aula12/model/carrinho_model.dart';
import 'package:provider/provider.dart';

class PedidoView extends StatelessWidget {
  const PedidoView({super.key});

  @override
  Widget build(BuildContext context) {
    var carrinho = context.watch<CarrinhoModel>();

    return Scaffold(
      body: Column(children: [
        ListView.builder(
            shrinkWrap: true,
            itemCount: carrinho.numProdutos,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(carrinho.produtos[index].nome),
                    Text(
                        'R\$ ${carrinho.produtos[index].preco.toStringAsFixed(2)}'),
                  ],
                ),
              );
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('Total'),
            const SizedBox(width: 8),
            Text('R\$ ${carrinho.vlTotal}'),
          ],
        ),
      ]),
    );
  }
}
