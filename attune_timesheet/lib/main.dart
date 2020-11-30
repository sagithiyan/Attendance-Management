import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _DataTableExample createState() => _DataTableExample();
}

class _DataTableExample extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'ATTUNE',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: ListView(children: <Widget>[
            Center(
              child: Text(
                '',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DataTable(
              columns: [
                DataColumn(
                    label: Text('Date',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Hours',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Monday')),
                  DataCell(TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Enter hours'),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text('Tuesday')),
                  DataCell(TextField(
                    decoration:
                        InputDecoration(border: InputBorder.none, hintText: ''),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text('Wednesday')),
                  DataCell(TextField(
                    decoration:
                        InputDecoration(border: InputBorder.none, hintText: ''),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text('Thursday')),
                  DataCell(TextField(
                    decoration:
                        InputDecoration(border: InputBorder.none, hintText: ''),
                  ))
                ]),
                DataRow(cells: [
                  DataCell(Text('Friday')),
                  DataCell(TextField(
                    decoration:
                        InputDecoration(border: InputBorder.none, hintText: ''),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text('Saturday')),
                  DataCell(TextField(
                    decoration:
                        InputDecoration(border: InputBorder.none, hintText: ''),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sunday')),
                  DataCell(TextField(
                    decoration:
                        InputDecoration(border: InputBorder.none, hintText: ''),
                  )),
                ]),
              ],
            ),
          ])),
    );
  }
}
