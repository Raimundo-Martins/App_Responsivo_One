import 'package:flutter/material.dart';
import 'package:reponsivo_one/breakpoints.dart';
import 'package:reponsivo_one/pages/home/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth >= tabletBreakPoint) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 3,
                    child: Container(
                      padding: EdgeInsets.all(25),
                      width: 450,
                      child: Column(
                        children: [
                          Text(
                            'Aprenda Flutter com este curso',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$ 22,90. Qualidade garantida.',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 16),
                          CustomSearchField()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        } else if (maxWidth >= mobileBreakPoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Card(
                    color: Colors.black,
                    elevation: 3,
                    child: Container(
                      padding: EdgeInsets.all(25),
                      width: 350,
                      child: Column(
                        children: [
                          Text(
                            'Aprenda Flutter com este curso',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$ 22,90. Qualidade garantida.',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 16),
                          CustomSearchField()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.network(
                'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Aprenda Flutter com este curso',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$ 22,90. Qualidade garantida.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 16),
                  CustomSearchField()
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
