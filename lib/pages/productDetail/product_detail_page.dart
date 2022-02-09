

import 'package:digi_android/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {


  final Product product;

  const ProductDetailPage({Key? key , required this.product}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text(widget.product.title),


      ),

      body: Column(
          children: <Widget>[
            Expanded(
              flex: 7,
                child: Text('Hello')
            ),
            Expanded(
              flex: 1,
                child:

               Container(

                 padding: EdgeInsets.all(8.0),
                 child:  Row(

                   children: [

                     ElevatedButton(onPressed: (){},
                         child: Text('افزودن به سبد خرید') ,
                     style: ButtonStyle(

                       //backgroundColor: Color(Colors.pink),

                     ),) ,


                     Column(

                       children: [

                         Text(widget.product.price),
                         Text('قیمت')

                       ],

                     )


                   ],

                 ),
               )

            ),
          ]
      ),



    );
  }
}
