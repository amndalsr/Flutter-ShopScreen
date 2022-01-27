import 'package:flutter/material.dart';


class CardListView extends StatelessWidget {
  const CardListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, right: 25.0, bottom: 20.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 370,
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          scrollDirection: Axis.horizontal,
          children: const [
            Card(
                "Cappuccino",
                "http://www.torriton.com.br/wp-content/uploads/2019/06/cappuccinoNut.png",
                "R\$00,00"),
            Card(
                "Açaí",
                "http://bellokikos.com.br/file/2018/09/ta%C3%A7a-de-sorvete-png-4.png",
                "R\$00,00"),
            Card(
                "Donuts",
                "https://images.pngnice.com/download/2007/Donuts-PNG-Free-Download.png",
                "R\$00,00"),
            Card(
                "Bolo",
                "http://pngimg.com/uploads/chocolate_cake/chocolate_cake_PNG62.png",
                "R\$00,00"),
          ],
        ),
      ),
    );
  }
}



class Card extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;

  const Card(this.text, this.imageUrl, this.subtitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 15),
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 10),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.purple.withOpacity(.2)),
          ],
        ),
        child: Column(
          children: [
            Image.network(imageUrl, height: 80, fit: BoxFit.cover),
            const Spacer(),
            Text(text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}