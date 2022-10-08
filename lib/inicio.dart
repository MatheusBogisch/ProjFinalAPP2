import 'package:boutiquedebolo/componentes.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Boutique de bolo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final urlImages = [
    'https://www.significadodossonhos.inf.br/wp-content/uploads/2019/08/Sonhar-comendo-bolo2.jpg',
    'https://www.fatosdesconhecidos.com.br/wp-content/uploads/2016/01/CZ-sobremesas-doces-receitas-chocolate-D-732x4121.jpg',
    'https://www.unicesumar.edu.br/blog/wp-content/uploads/2017/03/confeitaria-profissional.jpg',
    'https://www.gamespot.com/a/uploads/scale_landscape/1603/16030002/3749782-borat-subsequent-moviefilm.jpg',
    'https://st.depositphotos.com/1422604/4228/i/600/depositphotos_42284941-stock-photo-cute-little-girl-eating.jpg',
    'https://uploads.metropoles.com/wp-content/uploads/2021/07/08152927/1bolo-de-cenoura.jpg'
  ];
  int activeIndex = 0;
  @override
  void initState() {
    super.initState;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[400],
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(backgroundColor: Colors.pink[400], child: Menu()),
      body: Center(
          child: Column(
        children: [
          CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: ((context, index, realIndex) {
                final urlImage = urlImages[index];

                return buildImage(urlImage, index);
              }),
              options: CarouselOptions(
                height: 400,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: ((index, reason) =>
                    setState((() => activeIndex = index))),
              )
              ),
              const SizedBox(height: 32),
              buildIndicator(),
        ],
      )),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
  Widget buildIndicator()=> AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: urlImages.length,
    effect: WormEffect(activeDotColor: Colors.blue.shade300),
  );
}
