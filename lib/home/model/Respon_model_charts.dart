import 'dart:convert';

class ResponModelCharts {
  final Data? data;

  ResponModelCharts({
    this.data,
  });

  factory ResponModelCharts.fromJson(String str) =>
      ResponModelCharts.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResponModelCharts.fromMap(Map<String, dynamic> json) =>
      ResponModelCharts(
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data?.toMap(),
      };
}

class Data {
  final int? id;
  final String? name;
  final int? week;
  final int? year;
  final List<SongElement>? songs;

  Data({
    this.id,
    this.name,
    this.week,
    this.year,
    this.songs,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        week: json["week"],
        year: json["year"],
        songs: json["songs"] == null
            ? []
            : List<SongElement>.from(
                json["songs"]!.map((x) => SongElement.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "week": week,
        "year": year,
        "songs": songs == null
            ? []
            : List<dynamic>.from(songs!.map((x) => x.toMap())),
      };
}

class SongElement {
  final int? position;
  final SongSong? song;

  SongElement({
    this.position,
    this.song,
  });

  factory SongElement.fromJson(String str) =>
      SongElement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SongElement.fromMap(Map<String, dynamic> json) => SongElement(
        position: json["position"],
        song: json["song"] == null ? null : SongSong.fromMap(json["song"]),
      );

  Map<String, dynamic> toMap() => {
        "position": position,
        "song": song?.toMap(),
      };
}

class SongSong {
  final int? id;
  final int? artistId;
  final String? artistName;
  final dynamic artistProfilePicture;
  final String? title;
  final String? spotifyUrl;
  final String? appleMusicUrl;

  SongSong({
    this.id,
    this.artistId,
    this.artistName,
    this.artistProfilePicture,
    this.title,
    this.spotifyUrl,
    this.appleMusicUrl,
  });

  factory SongSong.fromJson(String str) => SongSong.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SongSong.fromMap(Map<String, dynamic> json) => SongSong(
        id: json["id"],
        artistId: json["artist_id"],
        artistName: json["artist_name"],
        artistProfilePicture: json["artist_profile_picture"],
        title: json["title"],
        spotifyUrl: json["spotify_url"],
        appleMusicUrl: json["apple_music_url"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "artist_id": artistId,
        "artist_name": artistName,
        "artist_profile_picture": artistProfilePicture,
        "title": title,
        "spotify_url": spotifyUrl,
        "apple_music_url": appleMusicUrl,
      };
}
