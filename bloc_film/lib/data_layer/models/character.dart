class Characters {
  late int id;
  late String name;
  late String status;
  late String gender;
  late String img;
  late String species;
  Characters.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    gender = json['gender'];
    img = json['image'];
    species = json['species'];
  }
}


// class Characters {
//   List<Results>? results;

//   Characters({ this.results});

//   Characters.fromJson(Map<String, dynamic> json) {
//     if (json['results'] != null) {
//       results = <Results>[];
//       json['results'].forEach((v) {
//         results!.add( Results.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  <String, dynamic>{};
//     if (results != null) {
//       data['results'] = results!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }


// class Results {
//   int? id;
//   String? name;
//   String? status;
//   String? species;
//   String? type;
//   String? gender;
//   String? image;
//   List<String>? episode;
//   String? url;
//   String? created;

//   Results(
//       {this.id,
//       this.name,
//       this.status,
//       this.species,
//       this.type,
//       this.gender,
//       this.image,
//       this.episode,
//       this.url,
//       this.created});

//   Results.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     status = json['status'];
//     species = json['species'];
//     type = json['type'];
//     gender = json['gender'];
//     image = json['image'];
//     episode = json['episode'].cast<String>();
//     url = json['url'];
//     created = json['created'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['name'] = name;
//     data['status'] = status;
//     data['species'] = species;
//     data['type'] = type;
//     data['gender'] = gender;
//     data['image'] = image;
//     data['episode'] = episode;
//     data['url'] = url;
//     data['created'] = created;
//     return data;
//   }
// }
