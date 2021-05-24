// House class
class House {
  // Attributes
  final String _name;

  final String _emblemPicture;

  // Constructor
  House(this._name, this._emblemPicture);

  // Constructor from json
  House.fromJSON(Map<String, dynamic> json)
    : _name = json['name'],
      _emblemPicture = json['emblemPicture'];

  // Getters
  String getEmblemPicture() {
    return _emblemPicture;
  }

  String getName() {
    return _name;
  }
}