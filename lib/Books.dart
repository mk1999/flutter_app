import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'bookUpdate.dart';



class bookPage extends StatelessWidget{
  final String title;
  bookPage(this.title);

  var rating = 6.0;

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Books",
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
                padding: const EdgeInsets.all(10.0),

             child: Container(
                height: 600,
                child: ListView(
                  //scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                       Container(
                          height: 280,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://images-na.ssl-images-amazon.com/images/I/712HEn9SNwL.jpg'
                              ),
                            ),

                          ),
                        ),

                      Text('Half Girlfriend:',
                           style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold
                           ),
                          textAlign: TextAlign.right,
                        ),
                        Text('Half Girlfriend is an Indian English coming of age, young adult romance novel by Indian author Chetan Bhagat. The novel, set in rural Bihar, New Delhi, Patna, and New York, is the story of a Bihari boy in quest of winning over the girl he loves. \n',
                          style: TextStyle(fontSize: 14,fontWeight:  FontWeight.normal
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text('Author:',
                          style: TextStyle(fontSize: 16,fontWeight:  FontWeight.bold
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text('Chetan Bhagat\n',
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
                        Text('\n'),
                        Text('Genre:',
                          style: TextStyle(fontSize: 16,fontWeight:  FontWeight.bold
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text('Romance Novel',
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
                  new bookForm("Books")
              ));
            },
            child: Icon(Icons.add),
          ),
        ),
      ),

    );

  }
}