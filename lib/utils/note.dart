class Note {
  final String title;
  final String imageUrl;
  final String content;

  Note({required this.title, required this.imageUrl, required this.content});

  Note.fromSnapshot(Map<String, dynamic> data)
      : title = data['title'],
        imageUrl = data['imageUrl'],
        content = data['content'];

  Map<String, dynamic> toJson() {
    return {'title': title, 'imageUrl': imageUrl, 'content': content};
  }
}
