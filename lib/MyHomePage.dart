
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
      ),
     // backgroundColor: Color(F6E1E1),
     backgroundColor: Color( 0xc2e7d7df),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color:Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Find The food you want",
                    suffixIcon: Icon(Icons.add_road_rounded,color: Colors.grey,),
                    prefix: Icon(Icons.search, color: Colors.indigo,),
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconCard(icon: Icons.fastfood, text: 'Burger'),
                IconCard(icon: Icons.local_pizza, text: 'Pizza'),
                IconCard(icon: Icons.fastfood, text: 'Fries'),
                IconCard(icon: Icons.local_pizza, text: 'Pasta'),
              ],
            ),
          ),


          SizedBox(height: 14.0),
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10, left: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Popular Today",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold,),
              ),
            ),
          ),

          SizedBox(height: 14.0),
          Container(
            height: 200,

            child:ListView.builder(
                itemCount: 1,
                itemBuilder:(
                    context,index){
                  return topoffercard();

                }),
          )
,
        //  SizedBox(height: 14.0),
          Container(
            height: 200,

            child:ListView.builder(
                itemCount: 1,
                itemBuilder:(
                    context,index){
                  return topoffercard2();

                }),
          ),

        ],
      ),
    );
  }


  Widget topoffercard(){


    return Card(
      child: Row(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                image: DecorationImage(
                    image: NetworkImage(
                      "https://tse4.mm.bing.net/th?id=OIP.WBMaOkqxRci5rIo2s-9XrwHaE4&pid=Api&P=0"

                          ),

                    fit: BoxFit.cover
                )
            ),
          )
          ,
        ],
      ),
    );
  }
}
Widget topoffercard2(){


  return Card(
    child: Row(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://tse1.mm.bing.net/th?id=OIP.SK72D7fMm5qF25SG0WxORAHaEn&pid=Api&P=0"

                  ),

                  fit: BoxFit.cover
              )
          ),
        )
        ,
      ],
    ),
  );
}






class IconCard extends StatelessWidget {
  final IconData icon;
  final String text;

  IconCard({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 40.0,
        ),
        SizedBox(height: 8.0),
        Text(text),
      ],
    );
  }
}





