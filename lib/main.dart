import 'package:flutter/material.dart';
import 'package:rumeng/ButtonColumn.dart';
import 'package:rumeng/titlesection.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override
  // State<MyApp> createState() => _My
  @override
  Widget build(BuildContext context) {
    String phone = "";
    String password = "";
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const TitleSection(),
              const ButtonColumn(),
              Container(
                padding: const EdgeInsets.all(32),
                child: const Text(
                  'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                  'Alps. Situated 1,578 meters above sea level, it is one of the '
                  'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                  'half-hour walk through pastures and pine forest, leads you to the '
                  'lake, which warms to 20 degrees Celsius in the summer. Activities '
                  'enjoyed here include rowing, and riding the summer toboggan run.',
                  softWrap: true,
                ),
              ),
              // Container(
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage("images/4.jpg"), fit: BoxFit.fill),
              //   ),
              //   width: width,
              //   height: width ,

              // ),
              Stack(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      "images/4.jpg",
                      width: width,
                      fit: BoxFit.contain,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      register();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "注册",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  register() {
    // var response = await http.post();
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    //   return register();
    // }));
  }
}
