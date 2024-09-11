import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Livros Mais Lidos do The New York Times',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  // Dados dos livros
  final List<Map<String, String>> books = [
    {
      "title": "THE WOMEN",
      "author": "Kristin Hannah",
      "description": "In 1965, a nursing student follows her brother to serve during the Vietnam War and returns to a divided America.",
      "book_image": "https://storage.googleapis.com/du-prd/books/images/9781250178633.jpg",
    },
    {
      "title": "THE COVEN",
      "author": "Harper L. Woods",
      "description": "At Hollow’s Grove University, a school for magic that suffered a bloody massacre decades ago, 13 gifted students confront ghosts from the school’s past.",
      "book_image": "https://storage.googleapis.com/du-prd/books/images/9781250346742.jpg",
    },
    {
      "title": "SHADOW OF DOUBT",
      "author": "Brad Thor",
      "description": "The 23rd book in the Scot Harvath series. A mess of trouble involving double agents, international intrigue and a potential global firestorm forces Harvath to choose between his country and his conscience. Read by Armand Schultz. 11 hours, 39 minutes unabridged.",
      "book_image": "https://storage.googleapis.com/du-prd/books/images/9781982182236.jpg",
    },
    {
      "title": "FOURTH WING",
      "author": "Rebecca Yarros",
      "description": "Violet Sorrengail is urged by the commanding general, who also is her mother, to become a candidate for the elite dragon riders.",
      "book_image": "https://storage.googleapis.com/du-prd/books/images/9781649374042.jpg",
    },
    {
      "title": "THE WEDDING PEOPLE",
      "author": "Alison Espach",
      "description": "A woman who is down on her luck forms an unexpected bond with the bride at a wedding in Rhode Island. Read by Helen Laser. 11 hours, 37 minutes unabridged.",
      "book_image": "https://storage.googleapis.com/du-prd/books/images/9781250899576.jpg",
    },
    {
      "title": "THE BOOKSHOP",
      "author": "Evan Friss",
      "description": "Description not available",
      "book_image": "https://storage.googleapis.com/du-prd/books/images/9780593299920.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Livros Mais Lidos do The New York Times',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            final book = books[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      book['book_image'] ?? '',
                      width: 80, // Tamanho ajustado
                      height: 120, // Tamanho ajustado e achatado
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            book['title'] ?? 'Título não disponível',
                            style: TextStyle(fontSize: 16, color: Colors.grey[800], fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'by ${book['author'] ?? 'Autor desconhecido'}',
                            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                          ),
                          SizedBox(height: 8),
                          Text(
                            book['description'] ?? 'Descrição não disponível',
                            style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
