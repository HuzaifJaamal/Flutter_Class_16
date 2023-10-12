import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  // This is making the "TextField" controller instant:
  TextEditingController friendListController = TextEditingController();

  int counter = 0;
  
  bool isZero = true;

  changeValue(){
    setState(() {
      isZero = !isZero;
    });
  }

  addvalue(){
    setState(() {
      counter++;
    });
  }

  addItem(){
    setState(() {
      // There is we add into the List by using the "TextField" controller.
      friendList.add(friendListController.text);
      // This is clear the "TextField".
      friendListController.clear();
    });
  }

  // In that we make it our own Parameter.
  removeItem({friendListParameter}){
    setState(() {
      // There is we remove from the List by using the parameter.
      friendList.removeAt(friendListParameter);
    });
  }
  List friendList = ["Bilal", "Taber", "Owais", "Ali"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        ElevatedButton(onPressed: (){
            addItem();
        }, 
        child: Text("Add Item"),
        ),
        // ElevatedButton(onPressed: (){
        //     removeItem();
        // },
        // child: Text("Remove Item"),
        // ),
      ],

      // The "TextField" give to input form the key-pad feature.
      title: TextField(
        // For calling the "TextField " controller function by using the controller: then give our controller name. 
        controller: friendListController,
      ),
      ),
      body: SafeArea(

        child: ListView.builder(
          itemCount: friendList.length,
          itemBuilder: (context, index){
            return Container(
              margin: EdgeInsets.only(bottom: 2),
              // The "ListTile" Widget take the size 
              child: ListTile(
                tileColor: Colors.grey,
                title: Text(friendList[index]),
                trailing: IconButton (
                  onPressed: (){
                    // We pass the parameter to the repective index.
                    removeItem(friendListParameter: index);
                  },
                  icon: Icon(
                    Icons.delete,
                    ),
                ),
              ),
            );
          }
          ),
        
        
        
        //// The "ListView" has its own scrolling properties.
        // ListView(
        //   children: [
        //     Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //   ],
        // ),
        
        
        
        
        //  Column(
        //   children: [
        //     Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //   ],
        // )
        ),
    );
  }
}