import 'dart:convert';
import 'dart:io';
import 'Bst.dart';

void main(){
  var tree = new BinarySearchTree();
  String? line, val;
  
  print("BST \n1. Insert \n2. Remove \n3. Print In Order \n-1. Exit");

  while(line != '-1'){
    line = stdin.readLineSync(encoding: utf8);
    int.parse(line!);

    switch(line){
      case '1': 
        print("Value:");
        val = stdin.readLineSync(encoding: utf8);
        tree.insert(int.parse(val!));
        break;
      case '2': 
        print("Value:");
        val = stdin.readLineSync(encoding: utf8);
        tree.insert(int.parse(val!));
        break;
      case '3': 
        tree.inOrder();
        break;
    }
  }

  // tree.insert(1);
  // tree.insert(10);
  // tree.insert(8);
  // tree.insert(5);
  // tree.insert(3);
  // tree.insert(2);
  // tree.insert(90);

  // tree.inOrder();

  // print("#########");

  // tree.deleteKey(10);
  // tree.inOrder();
}