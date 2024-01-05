import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';


final Color darkBlue = Color.fromARGB(255, 18, 32, 47);
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {


  final List<Feature> features = [
    Feature(
      title: "Facebook",
      color: Colors.blue,
      data: [0.2, 0.8, 0.4, 0.7, 0.6],
    ),
    Feature(
      title: "Instagram",
      color: Colors.pink,
      data: [1, 0.8, 0.6, 0.7, 0.3],
    ),
    Feature(
      title: "Twitter(X)",
      color: Colors.black12,
      data: [0.5, 0.4, 0.85, 0.4, 0.7],
    ),

  ];





  final List<Feature> features2 = [
    Feature(
      title: "You tube",
      color: Colors.green,
      data: [0.2, 0.8, 0.4, 0.7, 0.6],
    ),
    Feature(
      title: "Netflix",
      color: Colors.red,
      data: [1, 0.8, 0.6, 0.7, 0.3],
    ),
    Feature(
      title: "Prime",
      color: Colors.deepPurpleAccent,
      data: [0.5, 0.4, 0.85, 0.4, 0.7],
    ),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.symmetric(),
                child: Text(
                  "Social Media",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
              LineGraph(
                features: features,
                size: Size(320, 400),
                labelX: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5'],
                labelY: ['20%', '40%', '60%', '80%', '100%'],
                showDescription: true,
                graphColor: Colors.white30,
                graphOpacity: 0.2,
                verticalFeatureDirection: true,
                descriptionHeight: 130,
              ),
              SizedBox(
                height: 50,
              ),


              Padding(
                padding: const EdgeInsets.symmetric(),
                child: Text(
                  "OTT platform",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
              LineGraph(
                features: features2,
                size: Size(320, 400),
                labelX: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5'],
                labelY: ['20%', '40%', '60%', '80%', '100%'],
                showDescription: true,
                graphColor: Colors.white30,
                graphOpacity: 0.2,
                verticalFeatureDirection: true,
                descriptionHeight: 130,
              ),

            ],


          ),
        ),
      ),
    );
  }
}
