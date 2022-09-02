import 'package:flutter/material.dart';

var grad = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color.fromRGBO(246, 114, 115, 1),
    Color.fromRGBO(245, 40, 135, 1),
  ],
);

var primaryc = Color.fromRGBO(245, 40, 135, 1);
const mypinkacc = Color.fromRGBO(246, 114, 115, 1);
const double defpadd = 20.0;


const gradyellow=LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color.fromRGBO(251, 246, 217 , 1),
    Color.fromRGBO(255, 223, 0 , 1),
    Color.fromRGBO(246, 190, 0 , 1),
  ],
);

const gradorange=LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color.fromRGBO(242, 187, 102, 1),

    Color.fromRGBO(255, 140, 0, 1),
    Color.fromRGBO(255, 103, 0, 1),
  ],
);

const gradblue=LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color.fromRGBO(0, 191, 255,1),

    Color.fromRGBO(31, 69, 252, 1),
    Color.fromRGBO(21, 27, 84, 1),

  ],
);

const gradpurple=LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [

    Color.fromRGBO(238, 130, 238 , 1),
    Color.fromRGBO(176, 72, 181, 1),
    Color.fromRGBO(135, 38, 87, 1),

  ],
);

const gradpink = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color.fromRGBO(246, 114, 115, 1),
    Color.fromRGBO(245, 40, 135, 1),
  ],
);
const gradblack = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Colors.grey,
    Colors.black,
  ],
);


class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key, this.title = 'default title', this.onPressed})
      : super(key: key);
  final String
      title; //to say that its not a non nullable character.without qstn mark it is defaultly null but it shows error that we cant leave it null and have to give some default value
  final VoidCallback?
      onPressed; // see back_button dart file (class) to learn how to create customized button
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(milliseconds: 550),curve: Curves.bounceOut,
      child: Theme(
        data: ThemeData(
          buttonTheme: ButtonThemeData(),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              onPrimary: primaryc,
              elevation: 10.0,
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0))),
          onPressed: onPressed,
          child: Center(
              child: Text(title,
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'ProductSans-Bold',
                      color: primaryc))),
        ),
      ),
    );
  }
}
