import 'package:flutter/material.dart';
import 'package:invoice/utils/prolist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            children:[
            ...List.generate(
              product.length,
              (index) => ListTile(
                leading: IconButton(
                  onPressed: () {

                  },
                  icon: Icon(Icons.edit),
                ),
                title: Text(product[index]['Name'],style: TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
                subtitle: Text('${product[index]['price']}'),
                trailing: IconButton(
                  onPressed:() {
                    setState(() {
                      product.removeAt(index);
                    });
                  },
                  icon: Icon(Icons.delete),
                ),
              ),
            ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/view');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              )
          ]
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addPro');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
