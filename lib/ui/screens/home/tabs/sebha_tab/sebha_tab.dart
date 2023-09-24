import 'package:flutter/material.dart';
import 'package:islamy/provider/setting_provider.dart';
import 'package:islamy/ui/utils/app_assets.dart';
import 'package:islamy/ui/utils/app_colors.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Center(
      child: Column(
        children: [
          Image.asset(AppAssets.sebhaHead),
          Transform.rotate(
            angle: 2,
            child: Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.sebha),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
              "عدد التسبيحات",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Container(
            width: 70,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),color: provider.currentTheme==ThemeMode.light
                ? AppColors.primiary
                : AppColors.primiaryDark),
            child: Center(
              child: Text('33', style: Theme.of(context).textTheme.titleLarge),
            ),
          ),
          // comment

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              width: 140 ,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: provider.currentTheme==ThemeMode.light
                  ? AppColors.primiary
                  : AppColors.accentDark),
              child: Center(
                child: Text('سبحان الله', style: Theme.of(context).textTheme.titleLarge),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
