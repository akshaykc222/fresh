import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:seed_sales/constants.dart';

PreferredSizeWidget appBar(String title,List<Widget> widgetList){
  return PreferredSize(
    preferredSize:const Size(double.infinity, 100),
    child: Container(
          decoration:const BoxDecoration(
            boxShadow: [BoxShadow(
              color: Colors.black12,
              spreadRadius: 5,
              blurRadius: 2
            )]
          ),
          width: double.infinity,
          height: 100,
          child: Container(
            decoration:const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
            ),
            child: Container(
              margin:const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Row(
                   children:const [
                       Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.menu,size: 30,color: Colors.white,),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Foodbar",style: TextStyle(fontSize: 25,color: Colors.white),),
                  ),
                  Icon(Icons.navigate_before,color: Colors.transparent,),
                   ],
                 ),
                const SearchBar()
                ],
              ),
            ),
          ),
        ),
      
  );
}
class SearchBar extends StatelessWidget {
  const SearchBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.5,
      height: 20,
     
       child: TextField(
         textAlignVertical: TextAlignVertical.bottom,
         style:const TextStyle(
           height: 1.0,
           fontSize: 16
         ) ,
        decoration: InputDecoration(
            fillColor: secondrayColor,
            filled: true,
            hintText: search,
            hintStyle:const TextStyle(),
            suffixIcon:const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
            )
        ),
    ),
    );
  }
}
Widget spacer(double size)=>SizedBox(height: size,);