import 'dart:isolate';

void main ()
{
  startComputing();
}

void startComputing() async {
  ReceivePort receivePort = new ReceivePort();
  Data data = new Data();
  data.iterationCount = 1000000;
  data.sendPort = receivePort.sendPort;
  await Isolate.spawn(complexTask, data);
  receivePort.listen((total) {
    print("total:$total");
  });
}

void complexTask (Data data) {
  var total = 0.0;
  for(int i=0; i< data.iterationCount; i++) {
    total = total+i;
  }
  data.sendPort?.send(total);
}

class Data {
  int iterationCount = 1;
  SendPort ?sendPort;

 set setIterationCount (int count) {
  this.iterationCount = count;
 }

  set setSendPort (SendPort sendPort) {
  this.sendPort = sendPort;
 }

}
