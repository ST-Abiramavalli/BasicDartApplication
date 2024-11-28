import 'package:basic_dart_application/basic_dart_application.dart' as basic_dart_application;

// Main function
main() {
//*************** Combine list using addAll() *********************
List gfg1 = ['Welcome','to'];
List gfg2 = ['Dart Programming'];
var list1 = gfg1;
list1.addAll(gfg2);
print("Combine list using addAll method: $list1");

//***************** Combine list using expand() **************************

List v1 = ["Combine"];
List v2 = ["List using"];
List v3 = ["expand method"];
var result = [v1,v2,v3].expand((element) => element).toList();
print(result);

//***************** Combine list using + Operator **************************

List l1 = ["Combine"];
List l2 = ["List using"];
List l3 = ["+ Operator"];
var result1 = l1+l2+l3;
print(result1);

//***************** Combine list using spread operator  **************************

List s1 = ["Combine"];
List s2 = ["List using"];
List s3 = ["spread operator"];
var result2 = [...s1,...s2,...s3];
print(result2);

}

