import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Breakfast",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: SvgPicture.asset("images/Arrow - Left 2.svg"),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: SvgPicture.asset("images/dots.svg"),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
              width: 1000,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: const Color(0xff101617).withOpacity(0.1),
                    blurRadius: 40,
                    spreadRadius: 0)
              ]),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(15),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("images/Search.svg"),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("images/Filter.svg"),
                    ),
                    hintText: "Search Pancakes",
                    hintStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
