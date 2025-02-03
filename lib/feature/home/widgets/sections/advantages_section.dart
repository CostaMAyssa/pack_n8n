import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Importando o pacote Google Fonts
import 'package:pack_n8n/utils/breakpoints/breakpoints.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantage(String title, String subtitle, IconData icon) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.white24,
            size: 60,
          ),
          const SizedBox(width: 8),
          Column(
            children: [
              Text(
                title,
                style: GoogleFonts.openSans( // Aplicando a fonte Roboto
                  color: Colors.white12,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: GoogleFonts.robotoSlab( // Aplicando a fonte Roboto
                  color: Colors.white12,
                  fontSize: 20,
                ),
              )
            ],
          )
        ],
      );
    }

    Widget buildVerticalAdvantage(String title, String subtitle, IconData icon) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.white24,
            size: 45,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans( // Aplicando a fonte Roboto
              color: Colors.white12,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.robotoSlab( // Aplicando a fonte Roboto
              color: Colors.white12,
            ),
          ),
        ],
      );
    }

    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= mobileBreakpoint)
          return Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.white12))),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 16,
              spacing: 8,
              children: [
                buildHorizontalAdvantage('N8N', 'Com IA', Icons.computer),
                buildHorizontalAdvantage('N8N', 'Whatsapp Business', Icons.message),
                buildHorizontalAdvantage('N8N', 'Automação Completa', Icons.settings),
              ],
            ),
          );
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.white12))),
          child: Row(
            children: [
              Expanded(
                child: buildVerticalAdvantage('N8N', 'Com IA', Icons.computer),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: buildVerticalAdvantage('N8N', 'Whatsapp Business', Icons.message),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: buildVerticalAdvantage('N8N', 'Automação Completa', Icons.settings),
              ),
            ],
          ),
        );
      },
    );
  }
}
