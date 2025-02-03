import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Image.asset(
        'lib/image/logo.png', // Substitua pelo caminho da sua logo nos assets.
        height: 240,
        width: 200,  // Ajuste o tamanho da logo conforme necessário.
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
        color: Color(0xFFFE6A5A), // Cor vermelha para o ícone do menu
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          color: Color(0xFFFE6A5A), // Cor vermelha para o ícone de pesquisa
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
          color: Color(0xFFFE6A5A), // Cor vermelha para o ícone do carrinho
        ),
      ],
    );
  }
}
