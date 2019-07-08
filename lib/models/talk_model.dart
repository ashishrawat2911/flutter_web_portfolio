class TalkModel {
  String _name;
  String _image;
  String _topic;

  TalkModel(
    this._name,
    this._image,
    this._topic,
  );

  String get image => _image;

  String get name => _name;

  String get topic => _topic;

}
