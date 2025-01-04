```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON array
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Accessing elements directly might cause an error if the array is empty
      final firstElement = jsonData[0]; // Potential error here
      print(firstElement); 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```