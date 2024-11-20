import 'package:flutter/material.dart';

class ContractorWorkUpdateTab extends StatefulWidget {
  final String status;

  const ContractorWorkUpdateTab ({Key? key, required this.status}) : super(key: key);

  @override
  State<ContractorWorkUpdateTab> createState() => _ContractorWorkUpdateTabState();
}

class _ContractorWorkUpdateTabState extends State<ContractorWorkUpdateTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  ChatBubble(
                    message: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    isTechnician: false,
                    time: "12:30 PM",
                  ),
                  ChatBubble(
                    message: "Great! Thank you.",
                    isTechnician: true,
                    time: "12:32 PM",
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Type Anything....",
                              hintStyle: TextStyle(color: Color(0xFF8F8F8F)),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 16),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.emoji_emotions, color: Colors.grey),
                          onPressed: () {
                            // Implement smiley functionality here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 4),
                IconButton(
                  icon: Icon(Icons.send, color: Color(0xFF646464)),
                  onPressed: () {
                    // Implement sending message functionality here
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isTechnician;
  final String time;

  const ChatBubble({
    Key? key,
    required this.message,
    required this.isTechnician,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isTechnician ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: isTechnician ? MediaQuery.of(context).size.width * 0.4 : MediaQuery.of(context).size.width * 0.9,
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 7),
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: isTechnician ? Radius.circular(0) : Radius.circular(12),
                bottomRight: isTechnician ? Radius.circular(12) : Radius.circular(0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isTechnician) ...[
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 14,
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "James Bond",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                ],
                Text(
                  message,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
