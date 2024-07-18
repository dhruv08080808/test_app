import 'package:equatable/equatable.dart';

abstract class Counterevent extends Equatable{
  const Counterevent();
  @override
  List<Object> get props=> [];


   }
  class Incrementevent extends Counterevent{

  }
  class decrementevent extends Counterevent{

  }