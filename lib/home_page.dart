import 'package:flutter/material.dart';
import 'utils/constants.dart';
import 'utils/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _likesCounter = Constants.initializationValue;

  _incrementLikes() {
    setState(() {
      _likesCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(Constants.padding),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    Constants.avatarPath,
                  ),
                  radius: Constants.radiusAvatar,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(Constants.padding),
                child: Text(
                  Constants.name,
                  style: TextStyles.nameTextStyle,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(Constants.padding),
                child: Text(
                  Constants.job,
                  style: TextStyles.jobTextStyle,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(Constants.padding),
                child: Text(
                  Constants.mail,
                  style: TextStyles.mailTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Constants.paddingHorizontal,
                  vertical: Constants.padding,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$_likesCounter',
                      style: TextStyles.likeTextStyle,
                    ),
                    IconButton(
                      onPressed: _incrementLikes,
                      icon: const Icon(Icons.thumb_up),
                      color: Colors.green,
                      iconSize: Constants.iconSize,
                    )
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
