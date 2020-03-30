import 'package:flutter/material.dart';
import 'package:learning_animals/appTheme.dart';

class AnimalDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackGroundColor,
      body: AnimalDetails(),
    );
  }
}

class AnimalDetails extends StatefulWidget {
  @override
  _AnimalDetailsState createState() => _AnimalDetailsState();
}

class _AnimalDetailsState extends State<AnimalDetails> {
  bool flaggedState = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: 2.5 * SizeConfig.widthMultiplier,
                  right: 6 * SizeConfig.widthMultiplier,
                  top: SizeConfig.isPortrait
                      ? 5 * SizeConfig.heightMultiplier
                      : 2 * SizeConfig.heightMultiplier),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 3 * SizeConfig.heightMultiplier,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        flaggedState = !flaggedState;
                      });
                    },
                    child: Icon(
                      flaggedState ? Icons.flag : Icons.bookmark_border,
                      color: Colors.black.withAlpha(150),
                      size: 3.5 * SizeConfig.heightMultiplier,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 6 * SizeConfig.widthMultiplier,
                  right: 6 * SizeConfig.widthMultiplier),
              child: Column(
                children: <Widget>[
                  Text(
                    'Polar Bear',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 4 * SizeConfig.textMultiplier),
                  ),
                  SizedBox(
                    height: 0.8 * SizeConfig.heightMultiplier,
                  ),
                  Text(
                    AppTexts.polarBearTopParagraph,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withAlpha(140),
                      fontSize: 2 * SizeConfig.textMultiplier,
                    ),
                  ),
                  SizedBox(
                    height: 2 * SizeConfig.heightMultiplier,
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: SizeConfig.isPortrait
                          ? 30 * SizeConfig.heightMultiplier
                          : 40 * SizeConfig.heightMultiplier,
                      maxWidth: SizeConfig.isPortrait
                          ? 85 * SizeConfig.widthMultiplier
                          : 110 * SizeConfig.widthMultiplier,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.textColor4),
                  ),
                  SizedBox(
                    height: 2 * SizeConfig.heightMultiplier,
                  ),
                  Text(
                    AppTexts.polarBearUnderImageText,
                    style: TextStyle(
                        fontSize: 1.8 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.withAlpha(100)),
                  ),
                  SizedBox(
                    height: 3 * SizeConfig.heightMultiplier,
                  ),
                  Text(
                    AppTexts.polarBearFullParagraph,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 2.5 * SizeConfig.textMultiplier,
                        color: Colors.black.withAlpha(180)),
                  ),
                  SizedBox(
                    height: 2 * SizeConfig.heightMultiplier,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      AppTexts.animalKeyFacts,
                      style: TextStyle(
                          fontSize: 3.1 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2 * SizeConfig.heightMultiplier,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(
                                2.5 * SizeConfig.widthMultiplier),
                            constraints: BoxConstraints(
                              maxWidth: 7 * SizeConfig.heightMultiplier,
                              maxHeight: 7 * SizeConfig.heightMultiplier,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    2 * SizeConfig.heightMultiplier),
                                color: AppColors.textColor1),
                            child: Center(
                              child: Text(
                                '01',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 6 * SizeConfig.widthMultiplier),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Weight',
                                  style: TextStyle(
                                      fontSize: 3 * SizeConfig.textMultiplier),
                                ),
                                SizedBox(
                                  height: 0.5 * SizeConfig.heightMultiplier,
                                ),
                                Text(
                                  AppTexts.animalWeightUnderText,
                                  style: TextStyle(
                                      fontSize: 2 * SizeConfig.textMultiplier),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          size: 3.5 * SizeConfig.heightMultiplier,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.5 * SizeConfig.heightMultiplier,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(
                                2.5 * SizeConfig.widthMultiplier),
                            constraints: BoxConstraints(
                              maxWidth: 7 * SizeConfig.heightMultiplier,
                              maxHeight: 7 * SizeConfig.heightMultiplier,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    2 * SizeConfig.heightMultiplier),
                                color: AppColors.textColor3),
                            child: Center(
                              child: Text(
                                '02',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 6 * SizeConfig.widthMultiplier),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Size',
                                  style: TextStyle(
                                      fontSize: 3 * SizeConfig.textMultiplier),
                                ),
                                SizedBox(
                                  height: 0.5 * SizeConfig.heightMultiplier,
                                ),
                                Text(
                                  AppTexts.animalSizeUnderText,
                                  style: TextStyle(
                                      fontSize: 2 * SizeConfig.textMultiplier),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          size: 3.5 * SizeConfig.heightMultiplier,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
