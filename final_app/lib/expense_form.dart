import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_app/models/expense_model.dart';
import 'package:flutter/material.dart';

import 'package:final_app/controllers/expense_controller.dart';
import 'models/expense_model.dart';

class ExpenseForm extends StatefulWidget {
  @override
  _ExpenseFormState createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  List<Expense> expenses = List.empty();

  final _formKey = GlobalKey<FormState>();
  var expenseTextController = TextEditingController();
  var amountTextController = TextEditingController();
  // String _expense = '';
  // int _amount = 00;

  String? selectedCate;
  int selectedIndex = -1;
  List cate = [
    'assets/images/coffee.png',
    'assets/images/cloth.png',
    'assets/images/gas.png',
    'assets/images/groceries.png',
    'assets/images/investment.png',
    'assets/images/mortgage.png',
    'assets/images/travel.png'
  ];

  // void initState() {
  //   super.initState();
  //   widget.controller.onSync.listen(
  //     (bool synState) => setState(() => isLoading = synState),
  //   );
  // }

  // void _getExpense() async {
  //   var newExpenses = await widget.controller.fetchExpenses();

  //   setState(() => expenses = newExpenses);
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
          height: MediaQuery.of(context).size.height * .60,
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('Update Expense', style: TextStyle(fontSize: 30)),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.cancel,
                            color: Colors.red[300], size: 25))
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 3),
                  height: 50,
                  child: ListView.builder(
                    itemCount: cate.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(onTap: () {
                      setState(() {
                        selectedCate = cate[index];
                        selectedIndex = index;
                      });
                    },
                    
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(8),
                        color: index == selectedIndex
                        ? Colors.teal[100] : Colors.transparent
                      ),
                    child: Image.asset(cate[index],
                    width: 50,),
                    ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Expense for', style: TextStyle(fontSize: 15)),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            borderSide: BorderSide(
                              color: Colors.teal,
                            )),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                        hintText: 'ex. Grocery shopping'),
                    controller: expenseTextController,
                    validator: (expenseTextController) {
                      if (expenseTextController == null ||
                          expenseTextController.isEmpty) {
                        return 'Please enter your expense list.';
                      }
                    },
                    // onSaved: (value) {
                    //   _expense = value!;
                    // },
                    //initialValue: context.read<ExpenseForm>().toString(),
                    autofocus: true,
                    //controller: _newMediaLinkAddressController,
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('Amount (฿)', style: TextStyle(fontSize: 15)),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            borderSide: BorderSide(
                              color: Colors.teal,
                            )),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                        hintText: '00'),
                    controller: amountTextController,
                    validator: (amountTextController) {
                      if (amountTextController == null ||
                          amountTextController.isEmpty) {
                        return 'Please enter your expense amount.';
                      }
                      try {
                        if (int.parse(amountTextController) < 0) {
                          return 'Please enter number.';
                        }
                      } catch (e) {
                        return 'Please enter number only';
                      }
                    },
                    // onSaved: (value) {
                    //   _amount = int.parse(value!);
                    // },
                    //initialValue: context.read<ExpenseForm>().toString(),
                    autofocus: true,
                    //controller: _newMediaLinkAddressController,
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    child: Text('Update', style: TextStyle(fontSize: 15),),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      primary: Colors.white,
                      backgroundColor: Colors.teal[500],
                      onSurface: Colors.grey,
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        // context.read<Expense>().expense = _expense;
                        // context.read<Expense>().amount = _amount;

                        Map<String, dynamic> value = {
                          "expense": expenseTextController.text,
                          "amount": double.parse(amountTextController.text),
                          "cate": selectedCate
                        };

                        FirebaseFirestore.instance
                            .collection("expense_list")
                            .add(value)
                            .then((value) => print("successful"))
                            .catchError((error) => print("$error"));

                        Navigator.pop(context);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
