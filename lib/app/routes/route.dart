import 'package:get/get.dart';
import 'package:task_manager_app_with_getx/app/modules/home/binding/home_binding.dart';
import 'package:task_manager_app_with_getx/app/modules/home/view/about.dart';
import 'package:task_manager_app_with_getx/app/modules/home/view/home_view.dart';

class AppRoute{
  static final initial_route = '/home';
  static final route = [
   GetPage(name: "/home", page: ()=>HomeView(),binding: HomeBinding()),
    GetPage(name: "/about", page: ()=>About(),binding: HomeBinding())
  ];
}