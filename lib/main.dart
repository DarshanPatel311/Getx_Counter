import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){

  runApp(const MyApp());
}


class CounterController extends GetxController{
  var count = 0.obs;

  void increment(){
count++;

  }


}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {



  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  final CounterController counterController=Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App for Getx"),
      ),
      body: Center(
        child: Obx(()=>Text('Count :${counterController.count}',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,

        ),)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

