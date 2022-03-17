import './Node.dart';
import './TAD.dart';

class BinarySearchTree extends TAD{
  Node? _root;

  /**
   * Contructor p/ Arvore vazia
   */
  BinarySearchTree(){
    this.id = null;
    this._root = null;
  }

  /**
   * Constructor p/ arvore com nós
   */
  BinarySearchTree.w_root(int key){
    super.id = key;
    this._root = new Node(key);
  }

  /**
   * Metodo privado para inserção.
   * Caso seja acessado diretamente, é possivel quebrar a regra da BST passando uma folha como root por exemplo
   */
  Node _insertNode(Node? root, int key){
    /**
     * Insert em uma arvore vazia
     */
    if(root == null){
      root = new Node(key);
      return root;
    }

    /**
     * Insere na Arvore recursivamente
     */
    if(key < root.key){
      root.left = _insertNode(root.left, key);
      
    }
    else if(key > root.key){
      root.right = _insertNode(root.right, key);
      
    }

    return root;
  }

  
  void _inOrder(Node? root){
    if(root != null){
      _inOrder(root.left);
      print(root.key.toString());
      _inOrder(root.right);
    }
  }

  void _preOrder(Node? root){
    if(root != null){
      print(root.key.toString());
      _preOrder(root.left);
      _preOrder(root.right);
    }
  }

  void _postOrder(Node? root){
    if(root != null){
      _postOrder(root.left);
      _postOrder(root.right);
      print(root.key.toString());
    }
  }

  // *****Métodos Publicos*****

  /**
   * Insere um nó com valor na arvore
   */
  void insert(int key){
    this._root = _insertNode(this._root, key);
  }

  void inOrder(){
    this._inOrder(this._root);
  }

  void preOrder(){
    this._preOrder(this._root);
  }

  void postOrder(){
    this._postOrder(this._root);
  }

  /**
   * Getters and Setters 
   */
  Node? get root{
    return this._root;
  }

  void set root(Node? root){
    this._root = root;
  }
}