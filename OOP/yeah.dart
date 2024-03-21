abstract class DartPlayer {
  void throwDart();
}

class AmateurPlayer implements DartPlayer {
  @override
  void throwDart() {
    print('Amateur player throws dart at the board.');
  }
}

class ProfessionalPlayer extends AmateurPlayer {
  @override
  void throwDart() {
    print('Professional player throws dart with precision.');
  }
}

class DartPlayerInitializer {
  String filename;

  DartPlayerInitializer(this.filename);

  void initialize() {
    print('Initializing Dart players from file: $filename');
  }
}

void simulateDartGame(DartPlayer player, int numberOfThrows) {
  print('Simulating dart game with ${player.runtimeType}:');
  for (int i = 1; i <= numberOfThrows; i++) {
    print('Throw $i:');
    player.throwDart();
  }
}

void main() {
  DartPlayerInitializer initializer = DartPlayerInitializer('players.txt');
  initializer.initialize();

  DartPlayer amateur = AmateurPlayer();
  DartPlayer professional = ProfessionalPlayer();

  simulateDartGame(amateur, 3);
  print('');
  simulateDartGame(professional, 3);
}
