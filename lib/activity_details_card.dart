import 'package:flutter/material.dart';
import 'package:flutter_dashboard/custom_card.dart';
import 'package:flutter_dashboard/const.dart';
import 'package:flutter_dashboard/responsive.dart';


class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (!Responsive.isDesktop(context))
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () => scaffoldKey.currentState!.openDrawer(),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.grey,
                    size: 25,
                  ),
                ),
              ),
            ),
          if (!Responsive.isMobile(context))
            Expanded(
              flex: 4,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: cardBackgroundColor,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  hintText: 'Search',
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 21,
                  ),
                ),
              ),
            ),
          if (Responsive.isMobile(context))
            Expanded(
              flex: 4,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: cardBackgroundColor,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  hintText: 'Search',
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 21,
                  ),
                ),
              ),
            ),
          if (Responsive.isMobile(context))
            InkWell(
              onTap: () => scaffoldKey.currentState!.openEndDrawer(),
              child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                child: Image.asset(
                  "assets/images/avatar.png",
                  width: 32,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class BreadModel {
  final String icon;
  final String value;
  final String quantity;
  final String value2;
  final String delivery;
  final String data;
  final String amount;
  final double price;

  const BreadModel({
    required this.icon,
    required this.value,
    required this.quantity,
    required this.value2,
    required this.delivery,
    required this.data,
    required this.amount,
    required this.price,
  });

  static const BreadModel bread1 = BreadModel(
    icon: 'assets/images/Bread.png',
    value: "خبز",
    quantity: "الكمية",
    value2: "5",
    delivery: "الزمن",
    data: "وقت 15-20 دقيقة",
    amount: "المبلغ",
    price: 20.99,
  );

  static const BreadModel bread2 = BreadModel(
    icon: 'assets/images/Brioche.png',
    value: "بريوش",
    quantity: "الكمية",
    value2: "5",
    delivery: "الزمن",
    data: "وقت 15-20 دقيقة",
    amount: "المبلغ",
    price: 25.99,
  );

  static const BreadModel bread3 = BreadModel(
    icon: 'assets/images/Candies.png',
    value: "حلويات",
    quantity: "الكمية",
    value2: "2",
    delivery: "الزمن",
    data: "وقت 15-20 دقيقة",
    amount: "المبلغ",
    price: 25.99,
  );

  static const BreadModel bread4 = BreadModel(
    icon: 'assets/images/Crackers.png',
    value: "المقرمشات",
    quantity: "الكمية",
    value2: "5",
    delivery: "الزمن",
    data: "وقت 15-20 دقيقة",
    amount: "المبلغ",
    price: 20.99,
  );

  static const List<BreadModel> breadDetails = [
    bread1,
    bread2,
    bread3,
    bread4,
  ];
}

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const breadDetails =  BreadModel.breadDetails;

    return ListView.builder(
      itemCount: breadDetails.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, i) {
        final bread = breadDetails[i];

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
                        padding: const EdgeInsets.only(top: 15, bottom: 4),
                        child: Image.asset(
                          bread.icon,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 4),
                        child: Text(
                          bread.value,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 12),
                          child: Text(
                            bread.quantity,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Text(
                          bread.value2,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 12),
                          child: Text(
                            bread.delivery,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Text(
                          bread.data,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 12),
                          child: Text(
                            bread.amount,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Text(
                          '\$${bread.price.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12.0), // Add spacing between the cards
          ],
        );
      },
    );
  }
}