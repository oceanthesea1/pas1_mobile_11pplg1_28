import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg1_28/controllers/LeagueController.dart';
import 'package:pas1_mobile_11pplg1_28/widgets/my_color_list.dart';
import 'package:pas1_mobile_11pplg1_28/widgets/my_list.dart';

class LeagueView extends StatelessWidget {
  final List<String> leagueDatas;

  LeagueView({required this.leagueDatas});

  @override
  Widget build(BuildContext context) {
    final LeagueController leagueController = Get.put(LeagueController(leagueDatas));

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colorBackground,
        title: Text(
          'League Page',
          style: TextStyle(
            color: colorWhite,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: colorBackground,
        child: Obx(() {
          if (leagueController.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          }
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0), 
            child: ListView.builder(
              itemCount: leagueController.leagueList.length,
              itemBuilder: (context, index) {
                final league = leagueController.leagueList[index];
                return MyList(
                  backgroundColor: colorTransparent,
                  textColor: colorWhite,
                  secondTextColor: secondTextColor,
                  splashColor: splashColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  secondFontSize: 14,
                  secondFontWeight: FontWeight.w500,
                  text: league.strTeam,
                  secondText:
                      'League: ${league.strLeague} ● ID: ${league.idTeam}',
                  borderRadius: 15,
                  imageBorderRadius: 8,
                  height: 100,
                  onTap: () {},
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
