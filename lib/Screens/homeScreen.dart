import 'package:flutter/material.dart';
import 'package:meal/data.dart';
import 'package:meal/widgets/CategoriesItems.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage("images/bremer-logo.jpg"),
                fit: BoxFit.fill
            ),
          ),
        ),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        BorderRadius? borderRadius ;
        if(index % 2 == 0){
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
        return CategoryItem(name: "${CATEGORIES[index].name}", image: CATEGORIES[index].image, id: CATEGORIES[index].id, borderRadius: borderRadius!);
      },itemCount: CATEGORIES.length,)
    );
  }
}
