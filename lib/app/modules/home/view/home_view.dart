import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_app_with_getx/app/modules/home/controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Form(
                    child: TextFormField(
                      controller: controller.data,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () => controller.addButton(),
                    child: Text("Add"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Obx(()=>ListView.builder(
                  itemCount: controller.addData.length,
                   itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        tileColor: Colors.grey,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      title: Text(controller.addData[index].toString(),style: TextStyle(color: Colors.white),),
                        trailing: ElevatedButton(onPressed: ()=>controller.addData.removeAt(index), child: Icon(Icons.delete)),
                      ),
                    );
                    },
              )),
            )

          ]
        ),
      ),
    );
  }
}
