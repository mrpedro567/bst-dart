/**
 * Interface Node
 */
abstract class INode {
  late int key;
  Node? right, left;
}

/**
 * TAD para nó de uma arvore
 */
class Node implements INode{

  /**
   * Dart  não possui nomes como private ou public para definir o escopo
   * O que define o escopo de um dado do TAD é a presença ou não o _ no começo do nome. 
   * int a é public e int _a é private.
   */
  late int _key;
  Node? _right, _left;

  /**
   * Dart permite uma classe possuir um contrutor default(Sem nome) e vários contrutores nomeados
   */

  /**
   * Contructor default p/ Nó sem filhos
   */
  Node(int key){
    this._key = key;
    this._left = null;
    this._right = null;
  }

  /**
   * Contructor com nome p/ nos com filhos
   */
  Node.full(int key, Node? left, Node? right){
    this._key = key;
    this._left = left;
    this._right = right;
  }

  /**
   * Getters 
   */
  Node? get right => this._right;
  Node? get left => this._left;
  int get key => this._key;

  /**
   * Setters
   */
  set right(Node? node) => this._right = node;
  set left(Node? node) => this._left = node;
  set key(int key) => this._key = key;
}