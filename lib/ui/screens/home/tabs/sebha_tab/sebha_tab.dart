import 'package:flutter/material.dart';
import 'package:islamy/ui/utils/app_assets.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Image.asset(AppAssets.sebhaHead),
            Image.asset(AppAssets.sebha),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Text(
                "عدد التسبيحات",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              width: 70,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('33', style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ),
            ),
            // comment
            Container(
              width: 70,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('33', style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
