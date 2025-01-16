import 'dart:io';

void main() {
  List<String> items = [];
  while (true) {
    print('''
CRUD Menu:
1. Create an Item
2. Read All Items
3. Get a Specific Item
4. Update an Item
5. Delete an Item
6. Exit
''');

    stdout.write('Enter your choice: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        createItem(items);
        break;
      case '2':
        readItems(items);
        break;
      case '3':
        getItem(items);
        break;
      case '4':
        updateItem(items);
        break;
      case '5':
        deleteItem(items);
        break;
      case '6':
        print('Exiting program...');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

void createItem(List<String> items) {
  stdout.write('Enter the item to add: ');
  String? newItem = stdin.readLineSync();
  if (newItem != null && newItem.isNotEmpty) {
    items.add(newItem);
    print('Item added: $newItem');
  } else {
    print('Invalid input. Item not added.');
  }
}

void readItems(List<String> items) {
  if (items.isEmpty) {
    print('No items to display.');
  } else {
    print('Items:');
    for (int i = 0; i < items.length; i++) {
      print('${i + 1}. ${items[i]}');
    }
  }
}

void getItem(List<String> items) {
  if (items.isEmpty) {
    print('No items to get.');
    return;
  }
  stdout.write('Enter the number of the item to retrieve: ');
  String? input = stdin.readLineSync();
  int? index = int.tryParse(input ?? '')?.minus(1); // Convert to zero-based index
  if (index != null && index >= 0 && index < items.length) {
    print('Item at position ${index + 1}: ${items[index]}');
  } else {
    print('Invalid item number.');
  }
}

void updateItem(List<String> items) {
  if (items.isEmpty) {
    print('No items to update.');
    return;
  }
  readItems(items);
  stdout.write('Enter the number of the item to update: ');
  String? input = stdin.readLineSync();
  int? index = int.tryParse(input ?? '')?.minus(1);
  if (index != null && index >= 0 && index < items.length) {
    stdout.write('Enter the new value: ');
    String? newValue = stdin.readLineSync();
    if (newValue != null && newValue.isNotEmpty) {
      items[index] = newValue;
      print('Item updated successfully.');
    } else {
      print('Invalid input. Update canceled.');
    }
  } else {
    print('Invalid item number.');
  }
}

void deleteItem(List<String> items) {
  if (items.isEmpty) {
    print('No items to delete.');
    return;
  }
  readItems(items);
  stdout.write('Enter the number of the item to delete: ');
  String? input = stdin.readLineSync();
  int? index = int.tryParse(input ?? '')?.minus(1);
  if (index != null && index >= 0 && index < items.length) {
    String removedItem = items.removeAt(index);
    print('Item deleted: $removedItem');
  } else {
    print('Invalid item number.');
  }
}
