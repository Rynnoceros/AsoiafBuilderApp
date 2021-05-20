// House class
class House {
  // Attributes
  String _name;

  String _emblemPicture;

  // Constructor
  House({String name, String emblemPicture}) {
    setName(name);
    setEmblemPicture(emblemPicture);
  }

  // Getter and setter for name
  String getName() {
    return _name;
  }

  void setName(String name) {
    _name = name;
  }

  // Getter and setter for emblem
  String getEmblemPicture() {
    return _emblemPicture;
  }

  void setEmblemPicture(emblemPicture) {
    _emblemPicture = emblemPicture;
  }
}