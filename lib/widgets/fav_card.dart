import 'package:flutter/material.dart';

class FavCard extends StatelessWidget {
  const FavCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                colors: [Color(0xffFFB6C1), Color(0xffDA70D6)])),

        child: Stack(
          children: [
            // Opacity(
            //   opacity: .4,
            //   child: Image.network(
            //       "",
            //       fit: BoxFit.cover),
            // ),
            Image.network(
                "https://www.pngall.com/wp-content/uploads/11/Pink-Donut-PNG-Images-HD.png"),
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 6),
                child: Text(
                  "Qual a sua\nsobremesa favorita?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
