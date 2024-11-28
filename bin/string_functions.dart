void main() {
  String gfg = "Welcome to Dart Programming !!";
  print(gfg.split(" "));

  String gfg1 = "Welcome2to5Dart7Programming";
  print(gfg1.split(new RegExp(r"[0-9]")));

  String s1 = "dart programming";
  print ("Uppercase String: ${s1.toUpperCase()}");

  String s2 = "Dart PROGRAMMING";
  print ("Lowercase String: ${s2.toLowerCase()}");

  List<String> sort_list = ['one', 'two', 'three', 'four'];
  sort_list.sort();
  print("sorting string list:$sort_list");

  print("SubString of a String: ${s2.substring(5,s2.length)}");

  print("Replace of String: ${gfg.replaceAll("!!","")}");

  print("Check if string is empty using isEmpty property : ${gfg.isEmpty}");

}
