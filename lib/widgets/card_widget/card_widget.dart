import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

class CustoumCard extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final String total;
  final VoidCallback onPressed;
  const CustoumCard(
      {super.key,
        required this.text,
        required this.textColor,
        required this.backgroundColor,
        required this.total,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(left: 20, top: 20),
        color: backgroundColor,
        child: InkWell(
          onTap: onPressed,
          child: SizedBox(
              height: 100,
              width: 175,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style:
                      GoogleFonts.workSans(color: textColor, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            total,
                            style: GoogleFonts.roboto(
                                color: textColor, fontSize: 18),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ));
  }
}

class CustoumCardImage extends StatelessWidget {
  final String text;
  final Color textColor;
  final String backgroundImage;
  final String total;

  const CustoumCardImage({
    Key? key,
    required this.text,
    required this.textColor,
    required this.backgroundImage,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 20, top: 20),
      child: Container(
        width: 175,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                backgroundImage), // Use AssetImage if your image is in assets
            fit: BoxFit.cover, // Adjusts image to cover the entire container
          ),
          borderRadius:
          BorderRadius.circular(8), // Optional: for rounded corners
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: GoogleFonts.workSans(color: textColor, fontSize: 18),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      total,
                      style: GoogleFonts.roboto(color: textColor, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  final VoidCallback onPressed;
  final String requestNo;
  final String work;
  final String name;
  final String apartmentNo;
  final String status;
  final String date;

  CardList({
    super.key,
    required this.requestNo,
    required this.work,
    required this.name,
    required this.apartmentNo,
    required this.status,
    required this.date,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      verticalDirection: VerticalDirection.down,
      children: [
        ListTile(
          onTap: onPressed,
          title: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              requestNo,
              style: GoogleFonts.roboto(
                  color: const Color(0xff8f8f8f), fontSize: 13),
            ),
          ),
          horizontalTitleGap: 20,
          subtitle: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 4,
                  right: 7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    badges.Badge(
                      position: badges.BadgePosition.custom(
                          end: -20, bottom: 20, top: 1),
                      child: Text(
                        work,
                        style: GoogleFonts.workSans(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      date,
                      style: GoogleFonts.roboto(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.roboto(
                          fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      apartmentNo,
                      style: GoogleFonts.roboto(
                          fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(width: 165),
                    Text(
                      status,
                      style: GoogleFonts.roboto(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff5089ff)),
                    ),
                  ],
                ),
              ),
              Divider(height: 15, indent: 5, endIndent: 10)
            ],
          ),
        ),
      ],
    );
  }
}

class ContractorListCard extends StatelessWidget {
  final String contractorName;
  final String contractorRole;
  final String totalAssignBuilding;
  const ContractorListCard(
      {super.key,
        required this.contractorName,
        required this.contractorRole,
        required this.totalAssignBuilding});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              foregroundImage: AssetImage('assets/images/techperson1.png'),
            ),
            title: Text(
              contractorName,
              style: GoogleFonts.workSans(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              contractorRole,
              style: GoogleFonts.workSans(
                  fontSize: 12, fontWeight: FontWeight.w400),
            ),
            trailing: Text(
              totalAssignBuilding,
              style: GoogleFonts.workSans(
                  fontSize: 10, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Divider(
          height: 5,
          indent: 10,
          endIndent: 10,
          thickness: 0,
        )
      ],
    );
  }
}

class TechListCard extends StatelessWidget {
  final String techName;
  final String techRole;
  final String totalAssign;
  final String totalworkCompleted;

  TechListCard(
      {super.key,
        required this.techName,
        required this.techRole,
        required this.totalAssign,
        required this.totalworkCompleted});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              foregroundImage: AssetImage('assets/images/techperson1.png'),
            ),
            title: Text(
              techName,
              style: GoogleFonts.workSans(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              techRole,
              style: GoogleFonts.workSans(
                  fontSize: 12, fontWeight: FontWeight.w400),
            ),
            trailing: Text(
              totalworkCompleted,
              style: GoogleFonts.workSans(
                  fontSize: 10, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Divider(
          height: 5,
          indent: 10,
          endIndent: 10,
          thickness: 0,
        )
      ],
    );
  }
}

class TenantListCard extends StatelessWidget {
  final String tenantName;
  final String apartmentNo;

  TenantListCard({
    super.key,
    required this.tenantName,
    required this.apartmentNo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: ListTile(
            leading: CircleAvatar(
              radius: 40,
              foregroundImage: AssetImage('assets/images/tenant1.png'),
            ),
            title: Text(
              tenantName,
              style: GoogleFonts.workSans(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              apartmentNo,
              style: GoogleFonts.workSans(
                  fontSize: 12, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Divider(
          height: 10,
          indent: 10,
          endIndent: 10,
          thickness: 0,
        )
      ],
    );
  }
}

class UserCardWidget extends StatefulWidget {
  final String imagePath;
  final double height;
  final double width;
  final String name;
  final String apartmentNumber;

  const UserCardWidget({
    Key? key,
    required this.imagePath,
    required this.height,
    required this.width,
    required this.name,
    required this.apartmentNumber,
  }) : super(key: key);

  @override
  State<UserCardWidget> createState() => _UserCardWidgetState();
}

class _UserCardWidgetState extends State<UserCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                widget.apartmentNumber,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
