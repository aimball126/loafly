import 'package:flutter/material.dart';
import 'package:flutter_dashboard/Responsive.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';

class BreadModel {
  final String icon;
  final String value;
  final String quantity;
  final String value2;
  final String delivery;
  final String data;
  final String amount;
  final double price;
  const BreadModel(
      {required this.icon, required this.value, required this.quantity, required this.value2, required this.delivery, required this.data, required this.amount, required this.price});
}


class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({Key? key}) : super(key: key);


  final List<BreadModel> breadDetails = const [
    BreadModel(icon: 'assets/images/Bread.png', value: "   خبز", quantity: "الكمية", value2: "5", delivery: "تاريخ التوصيل", data: "2023/2/17", amount: "المبلغ", price: 20.99),
    BreadModel(icon: 'assets/images/Brioche.png', value: "بريوش", quantity: "الكمية", value2: "5" ,delivery: "تاريخ التوصيل", data: "2023/2/17", amount: "المبلغ", price: 25.99),
    BreadModel(icon: 'assets/images/Candies.png', value: "حلويات", quantity: "الكمية", value2: "2", delivery: "تاريخ التوصيل", data: "2023/2/17", amount: "المبلغ", price: 25.99),
    BreadModel(icon: 'assets/images/Crackers.png', value: "المقرمشات", quantity: "الكمية", value2: "5", delivery: "تاريخ التوصيل", data: "2023/2/17", amount: "المبلغ", price: 20.99),
  ];


  @override

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: breadDetails.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, i) {
        return Column(
          children: [
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
                          breadDetails[i].icon,
                          width: 50,
                          height: 50,
                        ), // Adjust the size as needed
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 4),
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 12),
                          child: Text(
                            breadDetails[i].quantity,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Text(
                          breadDetails[i].value2,
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
                            breadDetails[i].delivery,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Text(
                          breadDetails[i].data,
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
                          child: 
                          Text(
                              breadDetails[i].amount,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Text(
                            '\$${breadDetails[i].price.toStringAsFixed(2)}',
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

class BreadModel2 {
  final String name;
  final String location;
  final String description;
  const BreadModel2(
      {required this.name, required this.location, required this.description});
}

class ActivityDetailsCard2 extends StatelessWidget {
  const ActivityDetailsCard2({Key? key}) : super(key: key);


  final List<BreadModel2> breadDetails = const [
    BreadModel2(name: 'خبز', location: "Tripoli, Libya", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
    BreadModel2(name: 'بريوش', location: "Tripoli, Libya", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
    BreadModel2(name: 'حلويات', location: "Tripoli, Libya", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
    BreadModel2(name: 'المقرمشات', location: "Tripoli, Libya", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: breadDetails.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
        crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
        mainAxisSpacing: 12.0,
      ),
      itemBuilder: (context, i) {
        return CustomCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 4),
                child: 
              Text(
                  breadDetails[i].name,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                breadDetails[i].location,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                breadDetails[i].description,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}


class BreadModel3 {
  final String name;
  final String image;
  const BreadModel3(
      {required this.name, required this.image});
}


class ActivityDetailsCard3 extends StatelessWidget {
  const ActivityDetailsCard3({Key? key}) : super(key: key);


  final List<BreadModel3> breadDetails = const [
    BreadModel3(name: "خبز", image: 'assets/images/Bread.png'),
    BreadModel3(name: "بريوش", image: 'assets/images/Brioche.png'),
    BreadModel3(name: "حلويات", image: 'assets/images/Candies.png'),
    BreadModel3(name: "المقرمشات", image: 'assets/images/Crackers.png'),
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: breadDetails.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
        crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
        mainAxisSpacing: 12.0,
      ),
      itemBuilder: (context, i) {
        return CustomCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(breadDetails[i].image, width: 50, height: 50), // Adjust the size as needed
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 4),
                child: Text(
                  breadDetails[i].name,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
