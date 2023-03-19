
import 'package:flutter/material.dart';

InputDecoration AppTextFormStyle(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    labelText: label,
    border: OutlineInputBorder(),
  );
}

ButtonStyle AppButtonStyel(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(15),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),

  );
}

SizedBox AppSizeBox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: child,
      ),
    );
}