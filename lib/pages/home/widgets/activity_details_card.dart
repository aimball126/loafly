import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';
import 'package:firebase_database/firebase_database.dart';

class PreadPackage {
  final String icon;
  final String value;
  final String quantity;
  final String value2;
  final String delivery;
  final String data;
  final String amount;
  final double price;

  PreadPackage({
    required this.icon,
    required this.value,
    required this.quantity,
    required this.value2,
    required this.delivery,
    required this.data,
    required this.amount,
    required this.price,
  });

  factory PreadPackage.fromSnapshot(DataSnapshot snapshot) {
    final data = snapshot.value as Map<dynamic, dynamic>;
    return PreadPackage(
      icon: data['icon'],
      value: data['value'],
      quantity: data['quantity'],
      value2: data['value2'],
      delivery: data['delivery'],
      data: data['data'],
      amount: data['amount'],
      price: data['price'].toDouble(),
    );
  }
}


 class ActivityDetailsCard extends StatelessWidget {
  ActivityDetailsCard({Key? key}) : super(key: key);

  final DatabaseReference _databaseReference =
      FirebaseDatabase.instance.reference().child('PreadPackages');

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DatabaseEvent>(
      future: _databaseReference.once(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final dataSnapshot = snapshot.data!.snapshot;
          final data = dataSnapshot.value as Map<dynamic, dynamic>;
          final breadDetails = data.entries
              .map((entry) => PreadPackage.fromSnapshot(dataSnapshot.child(entry.key)))
              .toList();

          return ListView.builder(
            itemCount: breadDetails.length,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, i) {
              return Column(
                children: [
                  if (i == 0)
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: [
                          Text(
                            "عرض المنتجات",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                        ],
                      ),
                    ),
                  CustomCard(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 4),
                              child: Image.asset(
                                breadDetails[i].icon,
                                width: 50,
                                height: 50,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 4),
                              child: Text(
                                breadDetails[i].value,
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Rest of your code
                      ],
                    ),
                  ),
                  const SizedBox(height: 12.0),
                ],
              );
            },
          );
        } else if (snapshot.hasError) {
          return const Text('Error loading data from Firebase');
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
