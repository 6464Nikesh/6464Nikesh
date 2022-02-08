import 'package:flutter/material.dart';
import 'package:testing_app/Models/TransactionResponseModel.dart';
import 'package:testing_app/services/api_service.dart';
import 'package:intl/intl.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Future<TransactionResponseModel> _transaction;

  @override
  void initState() {
    _transaction = API_Manager().getTrancations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<TransactionResponseModel>(
          future: _transaction,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data?.data?.length,
                  itemBuilder: (context, index) {
                    var singleTransaction = snapshot.data?.data?[index];
                    String dateTime = singleTransaction!.createdAt.toString();
                    String dateWithT = dateTime.substring(0, 10);
                    DateTime date = DateTime.parse(dateWithT);
                    return Container(
                      child: Center(
                        child: Card(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  width: 70,
                                  height: 70,
                                  decoration:
                                      BoxDecoration(color: Color(0xff2d2f41)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '${DateFormat('dd').format(date)}',
                                        style: TextStyle(
                                            fontSize: 28,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '${DateFormat('MMMM').format(date)}',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
