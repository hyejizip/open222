import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'student.dart';
import 'counter.dart';


class SecondPage extends StatelessWidget {
  final String data;
  SecondPage({required this.data});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Student;
    print('in SecondPage: ${args.name}');

    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body:



      Row(
        children: [
          Container(
            child: ElevatedButton(
              child: Text('Previous Page'),
              onPressed: (){
                final args_sec = Student('Dong', 11, 22);
                Navigator.pop(context, args_sec);
              },
            ),
          ),
        ],
      ),





    );
  }
}





class SecondfulPage extends StatefulWidget {
  const SecondfulPage({Key? key}) : super(key: key);

  @override
  State<SecondfulPage> createState() => _SecondfulPageState();
}

class _SecondfulPageState extends State<SecondfulPage> {
  var cnt;


  @override
  Widget build(BuildContext context){
    cnt = Provider.of<Counter>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: Text('Second'),),

      body:


      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ElevatedButton(
              child: Text('Previous Page'),
              onPressed: () {
                Navigator.pop(context,);
              },
            ),
          ),
          Consumer<Counter>(
            builder: (context, value, child){
              return Text('${cnt.number}');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          cnt.add();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),

    );
  }
}
