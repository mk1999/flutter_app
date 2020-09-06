import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';



class movieForm extends StatelessWidget {
  final String title;
  movieForm(this.title);
//  _formKey and _autoValidate
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _name;
  String _email;
  String _mobile;
  var rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF1F2833),
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Movies'),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: FormUI(),
            ),
          ),
        ),
      ),
    );
  }

// Here is our Form UI
  Widget FormUI() {
    return new Column(
      children: <Widget>[
        MaterialButton(
          onPressed: () {

          },
          color: Colors.deepPurpleAccent,
          textColor: Colors.white,
          child: Icon(
            Icons.camera_alt,
            size: 24,
          ),
          padding: EdgeInsets.all(16),
          shape: CircleBorder(),
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Movie Name'),
          keyboardType: TextInputType.text,
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Director'),
          keyboardType: TextInputType.text,
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Reviews'),
          keyboardType: TextInputType.text,
        ),
        Text("\n"),
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
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Genre'),
          keyboardType: TextInputType.emailAddress,
        ),
        new SizedBox(
          height: 10.0,
        ),
        new RaisedButton(
          shape: StadiumBorder(),
          onPressed: () {},

          child: Text("Update"),
          color: Colors.deepPurpleAccent,
        )
      ],
    );
  }

  void _validateInputs() {}
}