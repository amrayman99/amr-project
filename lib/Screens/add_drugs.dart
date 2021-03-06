import 'package:egycare/Screens/Login/login_screen.dart';
import 'package:egycare/components/custom_textField.dart';
import 'package:egycare/components/date_picker.dart';
import 'package:egycare/components/rounded_button.dart';
import 'package:egycare/constants.dart';
import 'package:egycare/services/network_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

//enum Gender { MALE, FEMALE }

class AddDrugs extends StatefulWidget {
  @override
  _AddDrugsState createState() => _AddDrugsState();
}

class _AddDrugsState extends State<AddDrugs> {

  String dateTime;
  String _name = '';
  String _userSnn = '';
  String _dateOfBirth = DateFormat('dd-MM-yyyy').format(DateTime.now());


  /*Gender _genderValue = Gender.MALE;
  bool _showFullNameError = false,
      _showPhoneNumberError = false,
      _showPassword = true,
      _showWeakPassword = false,
      _showUnconfirmedPasswordError = false,
      _showSnnError = false,
      _showR1NameError = false,
      _showR1PhoneError = false,
      _showR2NameError = false,
      _showCityError = false,
      _showR2PhoneError = false;


  void showPassword() {
    if (_showPassword == true)
      _showPassword = false;
    else
      _showPassword = true;
  }
*/
  /*bool _accountValidator() {
    if (_showFullNameError == false &&
        _showPhoneNumberError == false &&
        _showWeakPassword == false &&
        _showCityError == false &&
        _showUnconfirmedPasswordError == false &&
        _showSnnError == false &&
        _showR1NameError == false &&
        _showR1PhoneError == false &&
        _showR2NameError == false &&
        _showR2PhoneError == false)
      return true;
    else
      return false;
  }

  bool _isEmpty() {
    return _fullName.length == 0 ||
        _phoneNumber.length == 0 ||
        _password.length == 0 ||
        _city.length == 0 ||
        _firstRelativeName.length == 0 ||
        _firstRelativePhoneNumber.length == 0 ||
        _secondRelativeName.length == 0 ||
        _secondRelativePhoneNumber.length == 0;
  }
*/
  void _onPress() async {
    setState(() {
      //_showSnnError = Validator.snn(_userSnn, dateTime);
    });
    FocusScope.of(context).unfocus();


    Map<String, dynamic> input = {
      "fullName": _fullName,
      "dateOfBirth": "${_dateOfBirth}T14:29:05.761Z",
      "patientSSN": _userSnn,

    };
    /* if (_accountValidator() == true && _isEmpty() == false) {
      print("DATA is Valid----");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.white,
          elevation: 10,
          content: Text(
            '...???????? ??????????????',
            textAlign: TextAlign.right,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: Colors.black),
          ),
        ),
      );
      var result = await NetworkHelper.register(input: input);
      setState(() {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      });
      if (result == 200) {
        print('PUSH NOWWWW');
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      } else if (result == 0) {
        print("BAAAD Request++++++");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            backgroundColor: kPrimaryColor,
            elevation: 10,
            content: Text(
              '???????? ?????? ????????',
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.black),
            ),
            action: SnackBarAction(
              label: '??????????',
              textColor: kPrimaryColor,
              onPressed: () {},
            ),
          ),
        );
      } else if (result == 400) {
        print('::::::::: Reapeted SNN');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.white,
            elevation: 10,
            content: Text(
              '?????????? ???????????? ?????????? ????????????',
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.black),
            ),
            action: SnackBarAction(
              textColor: kPrimaryColor,
              onPressed: () {},
              label: '??????????',
            ),
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.white,
          elevation: 10,
          content: Text(
            '???????? ?????? ????????.. ?????? ?????? ???????????? ???????????? ??????????',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: Colors.black),
          ),
          action: SnackBarAction(
            textColor: kPrimaryColor,
            onPressed: () {},
            label: '??????????',
          ),
        ),
      );
    }*/
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              /*Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/signup_top.png",
                  width: size.width * 0.35,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: size.width * 0.25,
                ),
              ),*/
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: size.height * 0.009),
                    /* Text(
                      "?????????? ????????",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "?????????? ?????????????? ???????? ???????? ???????????????? ????????????",
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                    SizedBox(height: size.height * 0.001),*/
                    CustomTextFiled(
                      inputType: TextInputType.name,
                      inputDecoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "?????? ????????????",
                        suffixIcon: Icon(
                          Icons.assignment_outlined,
                          color: kPrimaryColor,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          /*  _showFullNameError = Validator.fullName(value);
                          _fullName = value;*/
                        });
                      },
                    ),

                    CustomTextFiled(
                      inputType: TextInputType.name,
                      inputDecoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "?????????????? ?????? ????????????",
                        suffixIcon: Icon(
                          Icons.article_rounded,
                          color: kPrimaryColor,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          /*  _showFullNameError = Validator.fullName(value);
                          _fullName = value;*/
                        });
                      },
                    ),


                    /* CustomTextFiled(
                      inputType: TextInputType.number,
                      inputDecoration: InputDecoration(
                        errorText: _showSnnError ? '?????? ????????' : null,
                        border: InputBorder.none,
                        hintText: "?????????? ????????????",
                        suffixIcon: Icon(
                          FontAwesomeIcons.solidIdCard,
                          color: kPrimaryColor,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _userSnn = value;
                        });
                      },
                    ),*/
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.only(
                          right: size.width * .06, top: 14, bottom: 14),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: kPrimaryLightColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (context) => Container(
                                child: SingleChildScrollView(
                                  child: MyDatePicker(
                                    initialDate: DateFormat('dd-MM-yyyy')
                                        .parse(_dateOfBirth),
                                    onDateTimeChanged: (DateTime date) {
                                      setState(() {
                                        _dateOfBirth =
                                            DateFormat('yyyy-MM-dd')
                                                .format(date);
                                        dateTime = DateFormat('yyMMdd')
                                            .format(date);
                                      });
                                    },
                                  ),
                                ),
                              ));
                        },
                        child: LayoutBuilder(builder: (context, constrain) {
                          var width = constrain.maxWidth;
                          print(width);
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: width * 0.09),
                                child: Text(
                                  _dateOfBirth,
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Text(
                                '     ?????? ?????? ????????????',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: width * 0.03),
                                child: Icon(
                                  FontAwesomeIcons.calendarAlt,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),


                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.only(
                          right: size.width * .06, top: 14, bottom: 14),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: kPrimaryLightColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (context) => Container(
                                child: SingleChildScrollView(
                                  child: MyDatePicker(
                                    initialDate: DateFormat('dd-MM-yyyy')
                                        .parse(_dateOfBirth),
                                    onDateTimeChanged: (DateTime date) {
                                      setState(() {
                                        _dateOfBirth =
                                            DateFormat('yyyy-MM-dd')
                                                .format(date);
                                        dateTime = DateFormat('yyMMdd')
                                            .format(date);
                                      });
                                    },
                                  ),
                                ),
                              ));
                        },
                        child: LayoutBuilder(builder: (context, constrain) {
                          var width = constrain.maxWidth;
                          print(width);
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: width * 0.09),
                                child: Text(
                                  _dateOfBirth,
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Text(
                                '???????????? ?????? ????????????  ',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: width * 0.03),
                                child: Icon(
                                  FontAwesomeIcons.calendarAlt,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),

                    /*CustomTextFiled(
                      inputType: TextInputType.phone,
                      inputDecoration: InputDecoration(
                        errorText: _showPhoneNumberError ? '?????? ????????' : null,
                        border: InputBorder.none,
                        hintText: "?????? ?????????????? ????????????",
                        suffixIcon: Icon(
                          Icons.phone,
                          color: kPrimaryColor,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _showPhoneNumberError = Validator.phoneNumber(value);
                          _phoneNumber = value;
                        });
                      },
                    ),*/
                    /* CustomTextFiled(
                      inputDecoration: InputDecoration(
                        errorText: _showCityError ? '?????? ????????' : null,
                        border: InputBorder.none,
                        hintText: "????????????????",
                        suffixIcon: Icon(
                          Icons.location_on,
                          color: kPrimaryColor,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _city = value;
                          _showCityError = Validator.fullName(value);
                        });
                      },
                    ),*/
                    /* Container(
                      width: size.width * 0.8,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.only(right: size.width * 0.07),
                      decoration: BoxDecoration(
                          color: Color(0xFFF1E6FF),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.grey[50],
                          )),
                      child: LayoutBuilder(builder: (context, constrain) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            TextButton.icon(
                              label: Text(
                                '????????',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                                textAlign: TextAlign.right,
                              ),
                              icon: Radio(
                                value: Gender.FEMALE,
                                groupValue: _genderValue,
                                onChanged: (Gender value) {
                                  setState(() {
                                    _genderValue = value;
                                    _gender = '????????';
                                  });
                                },
                              ),
                              onPressed: () {
                                setState(() {
                                  _genderValue = Gender.FEMALE;
                                });
                              },
                            ),
                            TextButton.icon(
                              label: const Text(
                                '??????',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              icon: Radio(
                                value: Gender.MALE,
                                groupValue: _genderValue,
                                onChanged: (Gender value) {
                                  setState(() {
                                    _genderValue = value;
                                    _gender = '??????';
                                  });
                                },
                              ),
                              onPressed: () {
                                setState(() {
                                  _genderValue = Gender.MALE;
                                });
                              },
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Text(
                                '??????????',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                              ),
                            ),
                            Icon(
                              FontAwesomeIcons.venusMars,
                              color: kPrimaryColor,
                            ),
                          ],
                        );
                      }),
                    ),*/
                    /* CustomTextFiled(
                      inputType: TextInputType.name,
                      inputDecoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "?????? ?????????? ??????????",
                        errorText: _showR1NameError ? '?????? ????????' : null,
                        suffixIcon: Icon(
                          FontAwesomeIcons.solidIdBadge,
                          color: kPrimaryColor,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _showR1NameError = Validator.fullName(value);
                          _firstRelativeName = value;
                        });
                      },
                    ),
                    CustomTextFiled(
                      inputType: TextInputType.phone,
                      inputDecoration: InputDecoration(
                        errorText: _showR1PhoneError ? '?????? ????????' : null,
                        border: InputBorder.none,
                        hintText: "?????? ?????????? ?????????? ??????????",
                        suffixIcon: Icon(
                          Icons.phone,
                          color: kPrimaryColor,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _showR1PhoneError = Validator.phoneNumber(value);
                          _firstRelativePhoneNumber = value;
                        });
                      },
                    ),
                    CustomTextFiled(
                      inputType: TextInputType.name,
                      inputDecoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "?????? ?????????? ????????????",
                        errorText: _showR2NameError ? '?????? ????????' : null,
                        suffixIcon: Icon(
                          FontAwesomeIcons.solidIdBadge,
                          color: kPrimaryColor,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _showR2NameError = Validator.fullName(value);
                          _secondRelativeName = value;
                        });
                      },
                    ),
                    CustomTextFiled(
                      inputType: TextInputType.phone,
                      inputDecoration: InputDecoration(
                        errorText: _showR2PhoneError ? '?????? ????????' : null,
                        border: InputBorder.none,
                        hintText: "?????? ?????????? ?????????? ????????????",
                        suffixIcon: Icon(
                          Icons.phone,
                          color: kPrimaryColor,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _showR2PhoneError = Validator.phoneNumber(value);
                          _secondRelativePhoneNumber = value;
                        });
                      },
                    ),*/
                    /*PasswordTextField(
                      showPassword: _showPassword,
                      inputDecoration: InputDecoration(
                        errorText: _showWeakPassword
                            ? '????????.. ?????? ???? ?????????? ?????? ???????? ?????????????? ?? ?????????? ?? ????????  '
                            : null,
                        border: InputBorder.none,
                        hintText: '?????????? ??????????',
                        suffixIcon: Icon(
                          FontAwesomeIcons.userLock,
                          color: kPrimaryColor,
                        ),
                        prefixIcon: IconButton(
                            icon: Icon(
                              _showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: kPrimaryColor,
                            ),
                            onPressed: () {
                              setState(() {
                                showPassword();
                              });
                            }),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _showWeakPassword = Validator.password(value);
                          _password = value;
                          _showUnconfirmedPasswordError =
                          _confirmedPassword == _password ? false : true;
                        });
                      },
                    ),*/
                    /* PasswordTextField(
                      showPassword: _showPassword,
                      inputDecoration: InputDecoration(
                        errorText: _showUnconfirmedPasswordError
                            ? '?????????? ?????????? ?????? ????????????'
                            : null,
                        border: InputBorder.none,
                        hintText: '?????????? ?????????? ??????????',
                        suffixIcon: Icon(
                          FontAwesomeIcons.userLock,
                          color: kPrimaryColor,
                        ),
                        prefixIcon: IconButton(
                            icon: Icon(
                              _showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: kPrimaryColor,
                            ),
                            onPressed: () {
                              setState(() {
                                showPassword();
                              });
                            }),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _confirmedPassword = value;
                          _showUnconfirmedPasswordError =
                          _confirmedPassword == _password ? false : true;
                        });
                      },
                    ),*/
                    RoundedButton(
                      text: "??????????",
                      press: _onPress,
                    ),
                    SizedBox(height: size.height * 0.01),
                    /*Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AlreadyHaveAnAccountCheck(
                        login: false,
                        press: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),*/
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
