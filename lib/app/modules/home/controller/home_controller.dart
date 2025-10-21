import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  final TextEditingController data = TextEditingController();

  List addData =[].obs;

  void addButton(){
    if(data.text.isNotEmpty){
      print(data.text);
      addData.add(data.text);
      data.clear();
    }



  }

}