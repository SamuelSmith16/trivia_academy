import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  int result;
  int maximun;

  ScoreScreen({
    Key key,
    @required this.result,
    @required this.maximun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff374952),
        title: Center(
          child: Image(
            image: AssetImage('lib/assets/icon.png'),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 113,
                ),
                Text(
                  'VOÇÊ ACERTOU',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff263238),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$result',
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.w800,
                        color: Color(0xffE83B86),
                      ),
                    ),
                    Text(
                      '/$maximun',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff263238),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 87,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, -1),
                ),
              ],
            ),
            //Widget do botão 'Jogar novamente'
            child: Center(
              child: FlatButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Text(
                  'Jogar novamente',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                color: Color(0xffDA0175),
                textColor: Color(0xffF7F7F7),
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
