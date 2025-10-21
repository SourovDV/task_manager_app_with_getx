import 'package:get/get.dart';
import 'package:task_manager_app_with_getx/app/modules/home/controller/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>HomeController());
  }

}