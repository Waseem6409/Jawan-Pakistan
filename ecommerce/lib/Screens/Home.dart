import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future items;

  @override
  void initState() {
    super.initState();
    items = fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: items,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Grid(items: snapshot.data);
          } else if (snapshot.hasError) {
            return Text('Error');
          }

          // By default, show a loading spinner.
          return Center(
            child: SpinKitCubeGrid(
              color: Color(0xff3C424B),
              size: 50.0,
            ),
          );
          ;
        });
  }
}

Future fetchItems() async {
  final response =
      await http.get(Uri.parse('https://fakestoreapi.com/products'));
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    return data;
  } else {
    throw Exception('Failed to load album');
  }
}

class Grid extends StatelessWidget {
  const Grid({Key? key, required this.items}) : super(key: key);

  final items;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      padding: EdgeInsets.all(5),
      crossAxisCount: 2,
      itemCount: items.length,
      itemBuilder: (context, index) => ImageCard(
        item: items[index],
      ),
      staggeredTileBuilder: (index) => StaggeredTile.fit(1),
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({required this.item});

  final item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.network(item['image'], fit: BoxFit.cover),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 10, left: 12),
          child: Text(
            'Price \u0024${item['price']}',
            style: TextStyle(fontSize: 17),
          ),
        )
      ],
    );
  }
}
