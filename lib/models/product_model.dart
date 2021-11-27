
// ignore_for_file: file_names, prefer_typing_uninitialized_variables

class ProductModel{
  int? status ;
  String? message;
  int? totalRes;
  int? totalPages;
  var allProducts;


  ProductModel.fromJson( Map<String,dynamic> json){
    status = json['status'];
    message = json['message'];
    totalRes = json['totalRes'];
    totalPages = json['totalPages'];
    allProducts = json['allProducts'];
  }
}