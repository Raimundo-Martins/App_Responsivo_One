import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://img-c.udemycdn.com/course/240x135/1764438_44b7_5.jpg?Expires=1621495184&Signature=UgFDFH0iOHIHOzFwzl4UI~7xN2aiGbhpLVucSBF6zBgZ8ZZ2lLEFAOamt2zyHfGCkM2XWg6jpKLXslbY6xfy8HCNzOonfjKG8g5Ote6gH3ZhgtUWPSUBuqoZrvUlArotVWRWAuZwiaUsHZm7keUKKtJzOOMfxwByTiliv6hhLG9U3EqiFA1nHAFK-VQvKGWsj3OZM7LLy2tDXn9CELm6GAzOWZvfntSmF7wjKswBCPPUe6F6O6p084yTZLNQ57nkxxitJIdLMl1ZTCmHINeQDoNMPJ9jD5QoMkyp9OITh39ClYrImC3hMtIO8fPBHGynMVsNCpFIu9I-0~r-c2QhMA__&Key-Pair-Id=APKAITJV77WS5ZT7262A',
          fit: BoxFit.fitWidth,
        ),
        SizedBox(height: 4),
        Flexible(
          child: AutoSizeText(
            'Criação de Apps Android e iOS com Flutter - Crie 16 Apps',
            minFontSize: 3,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
        ),
        SizedBox(height: 4),
        Text(
          'Daniel Ciolfi',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 4),
        Text(
          'R\$ 22,90',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
        ),
      ],
    );
  }
}
