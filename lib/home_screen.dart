import 'package:doctor_ui/const.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                header(size),
                SizedBox(
                  height: size.height / 40,
                ),
                customTextField(size),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: SizedBox(
                    width: size.width / 1.15,
                    child: RichText(
                      text: TextSpan(
                        text: 'What Are You',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        ),
                        children: [
                          TextSpan(
                            text: '\tSuffering',
                            style: TextStyle(
                              color: textColor
                            )
                          ),
                          TextSpan(
                              text: '\twith?',
                          )
                        ]
                      ),
                    ),
                  ),
                ),

                showDiseaseTile(size),
                showDiseaseTile(size),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: helpCenterTile(size),
                ),
                availabelDoctors(size),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget availabelDoctors(Size size){
    return SizedBox(
      height: size.height / 15,
      width: size.width / 1.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              text: 'Doctors',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
              children: [
                TextSpan(
                  text: '\nAvailable Now',
                  style: TextStyle(
                    fontSize: 16
                  )
                )
              ]
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: CardColor,
            size: 30,
          )
        ],
      ),
    );
  }

  Widget helpCenterTile(Size size){
    return Container(
      height: size.height / 18,
      width: size.width / 1.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: textColor,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: size.height / 22,
            width: size.width / 8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/ibrahim.png'),
              )
            ),
          ),
          RichText(
            text: TextSpan(
                text: 'Click Here For',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                ),
                children: [
                  TextSpan(
                      text: '\tCovid-19',
                      style: TextStyle(
                          color: textColor
                      )
                  ),
                  TextSpan(
                    text: '\tHelp >>',
                  )
                ]
            ),
          ),
        ],
      ),
    );
  }

  Widget showDiseaseTile(Size size){
    return SizedBox(
      height: size.height / 12,
      width: size.width / 1.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          diseaseTiles(size, 'Lungs Problem', 'images/ibrahim.png'),
          diseaseTiles(size, 'Lungs Problem', 'images/ibrahim.png'),
        ],
      ),
    );
  }

  Widget diseaseTiles(Size size, String diseaseName, String imagePath){
    return Container(
      height: size.height / 16,
      width: size.width / 2.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: textColor
        )
      ),
      child: Row(
        children: [
          Container(
            height: size.height / 22,
            width: size.width / 11,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('$imagePath'),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  text: '${diseaseName.split(" ").first}',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(
                      text: '${diseaseName.split(" ").last}',
                      style: TextStyle(
                        color: Colors.black
                      )
                    )
                  ]
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget customTextField(Size size){
    return SizedBox(
      height: size.height / 12,
      width: size.width / 1.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: size.height / 15,
            width: size.width / 1.4,
            decoration: BoxDecoration(
              border: Border.all(
                color: buttonColor,
                width: 3
              )
            ),
            alignment: Alignment.center,
            child: Text(
              'Symptoms, disease and doctor...',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: size.height / 15,
            width: size.width / 7,
            decoration: BoxDecoration(
                border: Border.all(
                    color: buttonColor,
                    width: 3
                )
            ),
            child: Icon(
              Icons.search,
              color: textColor,
                size: 30,
            ),
          )
        ],
      ),
    );
  }

  Widget header(Size size){
    return SizedBox(
      height: size.height / 8,
      width: size.width / 1.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              text: 'Good',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w500
              ),
              children: [
                TextSpan(
                  text: '\tMorning',
                  style: TextStyle(color: textColor),
                ),
                TextSpan(
                  text: '\nIbrahim Khan',
                  style: TextStyle(
                    fontSize: 26
                  )
                )
              ]
            ),
          ),
          Container(
            height: size.height / 10,
            width: size.height / 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/ibrahim.png'),
              )
            ),
          )
        ],
      ),
    );
  }
}
