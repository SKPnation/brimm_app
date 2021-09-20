import 'package:brimm_app/screens/activity/activity.dart';
import 'package:brimm_app/screens/authentication/signUp_signIn_screen.dart';
import 'package:brimm_app/screens/chat/chat_screen.dart';
import 'package:brimm_app/screens/chat/chatroom_screen.dart';
import 'package:brimm_app/screens/chat/my_chats_screen.dart';
import 'package:brimm_app/screens/chat/public_chats_screen.dart';
import 'package:brimm_app/screens/dashboard/dashboard.dart';
import 'package:brimm_app/screens/explore/explore_screen.dart';
import 'package:brimm_app/screens/home/comments_screen.dart';
import 'package:brimm_app/screens/onboarding/onboarding_screen.dart';
import 'package:brimm_app/screens/profile/Profile.dart';
import 'package:brimm_app/screens/sharePost/share_post.dart';
import 'package:brimm_app/screens/sharePost/topic_list_screen.dart';
import 'package:brimm_app/screens/splash_screen.dart';
import 'package:brimm_app/screens/topics/follow_topics_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/explore/company_review.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brimm',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/onBoarding', page: () => OnBoardingScreen()),
        GetPage(name: '/signUpSignIn', page: () => SignUpSignIn()),
        GetPage(name: '/followTopics', page: () => FollowTopicsScreen()),
        GetPage(name: '/dashboard', page: () => Dashboard()),
        GetPage(name: '/comments', page: () => CommentsScreen()),
        GetPage(name: '/explore', page: () => ExploreScreen()),
        GetPage(name: '/activity', page: () => ActivityScreen()),
        GetPage(name: '/profile', page: () => ProfileScreen()),
        GetPage(name: '/allChats', page: () => ChatScreen()),
        GetPage(name: '/myChats', page: () => MyChatsScreen()),
        GetPage(name: '/publicChats', page: () => PublicChatScreen()),
        GetPage(name: '/chatRoom', page: () => ChatroomScreen()),
        GetPage(name: '/topics', page: () => TopicsScreen()),
        GetPage(name: '/sharePost', page: () => SharePostScreen()),
        GetPage(name: '/companyReview', page: () => CompanyReviewScreen()),
      ],
    );
  }
}