///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class CampaignModelData {
/*
{
  "id": 1,
  "title": "Son Fırsat",
  "description": "Samsung televizyonlarda %20' ye varan indirim.Sakın kaçırmayın.Bu indirimlerden yararlanmak için hemen alışverişe başlayın",
  "image": "slider2.png"
} 
*/

  int? id;
  String? title;
  String? description;
  String? image;

  CampaignModelData({
    this.id,
    this.title,
    this.description,
    this.image,
  });
  CampaignModelData.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    title = json['title']?.toString();
    description = json['description']?.toString();
    image = json['image']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['image'] = image;
    return data;
  }
}

class CampaignModel {
/*
{
  "message": "Slider itmeleri başarıyla getirildi",
  "status": true,
  "data": [
    {
      "id": 1,
      "title": "Son Fırsat",
      "description": "Samsung televizyonlarda %20' ye varan indirim.Sakın kaçırmayın.Bu indirimlerden yararlanmak için hemen alışverişe başlayın",
      "image": "slider2.png"
    }
  ]
} 
*/

  String? message;
  bool? status;
  List<CampaignModelData?>? data;

  CampaignModel({
    this.message,
    this.status,
    this.data,
  });
  CampaignModel.fromJson(Map<String, dynamic> json) {
    message = json['message']?.toString();
    status = json['status'];
  if (json['data'] != null) {
  final v = json['data'];
  final arr0 = <CampaignModelData>[];
  v.forEach((v) {
  arr0.add(CampaignModelData.fromJson(v));
  });
    this.data = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message;
    data['status'] = status;
    if (this.data != null) {
      final v = this.data;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v!.toJson());
  });
      data['data'] = arr0;
    }
    return data;
  }
}
