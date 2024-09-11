import 'package:flutter/material.dart';

// Classe responsável por exibir os dados do livro
class BookDetails extends StatelessWidget {
  // Simulação dos dados de um livro
  final Map<String, String> bookData = {
    "title": "DAYDREAM",
    "author": "Hannah Grace",
    "description":
    "The third book in the Maple Hills series. A college student with writer’s block offers to tutor the captain of the hockey team.",
    "book_image": "https://storage.googleapis.com/du-prd/books/images/9781668026250.jpg",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detalhes do Livro',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                bookData['book_image'] ?? '',
                width: 200,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              bookData['title'] ?? 'Título não disponível',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'by ${bookData['author'] ?? 'Autor desconhecido'}',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 16),
            Text(
              bookData['description'] ?? 'Descrição não disponível',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
