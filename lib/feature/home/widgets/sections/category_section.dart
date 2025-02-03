import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart'; // Importando o Google Fonts
import 'package:url_launcher/url_launcher.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Obtém as dimensões da tela
    double screenWidth = MediaQuery.of(context).size.width;

    // Define o tamanho do título de acordo com o tamanho da tela
    double titleFontSize =
        screenWidth < 700 ? 30 : 50; // Menor em telas menores (mobile)
    double subtitleFontSize =
        screenWidth < 700 ? 15 : 30; // Ajusta para dispositivos móveis

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Categorias Disponíveis',
          style: GoogleFonts.openSans( // Usando a fonte Roboto
            fontWeight: FontWeight.bold,
            fontSize: titleFontSize,
            color: Color(0xFFFE6A5A), // Alterado para vermelho
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          'Escolha uma categoria ou leve tudo por um preço especial!',
          style: GoogleFonts.robotoSlab( // Usando a fonte Roboto
            fontSize: subtitleFontSize,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 50),
        Wrap(
          spacing: 45,
          runSpacing: 40,
          alignment: WrapAlignment.center,
          children: [
            CategoryCard(
              icon: FontAwesomeIcons.whatsapp,
              title: '5 Automações para WhatsApp',
              description:
                  'Fluxos para envio em massa, integração com Google Sheets e monitoramento de pedidos.',
              price: 'R\$75,00',
              iconColor: Colors.grey, // Cor do ícone para WhatsApp
              url: 'https://www.asaas.com/c/m594nxz6i060ffsi',
              
              
            ),
            CategoryCard(
              icon: FontAwesomeIcons.database,
              title: '5 Automações para Mautic',
              description:
                  'Automatize segmentações, envios personalizados e integração com WhatsApp.',
              price: 'R\$75,00',
              iconColor: Colors.grey, // Cor do ícone para Mautic
              url: 'https://www.asaas.com/c/m594nxz6i060ffsi',
            ),
            CategoryCard(
              icon: FontAwesomeIcons.telegram,
              title: '5 Automações para Telegram',
              description:
                  'Chatbots inteligentes para interação com clientes e notificações automáticas.',
              price: 'Em breve',
              iconColor: Colors.grey, // Cor do ícone para Telegram
              url: 'https://seu-link-aqui.com/whatsapp',
            ),
            CategoryCard(
              icon: FontAwesomeIcons.box,
              title: 'Pacote Completo - Todas Automações',
              description:
                  'Leve todas as automações (WhatsApp, Mautic, Telegram, e mais) e um bônus exclusivo!',
              price: 'Em breve',
              iconColor: Colors.grey, // Cor do ícone para Pacote Completo
              url: 'https://seu-link-aqui.com/whatsapp',
              
            ),
          ],
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final String price;
  final Color iconColor;
  final String url; // Adicionado parâmetro URL

  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
    required this.price,
    required this.iconColor,
    required this.url, // Obrigatório definir um link
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      start: 0.01,
      end: 0.03,
      child: Container(
        width: 300,
        height: 350,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: iconColor),
            SizedBox(height: 20),
            Text(
              title,
              style: GoogleFonts.openSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: GoogleFonts.robotoSlab(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final Uri uri = Uri.parse(url);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                } else {
                  throw 'Não foi possível abrir o link: $url';
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: Size(200, 60),
              ),
              child: Text(
                price,
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class GlassMorphism extends StatelessWidget {
  final Widget child;
  final double start;
  final double end;
  const GlassMorphism({
    Key? key,
    required this.child,
    required this.start,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          BorderRadius.all(Radius.circular(12)), // Bordas arredondadas
      child: BackdropFilter(
        filter: ImageFilter.blur(
            sigmaX: 2, sigmaY: 2), // Menos desfoque para mais clareza
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(255, 255, 255,
                    start), // Usando RGBA para controlar opacidade
                Color.fromRGBO(255, 255, 255, end),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
            borderRadius: BorderRadius.all(Radius.circular(12)),
            border: Border.all(
              width: 1.5,
              color: Color.fromRGBO(
                  255, 255, 255, 0.15), // Cor da borda mais suave
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
