

//code 1
// import 'package:flutter/material.dart';
//
//
// class ChooseLocation extends StatefulWidget {
// // const ChooseLocation({Key? key}) : super(key: key);
//
//
//   @override
//
//
//   State<ChooseLocation> createState() => _ChooseLocationState();
// }
// class _ChooseLocationState extends State<ChooseLocation> {
//   int counter =0;
//   @override
//   void initState()
//   {
//     super.initState();
//     print('INIT STATE RUN IN CHOOSE LOCATION');
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[200],
//
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurpleAccent,
//         title: Text('CHOOSE LOCATION'),
//           centerTitle: true,
//         elevation: 0,
//       ),
//       body: ElevatedButton(
//         onPressed: (){
//           setState((){
//             counter += 1;
//           });
//         },
//         child: Text('Counter Is:$counter'),
//       ),
//     );
//   }
// }

//code 2
import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}
class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey[200],

      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('CHOOSE LOCATION'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
        setState(() {
        counter += 1;
        });
        },
          child: Text('COUNTER IS : $counter'),
          ),

    );
  }
}