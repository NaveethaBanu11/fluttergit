import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OverviewTab extends StatelessWidget {
  final String requestNo;
  final String apartmentNo;
  final String description;
  final String name;
  final String beforeImages;
  final String afterImages;

  OverviewTab({
    Key? key,
    required this.beforeImages,
    required this.apartmentNo,
    required this.description,
    required this.requestNo,
    required this.name,
    required this.afterImages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 5),
        child: SingleChildScrollView(
            child: Form(
                child: Column(
                  children: [
                    ListTile(
                      leading: Text(
                        requestNo,
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                      title: Text(
                        name,
                        style: GoogleFonts.roboto(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Divider(
                      height: 3,
                      indent: 15,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 15, right: 20),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'ApartMent Cleaning\nand maintance',
                                      style: GoogleFonts.roboto(
                                          fontSize: 20, fontWeight: FontWeight.bold),
                                    ),
                                    const Image(
                                      image: ExactAssetImage(
                                          'assets/images/apartment&cleaning.png'),
                                    )
                                  ]))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 200),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '26 Jan, 2022',
                            style: GoogleFonts.roboto(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(width: 25),
                          Text(
                            'In-Progress',
                            style: GoogleFonts.roboto(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.home_outlined,
                            size: 25,
                            color: Color(0xff4b4b4b),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            apartmentNo,
                            style: GoogleFonts.workSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff4b4b4b)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.message_outlined,
                              size: 25, color: Color(0xff4b4b4b)),
                          const SizedBox(width: 10),
                          Text(
                            'Description',
                            style: GoogleFonts.workSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff4b4b4b)),
                          ),
                          const Divider(height: 20),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: TextFormField(
                        // controller: descriptionController,
                        enabled: false,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry since the 1500s',
                          contentPadding: EdgeInsets.only(left: 30),
                        ),
                        maxLines: 5,
                      ),
                    ),
                    // Padding(
                    //     padding: EdgeInsets.only(top: 10, left: 50, right: 20),
                    //     child: Text(
                    //       description,
                    //       textAlign: TextAlign.right,
                    //       maxLines: 5,
                    //     )),

                    // Padding(
                    //   padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                    //   child: TextFormField(
                    //     controller: description,
                    //     decoration: InputDecoration(
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(5),
                    //       ),
                    //       hintText:
                    //           'Lorem Ipsum is simply dummy text of the printing and typesetting industry.since the 1500s',
                    //     ),
                    //     maxLines: 5,
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.description_outlined,
                            size: 25,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Document',
                            style: GoogleFonts.workSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4b4b4b)),
                          ),
                          // Divider(height: 20),
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     children: [
                    //       GestureDetector(
                    //           onTap: getImage,
                    //           child: Container(
                    //               height: 80,
                    //               width: 100,
                    //               decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(5),
                    //                   border: Border(),
                    //                   color: Colors.grey.shade200),
                    //               child: _image == null
                    //                   ? Icon(
                    //                       Icons.add,
                    //                       color: Colors.white,
                    //                       size: 50,
                    //                     )
                    //                   : Image.file(_image!))),
                    //       SizedBox(width: 5),
                    //       GestureDetector(
                    //           onTap: getImage,
                    //           child: Container(
                    //               height: 80,
                    //               width: 100,
                    //               decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(5),
                    //                   border: Border(),
                    //                   color: Colors.grey.shade200),
                    //               child: _image == null
                    //                   ? Icon(
                    //                       Icons.add,
                    //                       color: Colors.white,
                    //                       size: 50,
                    //                     )
                    //                   : Image.file(_image!))),
                    //       SizedBox(width: 5),
                    //       GestureDetector(
                    //           onTap: getImage,
                    //           child: Container(
                    //               height: 80,
                    //               width: 100,
                    //               decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(5),
                    //                   border: Border(),
                    //                   color: Colors.grey.shade200),
                    //               child: _image == null
                    //                   ? Icon(
                    //                       Icons.add,
                    //                       color: Colors.white,
                    //                       size: 50,
                    //                     )
                    //                   : Image.file(_image!))),
                    //     ],
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 50, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 80,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.shade200,
                              border: Border.all(
                                color: Colors.grey.shade400,
                                width: 2,
                              ),
                            ),
                            child: Image.asset(beforeImages, fit: BoxFit.cover),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            height: 80,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.shade200,
                              border: Border.all(
                                color: Colors.grey.shade400,
                                width: 2,
                              ),
                            ),
                            child: Image.asset(afterImages, fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}
