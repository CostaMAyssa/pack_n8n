import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  final TextEditingController searchController;

  const MobileAppBar({
    Key? key,
    required this.searchController,
  }) : super(key: key);
  
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
          onPressed: () {
            // Aqui podemos implementar a lógica de pesquisa ou abrir um diálogo
            showSearch(
              context: context,
              delegate: _CustomSearchDelegate(searchController),
            );
          },
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

class _CustomSearchDelegate extends SearchDelegate<String> {
  final TextEditingController searchController;

  _CustomSearchDelegate(this.searchController);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
          searchController.text = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    searchController.text = query;
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
