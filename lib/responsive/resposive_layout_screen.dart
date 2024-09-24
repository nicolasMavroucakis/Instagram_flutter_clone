import "package:flutter/material.dart"; //  contém componentes básicos da interface do usuário
import "package:flutter/rendering.dart"; // ajuda a gerenciar a renderização de widgets
import "package:instragam_flutter/utils/demensions.dart";

class ReposniveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ReposniveLayout({Key? key, required this.webScreenLayout, required this.mobileScreenLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) { // é onde você define como a interface do usuário deve ser construída.
    return LayoutBuilder( // LayoutBuilder permite construir widgets com base nas restrições de layout disponíveis. Ele fornece um contexto que contém informações sobre o tamanho da tela.
      builder: (context, Constraints) {
        if(Constraints.maxWidth > webScreenSize) {
          return webScreenLayout;
        }
        return mobileScreenLayout;
      }
    );
  }
}