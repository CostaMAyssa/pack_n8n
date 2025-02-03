import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Divider(
            color: Colors.white12,  // Cor cinza
            thickness: 1,         // Espessura da linha
          ),
          Center(
            child: Text(
              '© 2025 Pack_n8n. Todos os direitos reservados.',
              style: GoogleFonts.openSans(
                color: Colors.white12,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
