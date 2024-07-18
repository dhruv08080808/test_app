part of 'productt_bloc.dart';

 class ProducttState extends Equatable {
  const ProducttState();
  
  @override
  List<Object> get props => [];
}

 class ProducttInitial extends ProducttState {}
 class Loadingstate extends ProducttEvent{}
class loadedstate extends ProducttEvent{
  final List<ProductModel> productmodel;
   loadedstate(this.productmodel);
  @override
  List<Object> get props => [productmodel];
}
class errorstate extends ProducttEvent{
  final String errormess;
  errorstate(this.errormess);
   @override
  List<Object> get props => [errormess];
}