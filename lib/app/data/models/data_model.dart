import 'package:meta/meta.dart';

class DataModel {
  int uid;
  String uf;
  String state;
  num cases;
  num deaths;
  num suspects;
  num refuses;
  DateTime dateTime;

  DataModel(
      {@required this.uid,
      @required this.uf,
      @required this.state,
      @required this.cases,
      @required this.deaths,
      @required this.suspects,
      @required this.refuses,
      @required this.dateTime});

  factory DataModel.fromMap({@required Map<String, dynamic> map}) {
    if (map == null) return null;
    return DataModel(
      uid: map['uid'] as int,
      uf: map['uf'] as String,
      state: map['state'] as String,
      cases: map['cases'] as num,
      deaths: map['deaths'] as num,
      dateTime: DateTime.tryParse(map['datetime'] as String),
      suspects: map['suspects'] as num,
      refuses: map['refuses'] as num,
    );
  }

  @override
  String toString() {
    return 'RegiaoModel{uid: $uid, uf: $uf, state: $state, cases: $cases, deaths: $deaths, suspects: $suspects, refuses: $refuses, dateTime: $dateTime}';
  }
}
