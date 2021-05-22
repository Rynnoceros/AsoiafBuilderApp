import '../enums/unit_type.dart';
import '../classes/house.dart';

// Unit class
class Unit {
  // Attributes
  String _name;
  String _description;
  UnitType _type;
  int _cost;
  House _house;
  String _frontPicture;
  String _backPicture;

  // Constructor
  Unit({String name, String description, UnitType type, int cost, House house,
        String frontPicture, String backPicture}) {
    setName(name);
    setDescription(description);
    setType(type);
    setCost(cost);
    setHouse(house);
    setFrontPicture(frontPicture);
    setBackPicture(backPicture);
  }

  // Getter and setter for name
  String getName() {
    return _name;
  }

  void setName(String name) {
    _name = name;
  }

  // Getter and setter
  String getDescription() {
    return _description;
  }

  void setDescription(String description) {
    _description = description;
  }

  // Getter and setter for type
  UnitType getType() {
    return _type;
  }

  void setType(UnitType type) {
    _type = type;
  }

  // Getter and setter for cost
  int getCost() {
    return _cost;
  }

  void setCost(int cost) {
    _cost = cost;
  }

  // Getter and setter for house
  House getHouse() {
    return _house;
  }

  void setHouse(House house) {
    _house = house;
  }

  // Getter and setter for front picture
  String getFrontPicture() {
    return _frontPicture;
  }

  void setFrontPicture(String frontPicture) {
    _frontPicture = frontPicture;
  }

  // Getter and setter for back picture
  String getBackPicture() {
    return _backPicture;
  }

  void setBackPicture(String backPicture) {
    _backPicture = backPicture;
  }
}