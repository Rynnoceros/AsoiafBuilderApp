// Class to define an attack line
class DicesToRoll {
  // attributes
  int _numberOfRank;
  int _numberOfDicesToRoll;

  // Constructor
  DicesToRoll({int numberOfRank, int numberOfDicesToRoll}) {
    setNumberOfRank(numberOfRank);
    setNumberOfDicesToRoll(numberOfDicesToRoll);
  }

  // Getter and setter for number of rank
  int numberOfRank() {
    return _numberOfRank;
  }

  void setNumberOfRank(int numberOfRank) {
    _numberOfRank = numberOfRank;
  }

  // Getter and setter for number of dices to roll
  int numberOfDicesToRoll() {
    return _numberOfDicesToRoll;
  }

  void setNumberOfDicesToRoll(int numberOfDicesToRoll) {
    _numberOfDicesToRoll = numberOfDicesToRoll;
  }
}