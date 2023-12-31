import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Orderstatus extends StatefulWidget {
  const Orderstatus({Key? key}) : super(key: key);

  @override
  _OrderstatusState createState() => _OrderstatusState();
}

class _OrderstatusState extends State<Orderstatus> {
  int _selectedOption = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.deepPurple[800],
          size: 30,
        ),
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LOGO",
                style: TextStyle(
                  color: Colors.deepPurple[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.refresh_outlined,
                color: Colors.deepPurple[800],
              ),
              SizedBox(width: 10,)
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 60,),
          Center(
            child: Text(
              "Order Status",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 0,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
              ),
              Text('Mobile No'),
              SizedBox(width: 24.0),
              Radio(
                value: 1,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
              ),
              Text('Order No'),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 20,
            width: MediaQuery.of(context).size.width / 1.2,
            child: TextField(
              decoration: InputDecoration(suffixIcon: Container(decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20))),child: Icon(Icons.search)),
                enabledBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple),borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("The Order Status is pending")

          ,SizedBox(height: 30,),
        ],
      ),
      // bottomNavigationBar: Container(
      //   color: Colors.deepPurple,
      //   child: BottomNavigationBar(
      //     backgroundColor: Colors.deepPurple,
      //     selectedItemColor: Colors.white,
      //     unselectedItemColor: Colors.white.withOpacity(0.6),
      //     currentIndex: _selectedIndex,
      //     onTap: _onItemTapped,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.ac_unit),
      //         label: 'Complaint',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.notification_important_rounded),
      //         label: 'pending',
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
