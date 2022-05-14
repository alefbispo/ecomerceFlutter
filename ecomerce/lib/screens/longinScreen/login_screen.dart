import 'package:ecomerce/appColors/app_colors.dart';
import 'package:ecomerce/myBottonBar/my_bottom_bar.dart';
import 'package:ecomerce/routes/routes.dart';
import 'package:ecomerce/screens/homepage/singup/singup_screen.dart';
import 'package:ecomerce/swvImages/swv_images.dart';
import 'package:ecomerce/widgets/my_button_widget.dart';
import 'package:ecomerce/widgets/my_textfromfiel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../styles/login_screen_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget buildTopPart(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          SvgImages.logo,
          height: 150,
        ),
        Column(
          children: [
            MyTextFromField(
              hintText: 'E-mail',
              obscureText: false,
            ),
            MyTextFromField(
              hintText: 'Password',
              obscureText: true,
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: MyButtonWidget(
                  onPressed: () {
                    PageRouting.goToNextPage(
                      context: context,
                      navigateTo:  MyBottomBar(),
                    );
                  },
                  color: AppColors.baseBlackColor,
                  text: 'Sing in',
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: MyButtonWidget(
                  onPressed: () {
                    PageRouting.goToNextPage(
                      context: context,
                      navigateTo: const SingupScreen(),
                    );
                  },
                  color: AppColors.baseDarkPinkColor,
                  text: 'Sing up',
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Forgot password?',
          style: LoginScreenStyles.forgotPasswordStyles,
        )
      ],
    );
  }

  Widget buildSocialButton({required Widget child, required Function onPress}) {
    return MaterialButton(
      shape: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 0.5,
          color: AppColors.baseGrey40Color,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      onPressed: onPress(),
      child: child,
    );
  }

  Widget buildbottomPart() {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'or sing in whith social networks',
            style: LoginScreenStyles.singinSocialStyles,
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // facebook social button
                buildSocialButton(
                  onPress: () {},
                  child: SvgPicture.asset(
                    SvgImages.facebook,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),

                // google social button
                buildSocialButton(
                  onPress: () {},
                  child: SvgPicture.asset(
                    SvgImages.google,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),

                // twitter social button
                buildSocialButton(
                  onPress: () {},
                  child: SvgPicture.asset(
                    SvgImages.twitter,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: MaterialButton(
              color: AppColors.baseGrey10Color,
              height: 55,
              elevation: 0,
              shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Center(
                child: Text(
                  'Sing up',
                  style: LoginScreenStyles.singupButtonTextStyles,
                ),
              ),
              onPressed: () {
                PageRouting.goToNextPage(
                  context: context,
                  navigateTo: const SingupScreen(),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopPart(context),
                  buildbottomPart(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
