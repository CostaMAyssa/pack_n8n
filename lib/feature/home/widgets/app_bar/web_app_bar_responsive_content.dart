import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Importando o pacote Google Fonts

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Color(0xFFFE6A5A),
                      width: 2, // Ajusta a espessura da borda
                    ),
                    borderRadius: BorderRadius.circular(8), // Arredonda as bordas
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 4),
                      IconButton(
                        icon: Icon(Icons.search),
                        color: Color(0xFFFE6A5A),
                        onPressed: () {},
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Buscar produto',
                            hintStyle: GoogleFonts.poppins( // Aplicando a fonte Roboto
                              color: Color(0xFFFE6A5A), // Cor do texto de dica
                            ),
                            isCollapsed: true,
                          ),
                          style: GoogleFonts.roboto( // Aplicando a fonte Roboto
                            color: Color(0xFFFE6A5A), // Cor do texto digitado
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400) ...[
                const SizedBox(width: 32),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xFFFE6A5A), // Cor do texto
                  ),
                  child: Text(
                    'Produtos',
                    style: GoogleFonts.openSans( // Aplicando a fonte Roboto
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
              if (constraints.maxWidth >= 500) ...[
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xFFFE6A5A), // Cor do texto
                  ),
                  child: Text(
                    'Suporte',
                    style: GoogleFonts.openSans( // Aplicando a fonte Roboto
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
