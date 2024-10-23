import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text('Flutter Basics'),

        ),

      /*Center-Widget
        Aligns its child widget to the center of the available space on the screen.
      */
       
      /*body: Center(
          child: Container(
            width: 200,
            height: 100,
            color: Colors.blueGrey,
            child: Center(child: Text('This is center of Container', style: TextStyle(color: Colors.white),)),
          ),
        )*/

       /*Container?
        It is a widget that combines common painting, positioning, and sizing of the child widgets.
        It is also a class to store one or more widgets and position them on the screen according to our needs.
        Box for storing contents.
        Allows attributes to user for decorating its child widget such as margin(separates widget with other contents)
       */

        /*body: Center(    //Container at center
          child: Container(
            width: 100,
            height: 100,
            color: Colors.tealAccent,
            child: Text('Hello DevOps'),
          ),
        )*/

      /*Text-Widget
       Displays a string of text with single style.
       String might break across multiple lines and might all be displayed on the same line depending on layout constraints.
       Multiple styles in single text ~ Text Spanning*/

        /*body: Text('Hello Flutter Devs', style: TextStyle(
          fontSize: 25,
          color: Colors.pink,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.tealAccent,
        ),),*/

      //Button Widget
      // Graphical control element that provides user to trigger an event.

      //Text Button
        /*body: TextButton(
          child: Text('Click Here!'),
          onPressed: (){     //Tap
            print('Button Tapped!');
          },
          onLongPress: (){     //Long Press
            print('Long Pressed!');
          },
        )
        */

      //Elevated Button
      /*body: ElevatedButton(
        child: Text('Click Here!'),
        onPressed: (){
          print('Button Preseed!');
        },
      ),
      */

      //Outlined Button
      /*body: OutlinedButton(
         child: Text('Click Here!'),
        onPressed: (){
           print('Button Pressed!');
        },
      ),*/

      //Adding images
      /*body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: Image.asset('assets/images/img.png'),
        ),
      ),*/

      //Rows and Columns
      // Row: arrange widget HORIZONTALLY
      // Column: arrange widget VERTICALLY

      body: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,  //Vertical
          crossAxisAlignment: CrossAxisAlignment.center,  //Horizontal
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,  //Vertical
              children: [
                Column(
                  children: [
                    ElevatedButton(onPressed: (){
                      print('Happy');
                    }, child: Text('Button 1')),
                    ElevatedButton(onPressed: (){
                         print('Birthday');
                    }, child: Text('Button 2'))
                  ],
                ),
                Text('A', style: TextStyle(fontSize: 25),),
                Text('B', style: TextStyle(fontSize: 25),),
                Text('C', style: TextStyle(fontSize: 25),),
                Text('D', style: TextStyle(fontSize: 25),),
              ],
            ),
            Text('A', style: TextStyle(fontSize: 25),),
            Text('B', style: TextStyle(fontSize: 25),),
            Text('C', style: TextStyle(fontSize: 25),),
            Text('D', style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: (){
              print('Happy');
            }, child: Text('Click Here!'))

          ],
        ),
      ),

      /*
      body: Row(
        mainAxisAlignment: ,    //Horizontal
        crossAxisAlignment: ,   //Vertical
        children: [
          Text('A', style: TextStyle(fontSize: 25),),
          Text('B', style: TextStyle(fontSize: 25),),
          Text('C', style: TextStyle(fontSize: 25),),
          Text('D', style: TextStyle(fontSize: 25),),
          ElevatedButton(onPressed: (){
            print('Happy');
          }, child: Text('Click Here!'))

        ],
      ),

       */



    );
  }
}