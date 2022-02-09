

import 'package:digi_android/api/rest_client.dart';
import 'package:digi_android/models/base_category_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  late Future<BaseCategoryModel> getCategories;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    final dio = Dio(); // Provide a dio instance

    var client = RestClient(dio);

    getCategories = client.getCategories();

    client.getCategories().then((it) => print(it));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body:FutureBuilder<BaseCategoryModel>(

        future: getCategories,
        builder: (context , snapshot) {

          if(snapshot.hasData) {

            return Container(

              height: MediaQuery.of(context).size.height-150,

              child: ListView.builder(
                  itemCount: snapshot.data!.categories.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context , index) {


                return Card(
                  elevation: 8.0,
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    height: 190,


                    child:
                    FittedBox(
                      child:  Image.network(snapshot.data!.categories[index].icon ,height: 170, ),
                      fit: BoxFit.fill,
                    ),


                  ),


                );

              }),

            );


          }else {
            return new CircularProgressIndicator();
          }

        },


      ),

    );
  }
}
