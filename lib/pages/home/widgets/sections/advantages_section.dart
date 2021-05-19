import 'package:flutter/material.dart';
import 'package:reponsivo_one/breakpoints.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildVerticalAdvantages(String title, String subtitle) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.white, size: 50),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      );
    }

    Widget buildHorizontalAdvantages(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.white, size: 50),
          const SizedBox(width: 8),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                subtitle,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= mobileBreakPoint)
          return Container(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 16,
              spacing: 8,
              children: [
                buildHorizontalAdvantages(
                    '+45.000 alunos', 'Didática garantida'),
                buildHorizontalAdvantages(
                    '+45.000 alunos', 'Didática garantida'),
                buildHorizontalAdvantages(
                    '+45.000 alunos', 'Didática garantida'),
              ],
            ),
          );
        return Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: Row(
            children: [
              Expanded(
                  child: buildVerticalAdvantages(
                      '+45.000 alunos', 'Didática garantida')),
              SizedBox(width: 4),
              Expanded(
                  child: buildVerticalAdvantages(
                      '+45.000 alunos', 'Didática garantida')),
              SizedBox(width: 4),
              Expanded(
                  child: buildVerticalAdvantages(
                      '+45.000 alunos', 'Didática garantida')),
            ],
          ),
        );
      },
    );
  }
}
