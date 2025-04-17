import 'package:flutter/material.dart';
import 'package:pack_n8n/feature/home/widgets/app_bar/web_app_bar_responsive_content.dart';


class WebAppBar extends StatelessWidget {
  final TextEditingController searchController;

  const WebAppBar({
    Key? key,
    required this.searchController,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black, // Cor sólida do fundo
      elevation: 0, // Remove a sombra para um visual mais limpo
      toolbarHeight: 72,
      title: Row(
        children: [
          Image.asset(
            'lib/image/logo.png', // Substitua pelo caminho da sua logo nos assets
            height: 270,
            width: 200, // Ajuste o tamanho da logo conforme necessário
          ),
          const SizedBox(width: 10),
          WebAppBarResponsiveContent(searchController: searchController),
          const SizedBox(width: 15),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
            color: const Color(0xFFFE6A5A), // Cor vermelha para o ícone do carrinho
          ),
          // const SizedBox(width: 24),
          // SizedBox(
          //   height: 38,
          //   child: OutlinedButton(
          //     onPressed: () {},
          //     style: OutlinedButton.styleFrom(
          //       foregroundColor: const Color(0xFFFE6A5A), // Cor do texto
          //       side: const BorderSide(color: Color(0xFFFE6A5A), width: 2), // Borda
          //     ),
          //     child: const Text('Fazer login'),
          //   ),
          // ),
          // const SizedBox(width: 8),
          // SizedBox(
          //   height: 40,
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: const Color(0xFFFE6A5A), // Cor de fundo
          //       foregroundColor: AppColors.backGround // Cor do texto
          //     ),
          //     child: const Text('Cadastre-se'),
          //   ),
          // ),
        ],
      ),
    );
  }
}
