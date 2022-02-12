import 'package:flutter/material.dart';
import 'package:testing_app/Models/AllDrivers.dart';
import 'package:testing_app/services/ApiManager.dart';

class InsertTransaction extends StatefulWidget {
  const InsertTransaction({Key? key}) : super(key: key);

  @override
  _InsertTransactionState createState() => _InsertTransactionState();
}

class _InsertTransactionState extends State<InsertTransaction> {
  ApiManager apiManager = ApiManager();

  @override
  void initState() {
    apiManager.getAllDrivers().then((value) {
      if (value.success == true) {
        List<AllDrivers> allDrivers = [];
        allDrivers.add(value);
        for (var i in allDrivers) {
          i.data![i].driverName;
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
                    value: "App",
                    child: Center(child: Text("App")),
                  )
                ],
                onChanged: (String? value) {},
                hint: Text("Driver Name"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
