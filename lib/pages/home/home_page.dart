import 'package:digi_android/api/rest_client.dart';
import 'package:digi_android/customView/custom_text.dart';
import 'package:digi_android/models/base_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<BaseModel> getBaseData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final dio = Dio(); // Provide a dio instance

    var client = RestClient(dio);

    //client.getHome();

     client.getHome().then((it) => print(it));
    getBaseData = client.getHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder<BaseModel>(
                future: getBaseData,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                        height: MediaQuery.of(context).size.height - 99,
                        child: Column(
                          children: [


                            Container(
                              height: 200,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: snapshot.data!.news.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 5,
                                              blurRadius: 7,
                                              offset: Offset(
                                                  0, 3), // changes position of shadow
                                            ),
                                          ]),
                                      height: 200,
                                      width: MediaQuery.of(context).size.width - 20,
                                      child: Card(
                                        child: Image.network(
                                            snapshot.data!.news[index].icon,
                                            fit: BoxFit.fill),
                                      ),
                                    );
                                  }),
                            ),
                            Container(
                              margin: EdgeInsets.all(16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText('نمایش همه', 16),
                                  CustomText('جدیدترین موبایل ها', 16)
                                ],
                              ),
                            ),
                            Container(
                              height: 144,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: snapshot.data!.mobile.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(

                                      onTap: () {

                                      //  Navigator.push(context,MaterialPageRoute(builder: (context )=>ProductDetailPage(product: snapshot.data!.mobile[index])));

                                      },

                                      child:  Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                        ),
                                        height: 144,
                                        width: 144,
                                        child: Card(
                                          child: Image.network(
                                              snapshot.data!.mobile[index].icon,
                                              fit: BoxFit.cover),
                                        ),
                                      ),

                                    );
                                  }),
                            ),
                            Container(
                              margin: EdgeInsets.all(16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText('نمایش همه', 16),
                                  CustomText('لوازم آرایشیو بهداشتی ', 16)
                                ],
                              ),
                            ),
                            Container(
                              height: 144,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: snapshot.data!.makeup.length,
                                  itemBuilder: (context, index) {



                                    return GestureDetector(

                                      onTap: () {

                                    //    Navigator.push(context,MaterialPageRoute(builder: (context )=>ProductDetailPage(product: snapshot.data!.makeup[index])));

                                      },

                                      child:  Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                        ),
                                        height: 144,
                                        width: 144,
                                        child: Card(
                                          child: Image.network(
                                              snapshot.data!.makeup[index].icon,
                                              fit: BoxFit.cover),
                                        ),
                                      ),


                                    );
                                  }),
                            ),

                          ],
                        ));
                  } else if (snapshot.hasError) {
                    return Text('Check your connection!!');
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
