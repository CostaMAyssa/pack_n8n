import 'package:flutter/material.dart';

class AppColors {
  // Fosco preto para o fundo
  static const Color matteBlack = Color(0xFF121212);

  // Preto brilhante
  static const Color glossyBlack = Color(0xFF000000);

  // Branco para o texto
  static const Color backGround = Colors.white;

  // Degradê do preto fosco ao preto brilhante
  static const LinearGradient blackGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      glossyBlack, // Começa com o preto brilhante
      matteBlack,  // Transita para o preto fosco
      glossyBlack, // Alterna para o preto brilhante
      matteBlack,  // Termina com o preto fosco
    ],
  );
}