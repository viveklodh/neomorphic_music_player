import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'customContainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.grey.shade300,
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomContainer(
                            height: 60,
                            width: 60,
                            child: Icon(Icons.arrow_back)),
                        Text("P L A Y I S T"),
                        CustomContainer(
                            height: 60, width: 60, child: Icon(Icons.menu)),
                      ]),
                  SizedBox(
                    height: 35,
                  ),
                  CustomContainer(
                      child: Column(
                    children: [
                      Image.asset("images/art.jpeg"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "LOFI SONG",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 18),
                            ),
                            Text("Kesariya",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          ]),
                          Icon(Icons.favorite, size: 32, color: Colors.red)
                        ],
                      )
                    ],
                  )),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("0:00"),
                      Icon(Icons.shuffle),
                      Icon(Icons.repeat),
                      Text("4:22")
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomContainer(
                      child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.8,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  )),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CustomContainer(
                              child: Icon(Icons.skip_previous, size: 34))),
                      SizedBox(width: 15),
                      Expanded(
                        flex: 2,
                        child: CustomContainer(
                            child: Icon(Icons.play_arrow, size: 34)),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                          child: CustomContainer(
                              child: Icon(Icons.skip_next_sharp, size: 34)))
                    ],
                  )
                ],
              ),
            ))));
  }
}
