import 'package:flutter/material.dart';
import 'package:learning_animals/appTheme.dart';
import 'animal_deatails_screen.dart';
import 'package:learning_animals/widgets/reusableCards.dart';

class WelcomeScreenElements extends StatefulWidget {
  @override
  _WelcomeScreenElementsState createState() => _WelcomeScreenElementsState();
}

class _WelcomeScreenElementsState extends State<WelcomeScreenElements> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.isPortrait
                  ? 6 * SizeConfig.widthMultiplier
                  : 8 * SizeConfig.widthMultiplier),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    AppTexts.homeScreenTopText,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 5 * SizeConfig.textMultiplier,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(
                          right: 6 * SizeConfig.widthMultiplier),
                      height: kSearchIconOverlayRadius,
                      width: kSearchIconOverlayRadius,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.iconsBackGroundColor,
                      ),
                      child: Icon(
                        Icons.search,
                        size: 2.5 * SizeConfig.textMultiplier,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    AppTexts.homeScreenPopularSection,
                    style: TextStyle(
                      fontSize: 3.2 * SizeConfig.heightMultiplier,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(right: 5 * SizeConfig.widthMultiplier),
                    child: Icon(
                      Icons.more_horiz,
                      color: AppColors.iconsGreyColor,
                      size: SizeConfig.isMobilePortrait
                          ? 8 * SizeConfig.widthMultiplier
                          : 6 * SizeConfig.widthMultiplier,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 1.6 * SizeConfig.heightMultiplier,
              ),
              Container(
                height: 35 * SizeConfig.heightMultiplier,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print('tapped');
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AnimalDetailsScreen()));
                        });
                      },
                      child: ReusablePopularAnimalCard(
                        animalName: 'Tiger',
                        backgroundColor: AppColors.textColor1,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('tapped');
                      },
                      child: ReusablePopularAnimalCard(
                        animalName: 'Polar Bear',
                        backgroundColor: AppColors.textColor3,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    AppTexts.homeScreenAnimalTypes,
                    style: TextStyle(
                      fontSize: 3.2 * SizeConfig.heightMultiplier,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(right: 5 * SizeConfig.widthMultiplier),
                    child: Icon(
                      Icons.more_horiz,
                      color: AppColors.iconsGreyColor,
                      size: SizeConfig.isMobilePortrait
                          ? 8 * SizeConfig.widthMultiplier
                          : 6 * SizeConfig.widthMultiplier,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Container(
                height: 35 * SizeConfig.heightMultiplier,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ReusableAnimalTypesCard(
                      animalTypesColor: Colors.purple,
                      animalTypesTitle: 'mammals',
                      animalTypesSubTitle:
                          'Live and love Ahmed, and do stuff..',
                      backgroundColor: AppColors.textColor4,
                    ),
                    ReusableAnimalTypesCard(
                      animalTypesColor: Colors.orange,
                      animalTypesTitle: 'reptiles',
                      animalTypesSubTitle:
                          'Live in hot areas Ali, bread and eat..',
                      backgroundColor: AppColors.textColor1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
