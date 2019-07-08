class BlogModel {
  String _name;
  String _image;
  String _link;

  BlogModel(this._name, this._image, this._link);

  String get link => _link;

  String get image => _image;

  String get name => _name;
}