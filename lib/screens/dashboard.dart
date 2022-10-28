import 'package:flutter/material.dart';
import 'package:project_one_week/const.dart';
import 'package:project_one_week/screens/detail_place.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Yudha 👋",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          new Icon(
                            Icons.location_on,
                            color: Colors.black26,
                            size: 10.0,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          new Text(
                            "Jogja, Indonesia",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black26,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.notifications_active_outlined,
                          color: colorPrimary,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/yudha.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.black26,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Discover your dream place",
                        style: TextStyle(
                          color: Colors.black26,
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: VerticalDivider(
                          color: Colors.black12,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.tune,
                        color: colorPrimary,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                height: 45,
                child: Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      _itemMenu("assets/images/city.png", "City", Colors.white,
                          colorPrimary),
                      _itemMenu("assets/images/lake.png", "Lake",
                          Colors.black26, Colors.white),
                      _itemMenu("assets/images/hills.png", "Hills",
                          Colors.black26, Colors.white),
                      _itemMenu("assets/images/travel.png", "Travel",
                          Colors.black26, Colors.white),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recomendations",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black26,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                height: 230.0,
                child: Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      _itemRecomendation("Miajima Island", "4.5", "Japan",
                          "\$65", "assets/images/miajima_island.jpeg", context),
                      _itemRecomendation("Gate Yasika", "4.5", "Japan", "\$65",
                          "assets/images/gate_yasika.jpeg", context),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tour Packages",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black26,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              _itemTourPackage("Tample Gate", "4.6", "Japan", "\$59",
                  "assets/images/tample_gate.jpeg"),
              _itemTourPackage("Chureito Pagoda", "5.0", "Japan", "\$80",
                  "assets/images/chureito_pagoda.jpeg"),
            ],
          ),
        ),
      ),
    );
  }

  Container _itemTourPackage(title, rating, location, price, image) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: 150.0,
      child: Expanded(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 390.0,
              height: 150.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: 190.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Starting from",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black26,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            price,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.black26,
                                size: 16.0,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                location,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black26,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20.0,
                              ),
                              Text(
                                rating,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell _itemRecomendation(title, rating, location, price, image, context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPlace()));
      },
      child: Container(
        margin: EdgeInsets.only(right: 14.0),
        width: 230.0,
        height: 230.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 210.0,
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 16.0,
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.black26,
                      size: 16.0,
                    ),
                    Text(
                      location,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black26,
                      ),
                    ),
                    SizedBox(
                      width: 70.0,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "/Person",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _itemMenu(image, title, colorTitle, colorBackground) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      margin: const EdgeInsets.only(
        right: 10.0,
      ),
      width: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            colorBackground.withOpacity(0.7),
            colorBackground,
          ],
        ),
      ),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(5.0),
            width: 35.0,
            height: 35.0,
            decoration: BoxDecoration(
              color: colorTitle != Colors.white
                  ? Colors.grey.withOpacity(0.1)
                  : Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image(
              width: 20.0,
              height: 20.0,
              image: AssetImage(image),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            title,
            style: TextStyle(color: colorTitle, fontSize: 16.0),
          ),
        ],
      )),
    );
  }
}
