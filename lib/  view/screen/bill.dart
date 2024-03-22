import 'package:flutter/material.dart';
import 'package:invoice/utils/prolist.dart';

class ViewPri extends StatefulWidget {
  const ViewPri({super.key});

  @override
  State<ViewPri> createState() => _ViewPriState();
}

class _ViewPriState extends State<ViewPri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'Invoice Generator',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Text('Product Name',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),),
                    Spacer(),
                    Text('Price',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),),
                    Spacer(),
                    Text('Qty',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
              ),
              ...List.generate(product.length, (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical:5),
                child: Row(
                children: [
                  Text(product[index]['Name'],style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),),
                  Spacer(),
                  Text('${product[index]['price']}',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),),
                  Spacer(),
                  Text('${product[index]['qty']}',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),),
                ],
                          ),
              )
            ),
          ]
          ),
        ),
      ),
    );
  }
}
