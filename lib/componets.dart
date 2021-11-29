import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:seed_sales/constants.dart';

PreferredSizeWidget appBar(
    String title, List<Widget> widgetList, BuildContext context) {
  return PreferredSize(
    preferredSize: const Size(double.infinity, 100),
    child: Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.black12, spreadRadius: 5, blurRadius: 2)
      ]),
      width: double.infinity,
      height: 80,
      child: Container(
        decoration: const BoxDecoration(
          color: blackColor,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  decoration: const BoxDecoration(
                      color: lightBlack, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ]),
      ),
    ),
  );
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 20,
      child: TextField(
        textAlignVertical: TextAlignVertical.bottom,
        style: const TextStyle(height: 1.0, fontSize: 16),
        decoration: InputDecoration(
            fillColor: secondrayColor,
            filled: true,
            hintText: search,
            hintStyle: const TextStyle(),
            suffixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}

Widget spacer(double size) => SizedBox(
      height: size,
    );
