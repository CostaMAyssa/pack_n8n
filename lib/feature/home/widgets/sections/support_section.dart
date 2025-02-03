import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SupportSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Define o tamanho do título de acordo com o tamanho da tela
    double titleFontSize =
        screenWidth < 700 ? 30 : 40; // Menor em telas menores (mobile)
    double subtitleFontSize =
        screenWidth < 700 ? 15 : 23; // Ajusta para dispositivos móveis
    double questionFontSize =
        screenWidth < 700 ? 16 : 25; // Define o tamanho da fonte das perguntas

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Suporte e FAQ',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
              fontSize: titleFontSize,
              color: Color(0xFFFE6A5A), // Alterado para vermelho
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Encontre respostas para as perguntas mais frequentes abaixo. Se precisar de mais ajuda, estamos à disposição!',
            style: GoogleFonts.robotoSlab(
              fontSize: subtitleFontSize,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 70),
          // FAQ
          _buildFAQItem(
            context,
            'Como baixar o pacote?',
            'Para baixar o pacote, basta clicar no link de download e seguir as instruções. O processo é simples e rápido.',
            questionFontSize, // Passando o tamanho da fonte das perguntas
          ),
          SizedBox(height: 10),
          _buildFAQItem(
            context,
            'Quanto tempo fica disponível?',
            'O pacote fica disponível por um período vitalício. Será disponibilizada uma pasta no Google Drive, que poderá ser acessada a qualquer momento.',
            questionFontSize,
          ),
          SizedBox(height: 10),
          _buildFAQItem(
            context,
            'Quais formas de pagamento são aceitas?',
            'Aceitamos cartões de crédito, débito, transferência bancária e pagamento via PIX. Todas as opções são seguras.',
            questionFontSize,
          ),
          SizedBox(height: 70),
          Text(
            'Fale Conosco',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
              fontSize: titleFontSize,
              color: Color(0xFFFE6A5A),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.whatsapp,
              color: Colors.green,
              size: 50, // Alterando o tamanho do ícone
            ),
            title: Text(
              'WhatsApp',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Lógica para abrir link do WhatsApp
            },
          ),
          SizedBox(height: 40),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.envelope,
              color: Colors.orange,
              size: 50, // Alterando o tamanho do ícone
            ),
            title: Text(
              'E-mail',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Lógica para abrir o cliente de e-mail
            },
          ),
        ],
      ),
    );
  }

  // Widget para exibir os itens do FAQ com o tamanho dinâmico das perguntas
  Widget _buildFAQItem(BuildContext context, String question, String answer, double questionFontSize) {
    return ExpansionTile(
      title: Text(
        question,
        style: GoogleFonts.robotoSlab(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: questionFontSize, // Usando o tamanho dinâmico para a pergunta
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            answer,
            style: GoogleFonts.robotoSlab(
              fontSize: questionFontSize, // Usando o mesmo tamanho da pergunta para a resposta
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
