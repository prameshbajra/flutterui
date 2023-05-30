import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 14,
        color: Colors.blue.shade400);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/images/top_header.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: 64,
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              "https://prameshbajra.github.io/static/assets/img/landing/pramesh.jpg"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Pramesh Bajracharya",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Monserrat Medium",
                                  fontSize: 20),
                            ),
                            Text(
                              "pe.messh@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Monserrat Medium",
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 148),
                    height: size.height *.60,
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      primary: false,
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 20,
                          child: Container(
                            height:
                                200, // specify the height according to your needs
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  "https://www.svgrepo.com/show/202548/cabbage.svg",
                                  height: 128,
                                ),
                                const SizedBox(
                                  height: 10,),
                                Text(
                                  "Cabbage",
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 20,
                          child: Container(
                            height:
                                200, // specify the height according to your needs
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  "https://www.svgrepo.com/show/202545/cheeseburger-burger.svg",
                                  height: 128,
                                ),
                                const SizedBox(
                                  height: 10,),
                                Text(
                                  "Chicken burger",
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 20,
                          child: Container(
                            height:
                                200, // specify the height according to your needs
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  "https://www.svgrepo.com/show/202546/onion.svg",
                                  height: 128,
                                ),
                                const SizedBox(
                                  height: 10,),
                                Text(
                                  "Onions",
                                  
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 20,
                          child: Container(
                            height:
                                200, // specify the height according to your needs
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  "https://www.svgrepo.com/show/202550/bell-pepper-bell-pepper.svg",
                                  height: 128,
                                ),
                                const SizedBox(
                                  height: 10,),
                                Text(
                                  "Bell Pepper",
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
