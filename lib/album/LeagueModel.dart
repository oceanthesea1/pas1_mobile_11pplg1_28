// models/track_model.dart

class LeagueModel {
  final String idTeam;
  final String strTeam;
  final String strLeague;

  LeagueModel({
    required this.idTeam,
    required this.strTeam,
    required this.strLeague,
  });

  factory LeagueModel.fromJson(Map<String, dynamic> json) {
    return LeagueModel(
      idTeam: json['idTeam'],  
      strTeam: json['strTeam'],
      strLeague: json['strLeague'],
    );
  }
}
