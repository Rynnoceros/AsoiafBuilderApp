import 'unit.dart';
import 'house.dart';
import '../enums/unit_type.dart';

// Attachment class
class Attachment extends Unit {
  // Constructor
  Attachment({String name, String description, UnitType type, int cost, House house,
        String frontPicture, String backPicture}) : super(name: name, description: description, type: type,
        cost: cost, house: house, frontPicture: frontPicture, backPicture: backPicture);
}