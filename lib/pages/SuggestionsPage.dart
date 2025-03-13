import 'package:flutter/material.dart';

class SuggestionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List of suggestions
    final List<String> suggestions = [
      "Similiarties",
      "Letter similaraties",
      "  ddd",
      "Sustainable Living"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Suggestions"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(
                suggestions[index],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
              onTap: () {
                // Navigate to a details page or show a dialog
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SuggestionDetailPage(title: suggestions[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// New Page for Suggestion Details
class SuggestionDetailPage extends StatelessWidget {
  final String title;

  SuggestionDetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "Details about $title will be displayed here.",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
