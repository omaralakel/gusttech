import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:win/screens/screens.dart';

import '../helpers.dart';
import '../models/models.dart';
import '../theme.dart';
import '../widgets/avatar.dart';

class MessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: _Stories(),
        ),
        SliverList(
          delegate:
           SliverChildBuilderDelegate(
             _delegate
          ),
        ),
      ],
    );
  }
  Widget _delegate(BuildContext context, int index) {
    final Faker faker = Faker();
    final date = Helpers.randomDate();

            return MessageTitle(
              messageData: MessageData(
                senderName: faker.person.name(),
                message: faker.lorem.sentence(),
                messageData: date,
                dateMessage: Jiffy(date).fromNow(),
                profilePicture: Helpers.randomPictureUrl(),
                  )
                );
            }
}




class MessageTitle extends StatelessWidget {
  MessageTitle({required this.messageData});

  final MessageData messageData;
  
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(ChatScreen.route(messageData));
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Avatar.medium(url: messageData.profilePicture),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      messageData.senderName,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        letterSpacing: 0.2,
                        wordSpacing: 0.5,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(child: Text(
                    messageData.message,
                    style: const TextStyle(
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
                            messageData.dateMessage.toUpperCase(),
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











class _Stories extends StatelessWidget {
  const _Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        elevation: 0,
        child: SizedBox(
          height: 140,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 8, bottom: 16),
                child: Text(
                  'Stories',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                    color: AppColors.textFaded,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    final faker = Faker();
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 60,
                        child: _StoryCard(
                          storyData: StoryData(
                            name: faker.person.firstName(),
                            url: Helpers.randomPictureUrl(),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




class _StoryCard extends StatelessWidget {
  const _StoryCard({
    Key? key,
    required this.storyData,
  }) : super(key: key);

  final StoryData storyData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Avatar.medium(url: storyData.url),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              storyData.name,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 11,
                letterSpacing: 0.3,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}