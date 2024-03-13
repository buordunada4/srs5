import 'package:flutter/material.dart';

class ZeroPage extends StatefulWidget {
  const ZeroPage({super.key});
  @override
  State<ZeroPage> createState() => _ZeroPageState();
}

class _ZeroPageState extends State<ZeroPage> {
  final List<String> _images = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
    'assets/image5.jpg',
    'assets/image6.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
        itemCount: _images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GridTile(
            child: GestureDetector(
              onTap: () {
                // Open the menu or perform any action when tapping on the image
              },
              child: Stack(
                children: [
                  Image.asset(
                    _images[index],
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 8.0,
                    right: 8.0,
                    child: PopupMenuButton(
                      icon: Icon(Icons.more_vert),
                      itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                          child: Text('Поделиться'),
                          value: 'Поделиться',
                        ),
                        PopupMenuItem(
                          child: Text('Лайк'),
                          value: 'Лайк',
                        ),
                        PopupMenuItem(
                          child: Text('Сохранить'),
                          value: 'Сохранить',
                        ),
                      ],
                      onSelected: (String value) {
                        // Handle menu item selection here
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Выбрано: $value')),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
