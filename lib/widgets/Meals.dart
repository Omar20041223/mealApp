import 'package:flutter/material.dart';
class MealItem extends StatelessWidget {
  final String id ;
  final String title ;
  final String imageUrl ;
  final String salary ;
  final String time ;
  final String description ;
  final String categoryNumber ;
  final int counter;

  const MealItem({super.key, required this.id, required this.title, required this.imageUrl, required this.salary, required this.time, required this.description, required this.categoryNumber, required this.counter});


  @override
  Widget build(BuildContext context) {
    BorderRadius? borderRadius ;
    if(counter % 2 == 0){
      borderRadius = BorderRadius.only(
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      );
    }else{
      borderRadius = BorderRadius.only(
        topLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      );
    }
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, "detailsScreen",arguments: {
            "name" : title,
            "id" : id,
            "image" : imageUrl,
            "salary" : salary,
            "time" : time,
            "description" : description,
          });
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(

                image: DecorationImage(image: AssetImage(imageUrl),fit: BoxFit.fill),
                borderRadius: borderRadius,
              ),
            ),
            Container(
              child: Text(title,style: TextStyle(color: Colors.white,fontSize: 30,),),
            )
          ],
        ),
      ),
    );
  }
}
