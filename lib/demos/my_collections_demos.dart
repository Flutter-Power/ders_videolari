import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AAAA"),
      ),
      body: ListView.builder(
        padding: PaddingUtilty().paddingHorizantol,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtilty().paddingBottom,
      shape: BorderRadiusUtilty().borderRadiusGeneral,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtilty().paddingGeneral,
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  _model.imagePath,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: PaddingUtilty().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(_model.title), Text("${_model.price} TL")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class PaddingUtilty {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(15);
  final paddingHorizantol = const EdgeInsets.symmetric(horizontal: 20);
}

class BorderRadiusUtilty {
  final borderRadiusGeneral = RoundedRectangleBorder(borderRadius: BorderRadius.circular(30));
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(imagePath: ProjectImage.imageHayalet, title: "Hayalet", price: 3.4),
      CollectionModel(imagePath: ProjectImage.imageBayrak, title: "bayrak", price: 1000),
      CollectionModel(imagePath: ProjectImage.imageHayalet, title: "Hayalet", price: 3.4),
      CollectionModel(imagePath: ProjectImage.imageBayrak, title: "Hayalet", price: 1000)
    ];
  }
}

class ProjectImage {
  static const imageHayalet = "assets/png/hayalet.png";
  static const imageBayrak = "assets/png/bayrak.png";
}
