import 'package:flutter/material.dart';
import 'package:meal/data.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/widgets/CategoriesItems.dart';
import 'package:meal/widgets/Meals.dart';
class MealScreen extends StatelessWidget {
  const MealScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    List<Meal> filteredData = DUMMY_MEAL.where((element) {
      return element.categoryNumber.contains(data["id"]);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(data["image"]),
                fit: BoxFit.fill
            ),
          ),
        ),
        backgroundColor: Colors.red,
        title: Text(data["name"],style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return MealItem(id: filteredData[index].id, title: filteredData[index].title, imageUrl: filteredData[index].imageUrl, salary: filteredData[index].salary, time: filteredData[index].time, description: filteredData[index].description, categoryNumber: filteredData[index].categoryNumber, counter: index,);
      },itemCount: filteredData.length,),
    );
  }
}
