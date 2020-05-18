import 'package:flutter/material.dart';
import '../../Widgets/CustomButton.dart';
import '../Login/Login.dart';
import '../Signup/Signup.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Image.network(
              "https://cdn.vox-cdn.com/thumbor/NpAOpIA8LqHYfQkHfjFXIMZ3WTc=/0x0:3780x2516/920x613/filters:focal(1588x956:2192x1560):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/63692118/1134335296.jpg.0.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  ("Hotel Management"),
                  style: TextStyle(fontSize: 30.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                CustomButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  text: "Sign Up",
                  color: Colors.green,
                  width: 250.0,
                ),
                SizedBox(
                  height: 5.0,
                ),
                CustomButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  text: "Log In",
                  color: Colors.black,
                  width: 250.0,
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
