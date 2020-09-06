import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'movieUpdate.dart';



class moviePage extends StatelessWidget{
  final String title;
  moviePage(this.title);

  var rating = 6.0;

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Movies",
      theme: ThemeData(fontFamily: "Open sans"),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child:Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF1F2833),
            title: new Text(title),
          ),
          body:Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(6.0),

                child: Container(
                  height: 600,
                  child: ListView(
                    //scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: 340,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://static.rogerebert.com/uploads/movie/movie_poster/five-feet-apart-2019/large_five-feet-poster.jpg'
                                ),
                              ),

                            ),
                          ),

                          Text('Five Feet Apart:',
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.right,
                          ),
                          Text('Both Stella Grant (Haley Lu Richardson) and Will Newman (Cole Sprouse) suffer from the genetic disorder and life-threatening incurable illness cystic fibrosis (CF), which affects their lungs. Stella tries to battle her illness using social media to educate people on how it affects patients. \n',
                            style: TextStyle(fontSize: 14,fontWeight:  FontWeight.normal
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text('Director:',
                            style: TextStyle(fontSize: 16,fontWeight:  FontWeight.bold
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text('Justin Baldoni\n',
                            style: TextStyle(fontSize: 16,fontWeight:  FontWeight.normal
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Rating: ',
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Container(
                            child: SmoothStarRating(
                              allowHalfRating: false,
                              onRated: (v) {
                              },
                              starCount: 5,
                              rating: rating,
                              size: 30.0,
                              isReadOnly:true,
                              //filledIconData: Icons.blur_off,
                              halfFilledIconData: Icons.blur_on,
                              color: Colors.yellow,
                              borderColor: Colors.black,
                              spacing:0.0,
                            ),
                          ),
                          //Text('\n'),
                          Text('Genre:',
                            style: TextStyle(fontSize: 16,fontWeight:  FontWeight.bold
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text('Romance,Drama',
                            style: TextStyle(fontSize: 14,fontWeight:  FontWeight.normal
                            ),
                            textAlign: TextAlign.left,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new movieForm("Movies")
              ));
            },
            child: Icon(Icons.add),
          ),
        ),
      ),

    );

  }
}