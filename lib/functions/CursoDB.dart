class CursoDB {
  String sId;
  String titulo;
  String desc;
  String linkVideo;
  String imgCurso;

  CursoDB({
    this.sId,
    this.titulo,
    this.desc,
    this.linkVideo,
    this.imgCurso,
  });

  CursoDB.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    titulo = json['titulo'];
    desc = json['desc'];
    linkVideo = json['linkVideo'];
    imgCurso = json['imgCurso'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['titulo'] = this.titulo;
    data['desc'] = this.desc;
    data['linkVideo'] = this.linkVideo;
    data['imgCurso'] = this.imgCurso;
    return data;
  }
}