import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AppHome()
    );
  }
}

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Product List")
      ),
      body: AppHomeBody(),
    );
  }
}

class AppHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          ProductItem("MACBOOK1", "MACBOOK1", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
          ProductItem("MACBOOK2", "MACBOOK2", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
          ProductItem("MACBOOK3", "MACBOOK3", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg")
        ]
    );
  }
}

class ProductItem extends StatelessWidget {

  final String name;
  final String desc;
  final String imageURL;

  ProductItem(this.name, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(width:3)
        ),
        child: Column(
          children: <Widget>[
            Text(name, style: TextStyle(fontSize:20,color:Colors.orange)),
            SizedBox(height:8),
            Text(desc, style: TextStyle(fontSize:20,color:Colors.orange)),
            SizedBox(height:8),
            Image.network(imageURL)
          ],
        )
    );
  }
}
