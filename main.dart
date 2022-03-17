import 'Bst.dart';

void main(){
  var tree = new BinarySearchTree();

  tree.insert(1);
  tree.insert(10);
  tree.insert(8);
  tree.insert(5);
  tree.insert(3);
  tree.insert(2);
  tree.insert(90);

  tree.inOrder();

  print("#########");

  tree.deleteKey(10);
  tree.inOrder();
}