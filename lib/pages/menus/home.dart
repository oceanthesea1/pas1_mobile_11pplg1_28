import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pas1_mobile_11pplg1_28/album/LeagueView.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return LeagueView(
      leagueDatas: ['English%20Premier%20League'],
    );
  }
}
