import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
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


class PriceCard {
  final String value;
  final double price;
  const PriceCard({required this.value, required this.price});
}

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  final List<PriceCard> healthDetails = const [
    PriceCard(value: "Day", price: 25.99),
    PriceCard(value: "Week", price: 30.99),
    PriceCard(value: "Month", price: 70.99),
    PriceCard(value: "Year", price: 150.99),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: healthDetails.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
          crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
          mainAxisSpacing: 12.0),
      itemBuilder: (context, i) {
        return CustomCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 4),
                child: Text(
                  healthDetails[i].value,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                '\$${healthDetails[i].price.toStringAsFixed(2)}',
                style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        );
      },
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


  static const List<BreadModel> breadDetails = [
    bread1,
    bread2,
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

class LineChartCard extends StatelessWidget {
  LineChartCard({super.key});

  final List<FlSpot> spots = const [
    FlSpot(1.68, 21.04),
    FlSpot(2.84, 26.23),
    FlSpot(5.19, 19.82),
    FlSpot(6.01, 24.49),
    FlSpot(7.81, 19.82),
    FlSpot(9.49, 23.50),
    FlSpot(12.26, 19.57),
    FlSpot(15.63, 20.90),
    FlSpot(20.39, 39.20),
    FlSpot(23.69, 75.62),
    FlSpot(26.21, 46.58),
    FlSpot(29.87, 42.97),
    FlSpot(32.49, 46.54),
    FlSpot(35.09, 40.72),
    FlSpot(38.74, 43.18),
    FlSpot(41.47, 59.91),
    FlSpot(43.12, 53.18),
    FlSpot(46.30, 90.10),
    FlSpot(47.88, 81.59),
    FlSpot(51.71, 75.53),
    FlSpot(54.21, 78.95),
    FlSpot(55.23, 86.94),
    FlSpot(57.40, 78.98),
    FlSpot(60.49, 74.38),
    FlSpot(64.30, 48.34),
    FlSpot(67.17, 70.74),
    FlSpot(70.35, 75.43),
    FlSpot(73.39, 69.88),
    FlSpot(75.87, 80.04),
    FlSpot(77.32, 74.38),
    FlSpot(81.43, 68.43),
    FlSpot(86.12, 69.45),
    FlSpot(90.06, 78.60),
    FlSpot(94.68, 46.05),
    FlSpot(98.35, 42.80),
    FlSpot(101.25, 53.05),
    FlSpot(103.07, 46.06),
    FlSpot(106.65, 42.31),
    FlSpot(108.20, 32.64),
    FlSpot(110.40, 45.14),
    FlSpot(114.24, 53.27),
    FlSpot(116.60, 42.13),
    FlSpot(118.52, 57.60),
  ];

  final leftTitle = {
    0: '0',
    20: '2K',
    40: '4K',
    60: '6K',
    80: '8K',
    100: '10K'
  };
  final bottomTitle = {
    0: 'Jan',
    10: 'Feb',
    20: 'Mar',
    30: 'Apr',
    40: 'May',
    50: 'Jun',
    60: 'Jul',
    70: 'Aug',
    80: 'Sep',
    90: 'Oct',
    100: 'Nov',
    110: 'Dec',
  };

  @override
  Widget build(BuildContext context) {
    // Replace `fixedColor` with your desired color
    Color fixedColor = Colors.blue;

    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "General consumption",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20),
          AspectRatio(
            aspectRatio: Responsive.isMobile(context) ? 9 / 4 : 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(handleBuiltInTouches: true),
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 32,
                      interval: 1,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return bottomTitle[value.toInt()] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                space: 10,
                                child: Text(
                                  bottomTitle[value.toInt()].toString(),
                                  style: TextStyle(
                                    fontSize: Responsive.isMobile(context) ? 9 : 12,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                  rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return leftTitle[value.toInt()] != null
                            ? Text(
                                leftTitle[value.toInt()].toString(),
                                style: TextStyle(
                                  fontSize: Responsive.isMobile(context) ? 9 : 12,
                                  color: Colors.grey[400],
                                ),
                              )
                            : const SizedBox();
                      },
                      showTitles: true,
                      interval: 1,
                      reservedSize: 40,
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    isCurved: true,
                    curveSmoothness: 0,
                    color: fixedColor, // Use the fixed color here
                    barWidth: 2.5,
                    isStrokeCapRound: true,
                    belowBarData: BarAreaData(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          fixedColor.withOpacity(0.5), // Use the fixed color here
                          Colors.transparent,
                        ],
                      ),
                      show: true,
                      color: fixedColor.withOpacity(0.5), // Use the fixed color here
                    ),
                    dotData: FlDotData(show: false),
                    spots: spots,
                  ),
                ],
                minX: 0,
                maxX: 120,
                maxY: 105,
                minY: -5,
              ),
              swapAnimationDuration: const Duration(milliseconds: 250),
            ),
          ),
        ],
      ),
    );
  }
}
