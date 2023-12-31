import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddClients extends StatefulWidget {
  const AddClients({Key? key}) : super(key: key);

  @override
  State<AddClients> createState() => _AddClientsState();
}

class _AddClientsState extends State<AddClients> {
  TextEditingController dob = TextEditingController();
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.blue;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.blue),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.refresh_outlined,
                  color: Colors.blue,
                )),
          )
        ],
        title: Center(
            child: Column(
              children: const [
                Text('LOGO', style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),),
                Text('Welcome Back Deepesh !',
                  style: TextStyle(fontSize: 18, color: Colors.blue),)
              ],
            )),
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 20),
                child: Text(
                  'Add Clients',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue[900]),
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Branch'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 15),
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue)),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(bottom: 10),
                        prefix: SizedBox(
                          width: 10,
                        ),
                        hintText: 'Select',
                      ), items: [
                      DropdownMenuItem(child: Text('select'))
                    ],
                      onChanged: (value) {  },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.only(),
                    hintText: 'Name' ,
                    prefixIcon: Icon(Icons.star,color: Colors.red,size: 15,)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue)),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 10),
                      hintText: 'House No.' ,
                      prefixIcon: Icon(Icons.star,color: Colors.red,size: 15,)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                      hintText: 'Address' ,
                      prefixIcon: Icon(Icons.star,color: Colors.red,size: 15,)
                  ),
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star,color: Colors.red,size: 15,),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Area'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 15,right: 25),
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue)),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(bottom: 10),
                        prefix: SizedBox(
                          width: 10,
                        ),
                        hintText: 'Select',
                      ), items: [
                      DropdownMenuItem(child: Text('select'))
                    ],
                      onChanged: (value) {  },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Locality'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 15),
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue)),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(bottom: 10),
                        prefix: SizedBox(
                          width: 10,
                        ),
                        hintText: 'Select',
                      ), items: [
                      DropdownMenuItem(child: Text('select'))
                    ],
                      onChanged: (value) {  },
                    ),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(Icons.star,color: Colors.red,size: 15,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text('Mobile No.'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,bottom: 10,right: 15),
                  child: Container(
                    height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue)),
                      child: TextFormField(
                        decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide.none)),
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 12,
                      child: Image.asset('Assets/Images/whatsapp-icon-logo-8CA4FB831E-seeklogo.com.png'),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue)),
                      child: TextFormField(
                        decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide.none)),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                  setState(() {
                  isChecked = value!;
                  });
                  },
                  ),
                  Text('Same or Above')
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Alternate No.'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,bottom: 10,right: 15),
                  child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue)),
                      child: TextFormField(
                        decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide.none)),
                      )),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Email Id'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,bottom: 10,right: 15),
                  child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue)),
                      child: TextFormField(
                        decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide.none)),
                      )),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Birthday'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,bottom: 10,right: 15),
                  child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(),
                            border: OutlineInputBorder(borderSide: BorderSide.none)),
                        textAlign: TextAlign.center,
                        controller: dob,
                        onTap: () async {
                          FocusScope.of(context).requestFocus(FocusNode());
                          var pickedDate = await showDatePicker(
                              builder: (context, child) {
                                return Theme(data: ThemeData().copyWith(
                                  colorScheme: ColorScheme.light(
                                    primary: Colors.blue,
                                    onPrimary: Colors.white,
                                    surface: Colors.blue,
                                    onSurface: Colors.black,
                                  ),
                                  dialogBackgroundColor:Colors.blueGrey.shade50,
                                ), child: child!);

                              },
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1960,01,01),
                              lastDate: DateTime(2030,12,31));
                          dob.text = DateFormat('dd-MM-yyyy').format(pickedDate!);
                        },
                      )),
                )
              ],
    ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text('Profession'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40,bottom: 10,right: 15),
                child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue)),
                    child: TextFormField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide.none)),
                    )),
            )
            ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(Icons.star,color: Colors.red,size: 15,),
                ),
                Text('Customer Type'),
                Padding(
                  padding: const EdgeInsets.only(left: 30,bottom: 10,right: 15),
                  child:Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue)),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.only(bottom: 10),
                        prefix: SizedBox(
                          width: 10,
                        ),
                        hintText: 'Select',
                        hintStyle: TextStyle(fontWeight: FontWeight.normal)
                      ), items: [
                      DropdownMenuItem(child: Text('select'))
                    ],
                      onChanged: (value) {  },
                    ),
                  ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(Icons.star,color: Colors.red,size: 15,),
                ),
                Text('Price Level'),
                Padding(
                  padding: const EdgeInsets.only(left: 55,bottom: 10,right: 15),
                  child:Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue)),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.only(bottom: 10),
                          prefix: SizedBox(
                            width: 10,
                          ),
                          hintText: 'Select',
                          hintStyle: TextStyle(fontWeight: FontWeight.normal)
                      ), items: [
                      DropdownMenuItem(child: Text('select'))
                    ],
                      onChanged: (value) {  },
                    ),
                  ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(Icons.star,color: Colors.red,size: 15,),
                ),
                Text('Staff'),
                Padding(
                  padding: const EdgeInsets.only(left: 90,bottom: 10,right: 15),
                  child:Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue)),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.only(bottom: 10),
                          prefix: SizedBox(
                            width: 10,
                          ),
                          hintText: 'Select',
                          hintStyle: TextStyle(fontWeight: FontWeight.normal)
                      ), items: [
                      DropdownMenuItem(child: Text('select'))
                    ],
                      onChanged: (value) {  },
                    ),
                  ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('GPS'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 103,bottom: 10),
                  child: Container(
                      height: 40,
                      width: 94,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Fetch'),
                          ),
                          IconButton(onPressed: () {

                          }, icon: Icon(CupertinoIcons.location_solid,color: Colors.green,))
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10,right: 15),
                  child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(),
                            border: InputBorder.none),
                      )),
                ),

              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Picking Day'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50,bottom: 10,right: 15),
                  child:Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue)),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.only(bottom: 10),
                          prefix: SizedBox(
                            width: 10,
                          ),
                          hintText: 'Select',
                          hintStyle: TextStyle(fontWeight: FontWeight.normal)
                      ), items: [
                      DropdownMenuItem(child: Text('select'))
                    ],
                      onChanged: (value) {  },
                    ),
                  ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Picking Time'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50,bottom: 10,right: 15),
                  child:Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue)),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.only(bottom: 10),
                          prefix: SizedBox(
                            width: 10,
                          ),
                          hintText: 'Select',
                          hintStyle: TextStyle(fontWeight: FontWeight.normal)
                      ), items: [
                      DropdownMenuItem(child: Text('select'))
                    ],
                      onChanged: (value) {  },
                    ),
                  ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Credit Limit'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,bottom: 10,right: 15),
                  child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue)),
                      child: TextFormField(
                        decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide.none)),
                      )),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: SizedBox(
                    width: 120,
                      child: Text('No. Of Max Unpaid Invoices')),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,bottom: 10,right: 15),
                  child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue)),
                      child: TextFormField(
                        decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide.none)),
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                    },
                    child: Text('Save',style: TextStyle(color: Colors.white),)),
              ),
            ),
    ]
      ),
      )
    );
  }
}
