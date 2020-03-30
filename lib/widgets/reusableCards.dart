import 'package:flutter/material.dart';
import 'package:learning_animals/appTheme.dart';
import 'package:learning_animals/screens/animal_deatails_screen.dart';

class ReusablePopularAnimalCard extends StatelessWidget {
  ReusablePopularAnimalCard(
      {this.backgroundColor, this.animalName, this.animalPicturePath});
  final Color backgroundColor;
  final String animalName;
  final String animalPicturePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 5 * SizeConfig.widthMultiplier),
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 8,
                child: AspectRatio(
                  aspectRatio: 0.8,
                  child: Container(
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.all(
                          Radius.circular(3 * SizeConfig.heightMultiplier)),
                    ),
                    child: Container(),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    animalName,
                    style:
                        TextStyle(fontSize: 2.2 * SizeConfig.heightMultiplier),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class ReusableAnimalTypesCard extends StatelessWidget {
  ReusableAnimalTypesCard(
      {this.animalPicturePath,
      this.animalTypesSubTitle,
      this.animalTypesTitle,
      this.backgroundColor,
      this.animalTypesColor});

  final String animalTypesTitle;
  final String animalTypesSubTitle;
  final Color backgroundColor;
  final Color animalTypesColor;
  final String animalPicturePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: AspectRatio(
            aspectRatio: 1.4,
            child: Container(
              margin: EdgeInsets.only(right: 5 * SizeConfig.widthMultiplier),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(2.6 * SizeConfig.heightMultiplier),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  animalTypesTitle.toUpperCase(),
                  style: TextStyle(
                      color: animalTypesColor.withAlpha(190),
                      fontSize: 2 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 0.25 * SizeConfig.heightMultiplier,
                ),
                Text(
                  animalTypesSubTitle,
                  style: TextStyle(fontSize: 2 * SizeConfig.textMultiplier),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
