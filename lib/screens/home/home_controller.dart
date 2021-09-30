import 'package:flutter/material.dart';

class HomeController {
  final index = ValueNotifier<int>(0);

  final list = [
    'https://marketingcomcafe.com.br/wp-content/uploads/2017/12/banco-imagens-gratis.png',
    'https://st2.depositphotos.com/6544740/9337/i/600/depositphotos_93376372-stock-photo-sunset-over-sea-pier.jpg',
    'https://s1.static.brasilescola.uol.com.br/be/conteudo/images/imagem-em-lente-convexa.jpg',
    'https://www.imagensparawhats.club/wp-content/uploads/2020/07/Imagens-de-Husky-Siberiano-1-520x924.jpg',
    'https://kanto.legiaodosherois.com.br/w760-h398-gnw-cfill-q80/wp-content/uploads/2018/10/legiao_2wj0B1QbNfmuqaxlI38d5GyFiUV_RtOHceZA9KChoE.jpg.jpeg',
    'https://storage.googleapis.com/dpw/app/uploads/2009/12/como-otimizar-imagens-web-internet1.jpg'
  ];

  void nextImage() {
    if ((index.value + 1) == list.length) {
      return;
    }

    index.value++;
  }

  void prevImage() {
    if (index.value == 0) {
      return;
    }
    index.value--;
  }
}
