class productmodel
{
  List<dynamic> products;
  productmodel({required this.products});
  factory productmodel.fromjson(Map<String,dynamic> json)
  {
    return productmodel(products: json["data"]["products"]);
  }
}