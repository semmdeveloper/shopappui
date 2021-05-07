import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem = [
    'assets/images/33.png',

    'assets/images/88.webp',

    'assets/images/77.jpg',
    'assets/images/99.webp',
    'assets/images/22.jpg',
        'assets/images/44.jpg',
        'assets/images/55.jpeg',
    'assets/images/22.jpg',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        leading: Icon(Icons.menu_outlined),
        backgroundColor: Colors.orange,
        title: Text("Apple Products",style: TextStyle(color: Colors.white,),),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text('7',style: TextStyle(color: Colors.orange),),
              ),
            ),
          ),
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/11.jpg'),
                  fit: BoxFit.cover,

                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,colors: [
                      Colors.black.withOpacity(.3),
                    Colors.black.withOpacity(.2),
                  ]


                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Lifestyle Sale',style: TextStyle(color: Colors.white,fontSize: 35),),
                    SizedBox(height: 85,),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange
                      ),
                      child: Center(
                       child: Text('Shop Now',style: TextStyle(color: Colors.white,),)
                      ),
                    ),
                    SizedBox(height: 15,),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 10,
                crossAxisCount: 1,
                children: _listItem.map((item) => cellOfList(item)).toList(),

              ),
            )
          ],
        ),

      ),
    );

  }
  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover

          )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 30,),

          ],
        ),
      ),

    );
  }
}
