import 'package:test_app/datafile/model/employee_model.dart';
import 'package:test_app/datafile/model/product_model.dart';

class datafile{
  static List<employee> employeestatus=[
    employee("ABC", "SOFTWARE DEVELOPER", '25'),
    employee("ABDEF", "POWER BI", "34"),
  ];
  static List<ProductModel> productlist=[

  ProductModel('BOOKS', '0',300),
  ProductModel('STATIONERY', '0',360),
  ProductModel('PEN', '0',370),
  ProductModel('PENCIL', '0',500),
  ProductModel('RD SHARMA', '0',390),
  ];

}