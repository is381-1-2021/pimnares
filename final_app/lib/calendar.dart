import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_app/expense_form.dart';
import 'package:final_app/models/expense_model.dart';
import 'package:final_app/models/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  List<Expense> expenses = List.empty();
  CalendarFormat format = CalendarFormat.week;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  double total = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.calendar_today_sharp),
              onPressed: () {},
            );
          },
        ),
        backgroundColor: Colors.teal[600],
        title: Text("\฿ $total"),
        actions: <Widget>[
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(child: Text('Lorem ipsum')),
              PopupMenuItem(child: Text('dolor sit amet')),
            ];
          })
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          TableCalendar(
            focusedDay: selectedDay,
            firstDay: DateTime(1990),
            lastDay: DateTime(2050),
            calendarFormat: format,
            onFormatChanged: (CalendarFormat _format) {
              setState(() {
                format = _format;
              });
            },
            startingDayOfWeek: StartingDayOfWeek.sunday,
            daysOfWeekVisible: true,
            onDaySelected: (DateTime selectDay, DateTime focusDay) {
              setState(() {
                selectedDay = selectDay;
                focusedDay = focusDay;
              });
              print(focusDay);
            },
            selectedDayPredicate: (DateTime date) {
              return isSameDay(selectedDay, date);
            },
            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              selectedDecoration: BoxDecoration(
                color: Colors.teal[500],
                shape: BoxShape.circle,
              ),
              selectedTextStyle: TextStyle(color: Colors.white),
              todayDecoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: true,
              titleCentered: true,
              formatButtonShowsNext: false,
            ),
          ),
          Expanded(
              child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('expense_list')
                // .where('Date', isEqualTo: selectedDay)
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: Column(
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Text("Loading"),
                    ],
                  ),
                );
              } else
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Card(
                          child: Center(
                            child: ListTile(
                                leading: ConstrainedBox(
                                  constraints: BoxConstraints(
                                      maxHeight: 64,
                                      maxWidth: 64,
                                      minHeight: 44,
                                      minWidth: 44),
                                  child: Image.asset(
                                    snapshot.data!.docs[index]["cate"],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                title: Consumer<ExpenseModel>(
                                  builder: (context, model, child) {
                                    return Text(
                                      '${snapshot.data!.docs[index]["expense"]}',
                                    );
                                  },
                                ),
                                subtitle: Consumer<ExpenseModel>(
                                  builder: (context, model, child) {
                                    return Text(
                                        '\฿ ${snapshot.data!.docs[index]["amount"]}');
                                  },
                                )),
                          ),
                        ),
                      ),
                    );
                  },
                );
            },
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _expenseform(context);
        },
        backgroundColor: Colors.teal[500],
        child: const Icon(Icons.add),
      ),
    );
  }
}

void _expenseform(context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
    backgroundColor: Colors.white,
    context: context,
    isScrollControlled: true,
    builder: (context) => ExpenseForm(),
  );
}
