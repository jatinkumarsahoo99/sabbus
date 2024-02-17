import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../Animation/AnimationSeven.dart';
import '../../Utils/localfiles.dart';
import '../../Utils/text_styles.dart';
import '../../language/appLocalizations.dart';
import '../../routes/route_names.dart';
import '../../themes/theme_provider.dart';
import '../../themes/themes.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_card.dart';
import '../../widgets/common_search_bar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoadText = false;
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) =>
        _loadAppLocalizations()); // call after first frame receiver so we have context
    super.initState();
  }

  Future<void> _loadAppLocalizations() async {
    try {
      //load all text json file to allLanguageTextData(in common file)
      //   await AppLocalizations.init(context);
      setState(() {
        isLoadText = true;
      });
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeProvider>(context);
    return Container(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              foregroundDecoration: !appTheme.isLightMode
                  ? BoxDecoration(
                      color: Theme.of(context).backgroundColor.withOpacity(0.4))
                  : null,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(Localfiles.bus2, fit: BoxFit.contain),
            ),
            Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
              /*  Center(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Theme.of(context).dividerColor,
                            offset: Offset(1.1, 1.1),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      child: Image.asset(Localfiles.appIcon),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sabbus",
                  textAlign: TextAlign.left,
                  style: TextStyles(context).getBoldStyle().copyWith(
                        fontSize: 24,
                      ),
                ),
                 AnimatedOpacity(
                  opacity: isLoadText ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 420),
                  child: Text(
                    AppLocalizations(context).of("great_things"),
                    textAlign: TextAlign.left,
                    style: TextStyles(context).getRegularStyle().copyWith(fontStyle: FontStyle.italic),
                  ),
                ),*/
                Expanded(
                  flex: 4,
                  child: SizedBox(),
                ),

                AnimationSeven(text: "Flat 20% discount on your 1st booking"),

                AnimatedOpacity(
                  opacity: isLoadText ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 680),
                  child: CommonButton(
                    padding: const EdgeInsets.only(
                        left: 48, right: 48, bottom: 8, top: 8),
                    buttonText: AppLocalizations(context).of("get_started"),
                    onTap: () {
                      NavigationServices(context).gotoIntroductionScreen();
                    },
                  ),
                ),
                AnimatedOpacity(
                  opacity: isLoadText ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 1200),
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: 24.0 + MediaQuery.of(context).padding.bottom,
                        top: 16),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            NavigationServices(context).gotoLoginScreen();
                          },
                          child: Text(
                            AppLocalizations(context).of("already_have_account"),
                            textAlign: TextAlign.left,
                            style: TextStyles(context).getDescriptionStyle().copyWith(
                                  color: AppTheme.primaryColor,
                                ),
                          ),
                        ),
                        const Text(" | "),
                        InkWell(
                          onTap: (){
                            NavigationServices(context).gotoSignScreen();
                          },
                          child: Text(
                            "SignUp",
                            textAlign: TextAlign.left,
                            style: TextStyles(context).getDescriptionStyle().copyWith(
                              color: AppTheme.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top,
              left: 0,
              right: 0,
              child: serachUI(),
            )
          ],
        ),
      ),
    );
  }

  Widget serachUI() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
      child: CommonCard(
        radius: 36,
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(38)),
          onTap: () {
            NavigationServices(context).gotoSearchScreen();
          },
          child: CommonSearchBar(
            iconData: FontAwesomeIcons.search,
            enabled: false,
            text: AppLocalizations(context).of("where_are_you_going"),
          ),
        ),
      ),
    );
  }

}
