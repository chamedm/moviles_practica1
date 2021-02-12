import 'package:flutter/material.dart';

class ItemHome extends StatelessWidget {
  final String title;
  final String image;
  ItemHome({
    Key key,
    @required this.title,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: Stack(
        children: [
          Container(
            height: 160,
            margin: EdgeInsets.only(top: 28, bottom: 24, left: 24, right: 24),
            decoration: BoxDecoration(
              color: Color.fromRGBO(157, 147, 123, .8),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16),
                  width: 180,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(230, 226, 218, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      "$title",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: EdgeInsets.only(top: 50, right: 50),
                child: Image.network(
                  "$image",
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
