import 'dart:convert';

import 'package:intl/intl.dart';

class Stats {
  final int baseStat;
  final int effort;
  final Stat stat;
  Stats({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  String get value => NumberFormat("000").format(baseStat);

  factory Stats.empty() => Stats(
        baseStat: 0,
        effort: 0,
        stat: Stat.empty(),
      );

  Stats copyWith({
    int? baseStat,
    int? effort,
    Stat? stat,
  }) {
    return Stats(
      baseStat: baseStat ?? this.baseStat,
      effort: effort ?? this.effort,
      stat: stat ?? this.stat,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'base_stat': baseStat,
      'effort': effort,
      'stat': stat.toMap(),
    };
  }

  factory Stats.fromMap(Map<String, dynamic> map) {
    return Stats(
      baseStat: map['base_stat'].toInt() as int,
      effort: map['effort'].toInt() as int,
      stat: Stat.fromMap(map['stat'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Stats.fromJson(String source) =>
      Stats.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Stat(base_stat: $baseStat, effort: $effort, stat: $stat)';

  @override
  bool operator ==(covariant Stats other) {
    if (identical(this, other)) return true;

    return other.baseStat == baseStat &&
        other.effort == effort &&
        other.stat == stat;
  }

  @override
  int get hashCode => baseStat.hashCode ^ effort.hashCode ^ stat.hashCode;
}

class Stat {
  final String name;
  final String url;
  Stat({
    required this.name,
    required this.url,
  });

  String get initials =>
      abreviations.firstWhere((abv) => abv['name'] == name)['value']!;

  List<Map<String, dynamic>> get abreviations {
    return <Map<String, dynamic>>[
      {'name': 'hp', 'value': 'HP'},
      {'name': 'attack', 'value': 'ATK'},
      {'name': 'defense', 'value': 'DEF'},
      {'name': 'special-attack', 'value': 'SATK'},
      {'name': 'special-defense', 'value': 'SDEF'},
      {'name': 'speed', 'value': 'SPD'},
    ];
  }

  factory Stat.empty() => Stat(name: '', url: '');

  Stat copyWith({
    String? name,
    String? url,
  }) {
    return Stat(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory Stat.fromMap(Map<String, dynamic> map) {
    return Stat(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Stat.fromJson(String source) =>
      Stat.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Stat(name: $name, url: $url)';

  @override
  bool operator ==(covariant Stat other) {
    if (identical(this, other)) return true;

    return other.name == name && other.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}
