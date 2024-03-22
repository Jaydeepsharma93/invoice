import 'package:flutter/material.dart';
import 'package:invoice/utils/prolist.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}
double price=0;
int qty=0;
class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {

    TextEditingController  txtProduct = TextEditingController();
    TextEditingController  txtPrice = TextEditingController();
    TextEditingController  txtQyt = TextEditingController();
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Product Name : ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  textInputAction: TextInputAction.next,
                  controller: txtProduct,
                  decoration: InputDecoration(
                      hintText: 'Product Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price : ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50,
                        width: 140,
                        child: TextField(
                          textInputAction: TextInputAction.next,
                          controller: txtPrice,
                          decoration: InputDecoration(
                              hintText: 'Price',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Qty :',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50,
                        width: 80,
                        child: TextField(
                          textInputAction: TextInputAction.done,
                          controller: txtQyt,
                          decoration: InputDecoration(
                              hintText: 'Quantity',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      )
                    ],
                  ),
                  Spacer()
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 60,
        width: 200,
        child: FloatingActionButton(
          onPressed: () {
            price = double.parse(txtPrice.text);
            qty = int.parse(txtQyt.text);
            product.add({'Name': txtProduct!.text, 'price': price, 'qty': qty});
            Navigator.pushNamed(context, '/');
            setState(() {

            });
          },
          backgroundColor: Colors.deepPurpleAccent,
          child: Text(
            'Save',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
