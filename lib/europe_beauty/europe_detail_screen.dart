import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:europe/model/europe_place.dart';

class EuropeDetailScreen extends StatelessWidget {
  final EuropePlace europe;

  EuropeDetailScreen({super.key, required this.europe,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, BoxConstraints constraints){
          if (constraints.maxWidth <= 800) {
            return DetailMobileScreen(europe: europe);
          } else {
            return DetailNotMobileScreen(europe: europe);
          }
        }),
      ),
    );
  }
}

class DetailMobileScreen extends StatelessWidget {
  const DetailMobileScreen({
    super.key,
    required this.europe,
  });

  final EuropePlace europe;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.network(
            fit: BoxFit.cover,
            height: 600,
            width: MediaQuery.of(context).size.width,
            europe.mainImg
            ),
            Positioned(
              top: 15,
              left: 15,
              child: InkWell(
                onTap: ()=>Navigator.pop(context),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child:
            Column(
              children: [
                Text(europe.city, style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w900
                ),),
                Text(europe.country, style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("View", style: TextStyle(
                            fontSize: 20
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                              europe.ratingView as int,
                              (index) => Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Food", style: TextStyle(
                            fontSize: 20
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                              europe.ratingFood as int,
                              (index) => Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Hotels", style: TextStyle(
                            fontSize: 20
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                              europe.ratingHotel as int, 
                              (index) => Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Text(europe.city, style: TextStyle(
                      fontSize: 20,
                    ),),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                        textAlign: TextAlign.justify,
                        europe.description, style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: europe.imgUrls.length,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(europe.imgUrls[index])
                        ),
                      );
                    }
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class DetailNotMobileScreen extends StatefulWidget {
  final EuropePlace europe;

  const DetailNotMobileScreen({super.key, required this.europe});

  @override
  State<DetailNotMobileScreen> createState() => _DetailNotMobileScreenState();
}

class _DetailNotMobileScreenState extends State<DetailNotMobileScreen> {
  final _scrollbarController = ScrollController();

  @override
  void dispose(){
    _scrollbarController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 10
      ),
      child: Stack(
        children: [
          Column(
          children: [
            Text(
              widget.europe.city,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900
              ),
            ),
            Text(
              widget.europe.country,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      widget.europe.mainImg,
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height-200,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Text(
                            widget.europe.city,
                            style: TextStyle(
                              fontSize: 30, 
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Text(
                            widget.europe.description,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
        
                          SizedBox(
                            height: 15,
                          ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "View: ",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(
                                  widget.europe.ratingView as int,
                                  (index) => Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ],
                          ),
        
                          SizedBox(
                            height: 15,
                          ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Food: ",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(
                                  widget.europe.ratingFood as int,
                                  (index) => Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ],
                          ),
        
                          SizedBox(
                            height: 15,
                          ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Hotel: ",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(
                                  widget.europe.ratingHotel as int,
                                  (index) => Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                )
              ],
            ),
        
            SizedBox(
              height: 20,
            ),
        
            SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.europe.imgUrls.length,
              itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      widget.europe.imgUrls[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }
            ),
          ),          
          ],
        ),
        Positioned(
          top: 0,
          left: 0,
          child: InkWell(
                onTap: ()=>Navigator.pop(context),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 220, 220, 220),
                    shape: BoxShape.circle
                  ),
                  child: Icon(Icons.arrow_back),
                ),
              ),
        ),
        ],
      ),
    );
  }
}