import "dart:io";

void main(List<String> args) {
  do {
    stdout.write('Enter your age or type "exit": ');
    final input = stdin.readLineSync();
    if (input == 'exit') {
      break;
    } else if ((input?.length ?? 0) == 0 || input == null) {
      stdout.writeln("Invalid age. Try again!");
      continue;
    }

    final age = int.tryParse(input);

    if (age == null) {
      stdout.writeln("Invalid age. Try again!");
      continue;
    }

    switch (age) {
      case 10:
        stdout.writeln("You are 10 y. o. Booba");
        break;
      case 20:
        stdout.writeln("You are 20 y. o. Biba");
        break;
      case 30:
        stdout.writeln("You are 30 y. o. Boba");
        break;
      default:
        stdout.writeln("You are $age y. o.");
        break;
    }
  } while (true);
}
