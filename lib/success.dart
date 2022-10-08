import 'package:flutter/material.dart';

class Sucess extends StatelessWidget {
  // const Sucess(void changePhase, {super.key});
  final  resetButton;

  Sucess(this.resetButton);
  


  @override
  Widget build(BuildContext context) {
    return Column(
      // Width: double.infinity,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('images/winner.webp'),
        ),
        Text(
          'congratulations',
          style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        Text(
          'YOU ARE THE WINNER',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            color: Colors.teal.shade100,
            fontSize: 20.0,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 150.0,
          height: 20.0,
          child: Divider(
            color: Colors.teal.shade100,
          ),
        ),
        FlatButton(
                      color: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      onPressed: resetButton,
                      child: Text(
                        "Restart",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
      ],
    );
  }
}
