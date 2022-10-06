import 'package:flutter/material.dart';
import 'package:open222/second_page.dart';
import 'package:open222/student.dart';
import 'package:provider/provider.dart';
import 'counter.dart';



class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body:




      ElevatedButton(
        child: Text('Next Page'),
        onPressed: () async {
          final result = await Navigator.pushNamed(
            context,
            '/second',
            arguments: Student('Hong', 15, 20220151),
          ) as Student;
          print('in FirstPage: ${result.name}');
        },
      ),





    );
  }
}




class FirstfulPage extends StatefulWidget {
  const FirstfulPage({Key? key}) : super(key: key);

  @override
  State<FirstfulPage> createState() => _FirstfulPageState();
}

class _FirstfulPageState extends State<FirstfulPage> {
  var cnt;

//const FirstPage({Key? key}) : super(key : key);


  @override
  Widget build(BuildContext context) {
    cnt = Provider.of<Counter>(context, listen: true);
    return Scaffold(
      appBar: AppBar(title: Text('First'),),
      body:


      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ElevatedButton(
              child: Text('Next Page'),
              onPressed: () {
                Navigator.pushNamed(context, '/second',);
              },
            ),
          ),
          Text('${cnt.number}'),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cnt.add();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),


    );
  }
}