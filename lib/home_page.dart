import 'package:flutter/material.dart';
import 'utils/constants.dart';
import 'utils/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.all(Constants.padding),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    Constants.avatarPath,
                  ),
                  radius: Constants.radiusAvatar,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Constants.padding),
                child: Text(
                  Constants.name,
                  style: TextStyles.nameTextStyle,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Constants.padding),
                child: Text(
                  Constants.job,
                  style: TextStyles.jobTextStyle,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Constants.padding),
                child: Text(
                  Constants.mail,
                  style: TextStyles.mailTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
