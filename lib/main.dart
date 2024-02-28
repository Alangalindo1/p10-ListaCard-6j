import 'package:flutter/material.dart';

void main() => runApp(const Milistacard());

class Milistacard extends StatelessWidget {
  const Milistacard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi listView Galindo",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Paginainicial(),
    );
  }
}

class Paginainicial extends StatefulWidget {
  const Paginainicial({Key? key}) : super(key: key);

  @override
  State<Paginainicial> createState() => _PaginainicialState();
}

class _PaginainicialState extends State<Paginainicial> {
  List<String> images = [
    "assets/images/BARCA.png",
    "assets/images/BAY.png",
    "assets/images/CHEL.png",
    "assets/images/REAL.png",
    "assets/images/avatar1.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Galindo"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: Text("El titulo"),
              subtitle: Text("El subtitulo"),
            ),
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
