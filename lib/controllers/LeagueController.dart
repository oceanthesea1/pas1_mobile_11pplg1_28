// controllers/post_controller.dart

import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg1_28/album/LeagueApiService.dart';
import 'package:pas1_mobile_11pplg1_28/album/LeagueModel.dart';

class LeagueController extends GetxController {
  var isLoading = true.obs;
  var leagueList = <LeagueModel>[].obs;

  final List<String> leagueDatas;

  LeagueController(this.leagueDatas);

  @override
  void onInit() {
    fetchTracks();
    super.onInit();
  }

  void fetchTracks() async {
    try {
      isLoading(true);
      var leagues = await LeagueApiService().fetchLeagues(leagueDatas);
      leagueList.assignAll(leagues);
    } finally {
      isLoading(false);
    }
  }
}
