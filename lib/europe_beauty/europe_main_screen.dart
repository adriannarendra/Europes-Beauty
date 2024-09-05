import 'package:flutter/material.dart';
import 'package:europe/europe_beauty/europe_detail_screen.dart';
import 'package:europe/model/europe_place.dart';

class EuropeMainScreen extends StatelessWidget {
  const EuropeMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Europe's Beauty", style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10
        ),
        child: LayoutBuilder(builder: (context, BoxConstraints constraints){
            if (constraints.maxWidth <= 700) {
              return MyListView();
            } else if(constraints.maxWidth <= 1000) {
              return MyGridView(crossAxisCount: 2,);
            } else if(constraints.maxWidth <= 1000) {
              return MyGridView(crossAxisCount: 3,);
            } else if(constraints.maxWidth <= 1200) {
              return MyGridView(crossAxisCount: 4,);
            } else{
              return MyGridView(crossAxisCount: 5);
            }
        })),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: europePlaceList.length,
      itemBuilder: (context, index){
        final EuropePlace europe = europePlaceList[index];
        return
        Container(
          padding: const EdgeInsets.symmetric(
              vertical: 5
            ),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return EuropeDetailScreen(europe: europe,);
              }));
            },
            child: Card(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                      child: Image.network(
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                        europe.mainImg
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(europe.city, style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),),
                        Text(europe.country, style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
          
                        ),),
                      ],
                    )
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class MyGridView extends StatelessWidget {
  final int crossAxisCount;
  const MyGridView({super.key, required this.crossAxisCount});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: crossAxisCount,
      children: europePlaceList.map((europe)=>InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => EuropeDetailScreen(europe: europe,)
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                    clipBehavior: Clip.hardEdge,
                    child: Image.network(
                      europe.mainImg, 
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(europe.city, style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(
                        height: 2,
                      ),
                      Text(europe.country),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
      ).toList(),
    );
  }
}