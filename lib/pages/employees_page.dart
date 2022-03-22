import 'dart:html';

import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets/avatar.dart';

class WorkersProfile extends StatelessWidget {

  // final MessageData messageData;
  
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(ChatScreen.route(messageData));
      },
      child: Container(
        height: 100,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.2,
            )
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Avatar.medium(url: "https://imageio.forbes.com/specials-images/imageserve/61688aa1d4a8658c3f4d8640/Antonio-Juliano/0x0.jpg?fit=bounds&format=jpg&width=960"),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Ahmed",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        letterSpacing: 0.2,
                        wordSpacing: 0.5,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(child: Text(
                    "h",
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textFaded,
                    ),
                    overflow: TextOverflow.ellipsis,),
                    height: 18,),
                  ],
                )
              ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            DateTime.now().day.toString().toUpperCase(),
                            style: const TextStyle(
                              fontSize: 11,
                              letterSpacing: -0.2,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textFaded,
                            ),
                          ),
                          // _buildLastMessageAt(),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 18,
                            height: 18,
                            decoration: const BoxDecoration(
                              color: AppColors.secondary,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.textLigth,
                                ),
                              ),
                            ),
                          ),
                          // Center(
                          //   child: UnreadIndicator(
                          //     channel: channel,
                          //   ),
                          // )
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



class EmployeesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: WorkersProfile(),
    );
  }
}