import 'package:flutter/material.dart';
class CategoryItem extends StatelessWidget {
  final String name;
  final String image;
  final String id;
  final BorderRadius borderRadius;

  const CategoryItem({super.key, required this.name, required this.image, required this.id,required this.borderRadius});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, "mealScreen",arguments: {
            "name" : name,
            "id" : id,
            "image" : image
          });
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(

                image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill),
                borderRadius: borderRadius,
              ),
            ),
            Container(
              child: Text(name,style: TextStyle(color: Colors.white,fontSize: 30,fontStyle: FontStyle.italic),),
            )
          ],
        ),
      ),
    );
  }
}
