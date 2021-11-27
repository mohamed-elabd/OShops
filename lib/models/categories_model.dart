// ignore_for_file: prefer_typing_uninitialized_variables

class CategoriesModel
{
  int? status ;
  String? message;
  int? totalRes;
  int? totalPages;
  var storeCategories;


  CategoriesModel.fromJson( Map<String,dynamic> json){
    status = json['status'];
    message = json['message'];
    totalRes = json['totalRes'];
    totalPages = json['totalPages'];
    storeCategories = json['storeCategories'];
  }

}