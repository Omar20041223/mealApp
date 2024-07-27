import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
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
        title: Text(data["name"]),
        iconTheme: IconThemeData(
            color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage(data["image"]),fit: BoxFit.fill)
              ),
            ),
            SizedBox(height: 20,),
            Text("The name is ${data["name"]}",style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            Text("Time is ${data["time"]}m",style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            Text("Salary is ${data["salary"]}\$",style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            Text("Description is ( ${data["description"]} )",style: TextStyle(fontSize: 30),),


          ],
        ),
      ),

    );
  }
}
