import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart'; // Importando o Google Fonts
import 'package:url_launcher/url_launcher.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  void _launchAllFluxesUrl() async {
    final Uri uri = Uri.parse("https://www.asaas.com/c/dmyvnqp7he1uoiwt");
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Não foi possível abrir o link';
    }
  }

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
          'Modelos de Fluxo',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.bold,
            fontSize: titleFontSize,
            color: Color(0xFFFE6A5A),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          'Escolha um dos nossos fluxos prontos ou leve tudo por um preço especial!',
          style: GoogleFonts.robotoSlab(
            fontSize: subtitleFontSize,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 25),
        // Botão para comprar todos os fluxos - versão mais fina e elegante
        Center(
          child: Container(
            width: 500,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            decoration: BoxDecoration(
              color: Color(0xFF2A0000),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color(0xFFFE6A5A), width: 1),
            ),
            child: Column(
              children: [
                Text(
                  'OFERTA ESPECIAL',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color(0xFFFE6A5A),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Leve todos os 10 fluxos prontos',
                  style: GoogleFonts.robotoSlab(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  onPressed: _launchAllFluxesUrl,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFE6A5A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text(
                    'Comprar todos por R\$69,99',
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
        ),
        SizedBox(height: 50),
        Wrap(
          spacing: 45,
          runSpacing: 40,
          alignment: WrapAlignment.center,
          children: [
            // Corrigimos os paths das imagens para usar assets/ em vez de lib/
            CategoryCard(
              imagePath: 'assets/disparo_em_massa_png.png',
              title: 'Disparador em Massa com IA',
              description: 'Envia mensagens em grande escala com limite diário, utilizando dados inseridos via formulário web para personalização.',
              price: 'R\$39,99',
              url: 'https://www.asaas.com/c/idc44kwd78ohq7v9',
            ),
            CategoryCard(
              imagePath: 'assets/resumidor_de_grupos_de_whatsaapp_png.png',
              title: 'Resumidor de Grupos do WhatsApp',
              description: 'Analisa mensagens de grupos do WhatsApp e gera um resumo diário, enviado automaticamente em um horário determinado via Node Trigger.',
              price: 'R\$39,99',
              url: 'https://www.asaas.com/c/idc44kwd78ohq7v9',
            ),
            CategoryCard(
              imagePath: 'assets/extrator_de_dados_comerciais_do_google_maps_png.png',
              title: 'Extrator de dados Comerciais do Google Maps',
              description: 'Coleta e organiza informações de empresas diretamente do Google Maps, facilitando a análise e o uso comercial dos dados.',
              price: 'R\$39,99',
              url: 'https://www.asaas.com/c/idc44kwd78ohq7v9',
            ),
            CategoryCard(
              imagePath: 'assets/agente_de_i_a_com_debounce_png.png',
              title: 'Agente de IA com Debounce de Mensagens e Respostas Segmentos',
              description: 'Aguarda múltiplas mensagens antes de gerar uma única resposta otimizada, interpreta áudios e gerencia agendamentos no Google Agenda, incluindo remarcações e cancelamentos.',
              price: 'R\$39,99',
              url: 'https://www.asaas.com/c/idc44kwd78ohq7v9',
            ),
            CategoryCard(
              imagePath: 'assets/gerador_de_conteudos_com_worpress_png.png',
              title: 'Gerador de conteúdo com IA e Postagem Automática no WordPress',
              description: 'Criar artigos e imagens otimizadas com inteligência artificial e pública diretamente no WordPress, automatizando a criação de conteúdo.',
              price: 'R\$39,99',
              url: 'https://www.asaas.com/c/idc44kwd78ohq7v9',
            ),
            CategoryCard(
              imagePath: 'assets/agente_de_i_a_para_e_mails_png.png',
              title: 'Agente de IA que Responde E-mail Automaticamente',
              description: 'Processa e responde e-mail com inteligência artificial, tornando a comunicação mais rápida e eficiente.',
              price: 'R\$39,99',
              url: 'https://www.asaas.com/c/idc44kwd78ohq7v9',
            ),
            CategoryCard(
              imagePath: 'assets/transcricao_automatica_de_audio_png.png',
              title: 'Automação de transcrição de Áudio do WhatsApp',
              description: 'Converte automaticamente os áudios recebidos no WhatsApp em texto, facilitando a leitura e organização das mensagens.',
              price: 'R\$39,99',
              url: 'https://www.asaas.com/c/idc44kwd78ohq7v9',
            ),
            CategoryCard(
              imagePath: 'assets/extrator_de_noticias_diarias_png.png',
              title: 'Extrator de Notícias Diário com Envio por E-mail ou WhatsApp',
              description: 'Busca e seleciona as principais notícias do dia e as entrega no formulário no formato desejado, garantindo acesso rápido à informação.',
              price: 'R\$39,99',
              url: 'https://www.asaas.com/c/idc44kwd78ohq7v9',
            ),
            CategoryCard(
              imagePath: 'assets/transcricao_automatica_de_reunioes_png.png',
              title: 'Transcrição de Reuniões em tempo Real com Extração de Insights',
              description: 'Registra reuniões ao vivo, transcreve o conteúdo e identifica os principais pontos e insights discutidos.',
              price: 'R\$39,99',
              url: 'https://www.asaas.com/c/idc44kwd78ohq7v9',
            ),
            CategoryCard(
              imagePath: 'assets/agente_de_agendamentos_png.png',
              title: 'Agente de Agendamentos',
              description: 'Responsável pelo atendimento inicial aos pacientes de clínicas, realizando o agendamento de consultas no Google Agenda. Registra o nome do paciente, o horário marcado e o motivo da consulta.',
              price: 'R\$39,99',
              url: 'https://www.asaas.com/c/idc44kwd78ohq7v9',
            ),
          ],
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String price;
  final String url;

  const CategoryCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      start: 0.01,
      end: 0.03,
      child: Container(
        width: 300,
        height: 420, // Aumentado a altura para acomodar o conteúdo maior
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 15),
            Text(
              title,
              style: GoogleFonts.openSans(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Expanded(
              child: Text(
                description,
                style: GoogleFonts.robotoSlab(
                  fontSize: 14,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 6,
              ),
            ),
            SizedBox(height: 15),
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
