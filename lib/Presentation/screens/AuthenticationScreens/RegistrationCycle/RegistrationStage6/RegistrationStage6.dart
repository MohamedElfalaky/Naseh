import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nasooh/Presentation/widgets/MyButton.dart';
import 'package:nasooh/Presentation/widgets/MyButtonOutlined.dart';
import 'package:nasooh/Presentation/widgets/shared.dart';
import 'package:nasooh/app/Style/Icons.dart';
import '../../../../../app/constants.dart';
import '../../../../../app/utils/myApplication.dart';

class RegistrationStage6 extends StatefulWidget {
  const RegistrationStage6({Key? key}) : super(key: key);

  @override
  State<RegistrationStage6> createState() => _RegistrationStage6State();
}

class _RegistrationStage6State extends State<RegistrationStage6> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        MyApplication.dismissKeyboard(context);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 48,
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(end: 8.0),
                        child: MyButton(
                          isBold: true,
                          txt: "التالي",
                          onPressedHandler: () {},
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: MyButtonOutlined(
                        isBold: false,
                        txt: "تخطي",
                        onPressedHandler: () {},
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 8,
                ),
                child: Text(
                  "خطوة 6 من 7",
                  style: Constants.subtitleRegularFont,
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          centerTitle: false,
          leadingWidth: 70,
          title: const Text("معلومات إضافية"),
          leading: const myBackButton(),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          padding: EdgeInsets.only(
            top: 16,
            right: 16,
            left: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: TextFormField(
                      decoration: Constants.setRegistrationTextInputDecoration(
                          hintText: "اسم صاحب الحساب البنكي...",
                          prefixIcon: SvgPicture.asset(
                            ipanIcon,
                            height: 24,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: TextFormField(
                      decoration: Constants.setRegistrationTextInputDecoration(
                          hintText: "آيبانIBAN Number...  SA***********",
                          prefixIcon: SvgPicture.asset(
                            ipanIcon2,
                            height: 24,
                          )),
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(ekrar),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "إقرار باالسياسة والعمولة",
                        style: Constants.mainTitleFont,
                      ),
                      Spacer(),
                      SizedBox(
                          height: 24,
                          width: 24,
                          child: Checkbox(value: false, onChanged: (d) {}))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحةما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.",
                      style: Constants.subtitleFont,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: TextFormField(
                      decoration: Constants.setRegistrationTextInputDecoration(
                          hintText: "تاريخ الميلاد...",
                          prefixIcon: SvgPicture.asset(
                            dateIcon,
                            height: 24,
                          )),
                    ),
                  ),
                  Text(
                    "الجنس",
                    style: Constants.secondaryTitleFont,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 120,
                        child: RadioListTile(
                            contentPadding: EdgeInsets.all(0),
                            title: Text(
                              "ذكر",
                              style: Constants.secondaryTitleRegularFont,
                            ),
                            value: "value",
                            groupValue: "groupValue",
                            onChanged: (s) {}),
                      ),
                      SizedBox(
                        width: 120,
                        child: RadioListTile(
                            contentPadding: EdgeInsets.all(0),
                            title: Text(
                              "أنثى",
                              style: Constants.secondaryTitleRegularFont,
                            ),
                            value: "value",
                            groupValue: "groupValue",
                            onChanged: (s) {}),
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }

/////////////// returns
}