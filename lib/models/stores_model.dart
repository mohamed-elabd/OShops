
// ignore_for_file: file_names, prefer_typing_uninitialized_variables

class StoresModel{
  int? status ;
  int? totalRes;
  int? totalPages;
  var allStores;


  StoresModel.fromJson( Map<String,dynamic> json){
    status = json['status'];
    totalRes = json['totalRes'];
    totalPages = json['totalPages'];
    allStores = json['allStores'];
  }
}