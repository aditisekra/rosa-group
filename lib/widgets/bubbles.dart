import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:http/http.dart';
import 'package:rosaapp/widgets/tab_list.dart';

import '../screens/Detailed.dart';

class BubbleMenuScreen extends StatefulWidget {
  const BubbleMenuScreen({Key key}) : super(key: key);

  @override
  _BubbleMenuScreenState createState() => _BubbleMenuScreenState();
}

class _BubbleMenuScreenState extends State<BubbleMenuScreen> {
  Rect focusRect = Rect.zero;
  Rect screenRect = Rect.zero;
  Rect limitRect = Rect.zero;
  Size screenSize = Size.zero;

  List<BubbleMenuItem> bubbles = [];

  Offset position = Offset.zero;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final MediaQueryData query = MediaQuery.of(context);
      screenSize =
          Size(query.size.width, query.size.height - query.padding.top);
      final double mainPadding = screenSize.width * 0.25;
      final double mainWidth = screenSize.width - (mainPadding * 2);
      final double mainHeight = screenSize.height - (mainPadding * 2);

      final double midPadding = screenSize.width * 0.10;
      final double midWidth = screenSize.width - (midPadding * 2);
      final double midHeight = screenSize.height - (midPadding * 2);

      screenRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
      focusRect =
          Rect.fromLTWH(mainPadding, mainPadding, mainWidth, mainHeight);
      limitRect = Rect.fromLTWH(midPadding, midPadding, midWidth, midHeight);
      createBubbles();
      setState(() {});
    });
  }

  createBubbles() {
    final double maxBubbleWidth = screenSize.width ;
    final double itemRadius = maxBubbleWidth * 0.40;
    final Random random = Random();

    for (int rowIndex = 0; rowIndex < 3; rowIndex++) {

      final int maxRowItems = rowIndex.isEven ? 3 : 4;
      for (int y = 0; y < maxRowItems; y++) {
        var list = [0,1,2,3];
        int randomNumber = list.elementAt(rowIndex);
        list.remove(rowIndex);




        // Random random = new Random();
        // int randomNumber = random.nextInt(4);


        final double offsetWidth = rowIndex.isEven ? 0 : itemRadius;
        final Offset position = Offset(
            (y * maxBubbleWidth) + offsetWidth, (rowIndex * maxBubbleWidth));

        bubbles.add(BubbleMenuItem(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: itemRadius * 2,
                height: itemRadius * 2,
                decoration: BoxDecoration(


                    shape: BoxShape.circle,
                    color: Color(0xFF27FF91)),
                child:  Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: itemRadius,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailedScreen(rosaTabs: rosaTabsList[randomNumber], Partners: partnerTabList[randomNumber],)),
                          ),
                        child: Hero(
                          tag: rosaTabsList[rowIndex].image_path,
                          child: CircleAvatar(
                            radius: itemRadius,
                            foregroundColor: Colors.black12,
                            backgroundImage: AssetImage(rosaTabsList[randomNumber].image_path),
                            child: CircleAvatar(
                              backgroundColor: Colors.black45,
                              radius: itemRadius,
                              child: Text(rosaTabsList[randomNumber].heading.tr, style: TextStyle(fontSize:25,fontWeight: FontWeight.w500,color: Colors.white),),
                            ),

                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            radius: itemRadius,
            position: position));

      }
    }
  }

  updatePosition(Offset delta) {
    setState(() {

      position = position.translate(delta.dx, delta.dy);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (panUpdateData) {
          updatePosition(panUpdateData.delta);
        },
        child: Container(
          color: Colors.black,
          child: Stack(
            children: bubbles.map((item) {
              final Offset newPosition = Offset(
                  position.dx + item.position.dx,
                  position.dy + item.position.dy);
              final Offset centerPosition =
              newPosition.translate(item.radius, item.radius);

              if (focusRect.contains(centerPosition)) {
                return Positioned(
                  top: newPosition.dy,
                  left: newPosition.dx,
                  child: item.child,
                );
              } else {
                double scale = 1.0;
                double xScale = 1.0, yScale = 1.0;
                bool top = false, right = false, bottom = false, left = false;

                if (screenRect.contains(centerPosition)) {
                  // X scale Check
                  if (centerPosition.dx < focusRect.left) {
                    xScale = 1 -
                        ((focusRect.left - centerPosition.dx) /
                            (focusRect.left - limitRect.left));
                    left = true;
                  } else if (centerPosition.dx > focusRect.right) {
                    xScale = 1 -
                        ((centerPosition.dx - focusRect.right) /
                            (limitRect.right - focusRect.right));
                    right = true;
                  }
                  // Y scale Check
                  if (centerPosition.dy < focusRect.top) {
                    yScale = 1 -
                        ((focusRect.top - centerPosition.dy) /
                            (focusRect.top - limitRect.top));
                    centerPosition.dy / focusRect.top;
                    top = true;
                  } else if (centerPosition.dy > focusRect.bottom) {
                    yScale = 1 -
                        ((centerPosition.dy - focusRect.bottom) /
                            (limitRect.bottom - focusRect.bottom));
                    bottom = true;
                  }
                  // Average Scale
                  scale = (xScale + yScale) / 2;
                  scale = scale.clamp(0.0, 1.0);
                } else {
                  scale = 0.0;
                }

                return Positioned(
                  top: newPosition.dy,
                  left: newPosition.dx,
                  child: Transform.scale(
                    alignment: Alignment(left ? 0.5 : (right ? -0.5 : 0),
                        top ? 0.5 : (bottom ? -0.5 : 0)),
                    scale: scale,
                    child: item.child,
                  ),
                );
              }
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class BubbleMenuItem {
  final Offset position;
  final Widget child;
  final double radius;

  const BubbleMenuItem({
     this.child,
    this.radius,
     this.position,
  });

  BubbleMenuItem copyWith({
    Offset position,
    Widget child,
    double radius,
  }) {
    return BubbleMenuItem(
      position: position ?? this.position,
      child: child ?? this.child,
      radius: radius ?? this.radius,
    );
  }
}
