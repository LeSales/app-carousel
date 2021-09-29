import 'package:carousel/ui/atoms/molecules/organisms/templates/list_custom.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final list = [
    'https://marketingcomcafe.com.br/wp-content/uploads/2017/12/banco-imagens-gratis.png',
    'https://st2.depositphotos.com/6544740/9337/i/600/depositphotos_93376372-stock-photo-sunset-over-sea-pier.jpg',
    'https://s1.static.brasilescola.uol.com.br/be/conteudo/images/imagem-em-lente-convexa.jpg',
    'https://www.imagensparawhats.club/wp-content/uploads/2020/07/Imagens-de-Husky-Siberiano-1-520x924.jpg',
    'https://kanto.legiaodosherois.com.br/w760-h398-gnw-cfill-q80/wp-content/uploads/2018/10/legiao_2wj0B1QbNfmuqaxlI38d5GyFiUV_RtOHceZA9KChoE.jpg.jpeg',
    'https://storage.googleapis.com/dpw/app/uploads/2009/12/como-otimizar-imagens-web-internet1.jpg'
  ];

  int currentImage = 0;

  void nextImage() {
    if ((currentImage + 1) == list.length) {
      return;
    }

    setState(() {
      currentImage = currentImage + 1;
    });
  }

  void prevImage() {
    if (currentImage == 0) {
      return;
    }

    setState(() {
      currentImage = currentImage - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListCustom(
          list: list,
          prevImage: prevImage,
          nextImage: nextImage,
          index: currentImage,
        ),
      ),
    );
  }
}
