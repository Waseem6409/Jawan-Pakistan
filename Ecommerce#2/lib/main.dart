import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blueGrey,
          accentColor: Colors.white,
        ),
        darkTheme: ThemeData.light(),
        home: Ecom());
  }
}

class Ecom extends StatefulWidget {
  @override
  _EcomState createState() => _EcomState();
}

class _EcomState extends State<Ecom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Center(
          child: Text("Ecom App"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          )
        ],
      ),

      //

      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.account_box),
             onPressed: () {
            })
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white70,
          ),
          child: Column(
            children: <Widget>[
              CarouselSlider(
                items: <Widget>[
                  //1st Image of Slider
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            height: 200,
                            width: 200,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    child: Image.asset('assets/Mobiles.png'),
                                    onTap: () => null,
                                    highlightColor: Colors.blueGrey,
                                    hoverColor: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "Mobiles",
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: <Widget>[
                                  Text("Rating"),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "(4.0)",
                                    style: TextStyle(
                                      fontSize: 9,
                                    ),
                                  )
                                ])
                              ],
                            ))
                      ]),

                  //2nd Image of Slider
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            height: 200,
                            width: 200,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    child: Image.asset('assets/laptops.png'),
                                    onTap: () => null,
                                    highlightColor: Colors.blueGrey,
                                    hoverColor: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "Laptops",
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: <Widget>[
                                  Text("Rating"),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "(4.0)",
                                    style: TextStyle(
                                      fontSize: 9,
                                    ),
                                  )
                                ])
                              ],
                            ))
                      ]),

                  //3rd Image of Slider
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            height: 200,
                            width: 200,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    child:
                                        Image.asset('assets/merchendise.png'),
                                    onTap: () => null,
                                    highlightColor: Colors.blueGrey,
                                    hoverColor: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "Merchandise",
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: <Widget>[
                                  Text("Rating"),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "(4.0)",
                                    style: TextStyle(
                                      fontSize: 9,
                                    ),
                                  )
                                ])
                              ],
                            ))
                      ]),

                  //4th Image of Slider
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            height: 200,
                            width: 200,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    child: Image.asset(
                                        'assets/home accessories .png'),
                                    onTap: () => null,
                                    highlightColor: Colors.blueGrey,
                                    hoverColor: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "Home Accessories",
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: <Widget>[
                                  Text("Rating"),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "(4.0)",
                                    style: TextStyle(
                                      fontSize: 9,
                                    ),
                                  )
                                ])
                              ],
                            ))
                      ]),

                  //5th Image of Slider
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            height: 200,
                            width: 200,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    child: Image.asset('assets/cloths.png'),
                                    onTap: () => null,
                                    highlightColor: Colors.blueGrey,
                                    hoverColor: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "Cloths & Fabrics",
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: <Widget>[
                                  Text("Rating"),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "(4.0)",
                                    style: TextStyle(
                                      fontSize: 9,
                                    ),
                                  )
                                ])
                              ],
                            ))
                      ]),
                ],
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: false,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.9,
                ),
              ),

              //iphone12

              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.all(15.0),
                          height: 200,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Expanded(
                                child: InkWell(
                                  child: Image.asset('assets/iphone12.png'),
                                  onTap: () => null,
                                  highlightColor: Colors.blueGrey,
                                  hoverColor: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  "Iphone 12",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text("256 GB"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(children: <Widget>[
                                Text("Rating"),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "(4.0)",
                                  style: TextStyle(
                                    fontSize: 9,
                                  ),
                                )
                              ])
                            ],
                          )),

                      // 10xmax

                      Container(
                          margin: EdgeInsets.all(15.0),
                          height: 200,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Expanded(
                                child: InkWell(
                                  child: Image.asset('assets/iphone10xmax.jpg'),
                                  onTap: () => null,
                                  highlightColor: Colors.blueGrey,
                                  hoverColor: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  "Iphone 10 X Max",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text("256 GB"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(children: <Widget>[
                                Text("Rating"),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "(4.0)",
                                  style: TextStyle(
                                    fontSize: 9,
                                  ),
                                )
                              ])
                            ],
                          )),
                    ]),
              ),

              // samsung note20U

              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.all(15.0),
                          height: 200,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Expanded(
                                child: InkWell(
                                  child: Image.asset(
                                      'assets/samsung s21ultra.png'),
                                  onTap: () => null,
                                  highlightColor: Colors.blueGrey,
                                  hoverColor: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  "Galaxy S21 Ultra",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text("128 GB"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(children: <Widget>[
                                Text("Rating"),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "(4.0)",
                                  style: TextStyle(
                                    fontSize: 9,
                                  ),
                                )
                              ])
                            ],
                          )),

                      // a71

                      Container(
                          margin: EdgeInsets.all(15.0),
                          height: 200,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Expanded(
                                child: InkWell(
                                  child: Image.asset(
                                      'assets/samsung galaxy a71.jpg'),
                                  onTap: () => null,
                                  highlightColor: Colors.blueGrey,
                                  hoverColor: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  "Galaxy A71",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text("8GB+128"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(children: <Widget>[
                                Text("Rating"),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "(4.0)",
                                  style: TextStyle(
                                    fontSize: 9,
                                  ),
                                )
                              ])
                            ],
                          )),
                    ]),
              ),

              // Redmi note 10 pro

              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.all(15.0),
                          height: 200,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Expanded(
                                child: InkWell(
                                  child: Image.asset(
                                      'assets/redmi note 10 pro.png'),
                                  onTap: () => null,
                                  highlightColor: Colors.blueGrey,
                                  hoverColor: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  "Redmi Note 10 pro",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text("8Gb+128GB"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(children: <Widget>[
                                Text("Rating"),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "(4.0)",
                                  style: TextStyle(
                                    fontSize: 9,
                                  ),
                                )
                              ])
                            ],
                          )),

                      // Mi 10pro

                      Container(
                          margin: EdgeInsets.all(15.0),
                          height: 200,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Expanded(
                                child: InkWell(
                                  child:
                                      Image.asset('assets/Mi note 10 pro.jpg'),
                                  onTap: () => null,
                                  highlightColor: Colors.blueGrey,
                                  hoverColor: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  "Mi Note 10 pro",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text("8Gb+128GB"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(children: <Widget>[
                                Text("Rating"),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "(4.0)",
                                  style: TextStyle(
                                    fontSize: 9,
                                  ),
                                )
                              ])
                            ],
                          )),
                    ]),
              ),

              // Nokia 8.1

              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.all(15.0),
                          height: 200,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Expanded(
                                child: InkWell(
                                  child: Image.asset('assets/nokia 8.1.png'),
                                  onTap: () => null,
                                  highlightColor: Colors.blueGrey,
                                  hoverColor: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  "Nokia 8.1",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text("6+64GB"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(children: <Widget>[
                                Text("Rating"),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "(4.0)",
                                  style: TextStyle(
                                    fontSize: 9,
                                  ),
                                )
                              ])
                            ],
                          )),

                      // N9

                      Container(
                          margin: EdgeInsets.all(15.0),
                          height: 210,
                          width: 150,
                          // width: 140,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Expanded(
                                child: InkWell(
                                  child: Image.asset(
                                    'assets/nokia9.png',
                                  ),
                                  onTap: () => null,
                                  highlightColor: Colors.blueGrey,
                                  hoverColor: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  "Nokia 9 ",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text("8GB+256GB"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(children: <Widget>[
                                Text("Rating"),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "(4.0)",
                                  style: TextStyle(
                                    fontSize: 8,
                                  ),
                                )
                              ])
                            ],
                          )),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
