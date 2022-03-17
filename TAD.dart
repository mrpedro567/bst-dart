import 'dart:developer';

class TAD {
  int? _id;

  @override
  noSuchMethod(Invocation invocation){
    log(invocation.toString());
    super.noSuchMethod(invocation);
  }

  int? get id => this._id;
  set id(int? value) => this._id = value;
}