import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../datafile/model/product_model.dart';

part 'productt_event.dart';
part 'productt_state.dart';

class ProducttBloc extends Bloc<ProducttEvent, ProducttState> {
  ProducttBloc() : super(ProducttInitial()) {
    on<ProducttEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
