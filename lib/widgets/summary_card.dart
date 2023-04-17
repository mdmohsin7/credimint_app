import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String info;
  final Color infoColor;
  final String emptyMessage;
  const SummaryCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.info,
      required this.infoColor,
      required this.emptyMessage});

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
      height: deviceHeight / 7.8,
      decoration: BoxDecoration(
        color: const Color(0xFFE5E5E5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Card contents
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF000000),
                        fontSize: deviceHeight / 50,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: deviceHeight / 60,
                          color: const Color(0xFF808080),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          info != "" ? info : emptyMessage,
                          style: TextStyle(
                            fontSize: deviceHeight / 55,
                            fontWeight: FontWeight.bold,
                            color: info != "" ? infoColor : Colors.grey[300],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Card arrow icon
            Container(
              width: deviceWidth / 12,
              height: double.infinity,
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF999999),
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
