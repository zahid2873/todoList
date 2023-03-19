import 'package:flutter/material.dart';
import 'package:todo/style.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  List toDoList = [];
  String item="";

  MyInputOnChnage(content){
    setState(() {
      item = content;
    });
  }

  AddItem(){
    setState(() {
      toDoList.add({'item':item});
    });
  }
  RemoveItem(index){
    setState(() {
      toDoList.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo List"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            Expanded(flex: 10, child:Row(
              children: [
                Expanded(flex: 70, child: TextFormField(
                  decoration: AppTextFormStyle("Text"),
                  onChanged: (content){MyInputOnChnage(content);},
                )),
                SizedBox(width: 5,),
                Expanded(flex: 30, child: ElevatedButton(style:AppButtonStyel(), onPressed: (){AddItem();}, child: Text("ADD"))),
              ],
            )),
            Expanded(flex: 90, child: ListView.builder(
                itemCount: toDoList.length,
                itemBuilder: (context,index){
                  return Card(
                    child: AppSizeBox50(
                      Row(
                        children: [
                          Expanded(flex:80, child: Text(toDoList[index]['item'].toString())),
                          Expanded(flex:20, child: TextButton(onPressed: (){RemoveItem(index);}, child: Icon(Icons.delete))),
                        ],
                      )
                    ),
                  );
                })),
          ],
        ),
      ),
    );
  }
}
