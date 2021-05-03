import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: <Widget>[
          Flexible(
            child: Row(
              children: [
                BuildStatCard(
                  color: Colors.orange,
                  count: "1.81 M",
                  title: "Total Cases",
                ),
                BuildStatCard(
                  color: Colors.red,
                  count: "105 K",
                  title: "Deaths",
                ),
              ],
            ),
          ),
          Flexible(
              child: Row(
            children: <Widget>[
              BuildStatCard(
                color: Colors.green,
                count: "391 K",
                title: "Recovered",
              ),
              BuildStatCard(
                color: Colors.lightBlue,
                count: "1.31 M",
                title: "Active",
              ),
              BuildStatCard(
                color: Colors.purple,
                count: "N/A",
                title: "Critical",
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class BuildStatCard extends StatelessWidget {
  final String title;
  final String count;
  final MaterialColor color;
  BuildStatCard({this.title, this.color, this.count});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              count,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
