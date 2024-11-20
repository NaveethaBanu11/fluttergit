import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextwidgetsFrontIcon extends StatelessWidget {
  final String label;
  final String hint;
  final Icon iconfront;

  TextwidgetsFrontIcon(
      {super.key,
        required this.label,
        required this.hint,
        required this.iconfront});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
          child: TextFormField(
              decoration: InputDecoration(
                  label: Text(label),
                  hintText: hint,
                  prefixIcon: iconfront,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade500)))),
        ));
  }
}

class TextwidgetBackIcon extends StatelessWidget {
  final String label;
  final String hint;
  final Icon iconback;
  final VoidCallback onTap;
  const TextwidgetBackIcon(
      {super.key,
        required this.label,
        required this.hint,
        required this.iconback,
        required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade500)),
              label: Text(label),
              hintText: hint,
              suffixIcon: IconButton(onPressed: onTap, icon: iconback)),
        ),
      ),
    );
  }
}

class Textwidgets extends StatelessWidget {
  final String hint;
  const Textwidgets({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade500)),
            hintText: hint),
      ),
    );
  }
}

class Timewidgets extends StatelessWidget {
  final String text;
  final Color textColor;
  const Timewidgets({
    super.key,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border:
        const Border.fromBorderSide(BorderSide(color: Color(0xffd9d9d9d))),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 23,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

class TextFormWidget extends StatelessWidget {
  final String hint;
  TextFormWidget({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          hintText: hint),
    );
  }
}

class TextFormBackIcon extends StatelessWidget {
  final String hint;
  final Icon icon;
  const TextFormBackIcon({super.key, required this.hint, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          hintText: hint,
          suffixIcon: IconButton(onPressed: () {}, icon: icon)),
    );
  }
}


class FormCircleAvatar extends StatelessWidget {
  final String backgroundImage;
  const FormCircleAvatar({
    super.key,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(backgroundImage),
          radius: 50,
        ),
        Positioned(
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_circle,
                color: Color(0xff262263),
              )),
          bottom: -4,
          left: 65,
        )
      ],
    );
  }
}




class Profilewidgets extends StatelessWidget {
  final Icon icon;
  final String title;
  final String name;
  Profilewidgets(
      {super.key, required this.icon, required this.title, required this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: GoogleFonts.roboto(
            fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      subtitle: Text(
        name,
        style: GoogleFonts.roboto(
            fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  const ProfileCard(
      {super.key, required this.backgroundColor, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25,
        top: 10,
      ),
      child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              color: backgroundColor),
          height: 100,
          width: double.infinity,
          // color: Colors.green,
          child: Row(
            children: [Center(child: child)],
          )),
    );
  }
}
