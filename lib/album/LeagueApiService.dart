// services/api_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pas1_mobile_11pplg1_28/album/LeagueModel.dart';

class LeagueApiService {
  Future<List<LeagueModel>> fetchLeagues(List<String> leagueDatas) async {
    List<LeagueModel> leagues = [];

    for (var leagueData in leagueDatas) {
      final response = await http.get(Uri.parse('https://www.thesportsdb.com/api/v1/json/3/search_all_teams.php?l=$leagueData'));

      if (response.statusCode == 200) {
        Map<String, dynamic> data = json.decode(response.body);
        List leagueList = data['league'] ?? [];
        leagues.addAll(leagueList.map((json) => LeagueModel.fromJson(json)).toList());
      } else {
        throw Exception('Failed to load league');
      }
    }
    
    return leagues;
  }
}
