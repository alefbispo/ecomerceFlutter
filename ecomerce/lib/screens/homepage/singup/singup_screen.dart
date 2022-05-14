import 'package:ecomerce/appColors/app_colors.dart';
import 'package:ecomerce/routes/routes.dart';
import 'package:ecomerce/screens/longinScreen/login_screen.dart';
import 'package:ecomerce/styles/singup_screen_style.dart';
import 'package:ecomerce/swvImages/swv_images.dart';
import 'package:ecomerce/widgets/my_button_widget.dart';
import 'package:ecomerce/widgets/my_textfromfiel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingupScreen extends StatelessWidget {
  const SingupScreen({Key? key}) : super(key: key);

  Widget buildTopPart() {
    var edgeInsets = const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    );
    return Column(
      children: [
        Image.asset(
          SvgImages.logo,
          height: 150,
        ),
        MyTextFromField(
          hintText: 'Full name',
          obscureText: false,
        ),
        MyTextFromField(
          hintText: 'Email',
          obscureText: false,
        ),
        MyTextFromField(
          hintText: 'Password',
          obscureText: true,
        ),
        MyTextFromField(
          hintText: 'Confirm password',
          obscureText: true,
        ),
        Container(
          margin: edgeInsets,
          child: MyButtonWidget(
            onPressed: () {},
            color: AppColors.baseDarkPinkColor,
            text: 'Create an account',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        RichText(
          text: const TextSpan(
            text: 'By sigining up you agress to our\n\t',
            style: SingupScreenStyles.singInAgressStyle,
            children: <TextSpan>[
              TextSpan(
                text: 'Terms',
                style: SingupScreenStyles.termsTextStyle,
              ),
              TextSpan(
                text: ' and \t',
                style: SingupScreenStyles.andTextStyle,
              ),
              TextSpan(
                text: ' Conditions of Use',
                style: SingupScreenStyles.conditionsTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildSocialButtom({required Widget child, required Function onPress}) {
    return MaterialButton(
      onPressed: onPress(),
      shape: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 0.5,
          color: AppColors.baseGrey40Color,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
    );
  }

  Widget buildBottomPart(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'or Sing in with social networks',
            style: SingupScreenStyles.singinSocialTextStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //facebook
                buildSocialButtom(
                  onPress: () {},
                  child: SvgPicture.asset(
                    SvgImages.facebook,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),

                //google
                buildSocialButtom(
                  onPress: () {},
                  child: SvgPicture.asset(
                    SvgImages.google,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),

                //twitter
                buildSocialButtom(
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
              onPressed: () {
                PageRouting.goBack(
                  context: context, navigateTo: LoginScreen(),);
              },
              color: AppColors.baseGrey10Color,
              height: 55,
              elevation: 0,
              child: const Center(
                  child: Text(
                'Sing up',
                style: SingupScreenStyles.singupButtomTextStyle,
              )),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,),
      body: SafeArea(
          child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          buildTopPart(),
          buildBottomPart(context),
        ],
      )),
    );
  }
}
