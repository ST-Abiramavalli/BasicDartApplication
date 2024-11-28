void main() {
 int geek = 10;
  try{
    var geek2 = geek ~/ 0;
    print(geek2);
  }
  on Exception catch(e) {
    print("on block Exception $e");
  }
  catch(e){
    print("catch block Exception $e");
  }
  finally {
    print("Code is at end finally block");
  }
}
