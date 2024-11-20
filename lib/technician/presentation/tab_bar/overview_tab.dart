import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class OverviewTab extends StatefulWidget {
  const OverviewTab({super.key});

  @override
  State<OverviewTab> createState() => _OverviewTabState();
}

class _OverviewTabState extends State<OverviewTab> {
  List<String> _imageUrls = []; // Store uploaded image URLs
  String _status = 'Open'; // Initial status value

  // Method to pick an image from gallery and add to the list
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageUrls.add(pickedFile.path); // Add the picked image path
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // #321 Text
            Text(
              '#321',
              style: TextStyle(
                fontSize: 18,
                color: const Color(0xFF262263),
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 0),
            Divider(
              color: const Color(0x8F8F8F66),
              thickness: 1,
            ),
            const SizedBox(height: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, bottom: 5.0),
                  child: Text(
                    'Apartment Cleaning\nand Maintenance',
                    style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/detail_image.png',
                  width: 120,
                  height: 100,
                ),
              ],
            ),
            const SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: Text(
                      '26 Jan, 2022',
                      style: GoogleFonts.workSans(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      DropdownButton<String>(
                        value: _status,
                        icon: const Icon(Icons.arrow_drop_down, color: Color(0xFF1C8B0B)),
                        underline: Container(),
                        items: <String>['Open', 'In Progress', 'Completed']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: GoogleFonts.workSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: value == 'Open'
                                    ? const Color(0xFF1C8B0B)
                                    : Colors.grey[700],
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _status = newValue!;
                          });
                        },
                      ),
                    ],
                  ),

                  const SizedBox(width: 13),
                  // Padding(
                  //   padding: const EdgeInsets.only(bottom: 0.0),
                  //   child: Text(
                  //     'Open',
                  //     style: GoogleFonts.workSans(
                  //       fontSize: 14,
                  //       fontWeight: FontWeight.w600,
                  //       color: const Color(0xFF1C8B0B),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(height: 0),
            Row(
              children: [
                Icon(Icons.home_outlined, color: Color(0xFF4B4B4B)),
                const SizedBox(width: 7),
                Text(
                  'AP1-B2/743',
                  style: GoogleFonts.workSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4B4B4B),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.message_outlined, color: Color(0xFF4B4B4B)),
                const SizedBox(width: 7),
                Text(
                  'Description',
                  style: GoogleFonts.workSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4B4B4B),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                style: GoogleFonts.workSans(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.file_copy_outlined, color: Color(0xFF4B4B4B)),
                const SizedBox(width: 5),
                Text(
                  'Document',
                  style: GoogleFonts.workSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4B4B4B),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Document Thumbnails Row
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                children: [
                  // Show all uploaded images as thumbnails
                  ..._imageUrls.map((imageUrl) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: _buildDocumentThumbnail(imageUrl),
                  )),
                  // Show "+" icon if less than 5 images uploaded
                  if (_imageUrls.length < 5)
                    GestureDetector(
                      onTap: _pickImage, // Pick an image on tap
                      child: _buildAddIcon(),
                    ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  // Widget to build the "+" icon button for adding images
  Widget _buildAddIcon() {
    return Container(
      width: 66,
      height: 49,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        border: Border.all(color: Colors.grey),
        color: Colors.grey[300],
      ),
      child: Center(
        child: Icon(
          Icons.add,
          color: Color(0xFF8F8F8F),
          size: 30,
        ),
      ),
    );
  }

  // Widget to build document thumbnail with border radius
  Widget _buildDocumentThumbnail(String imageUrl) {
    return Container(
      width: 66,
      height: 49,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        border: Border.all(color: Colors.grey),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.file(
          File(imageUrl),
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Icon(
            Icons.error,
            color: Colors.grey,
            size: 100,
          ),
        ),
      ),
    );
  }
}
