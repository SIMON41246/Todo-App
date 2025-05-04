import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CustomTextStrings {
  static const String ONBOARDING_COMPLETED = 'onboarding_completed';
  CustomTextStrings._();

  /// ONBOARDING

  static const String HOME = '/home';

  static String THEME_KEY = 'themeMode';

  final List<Map<String, dynamic>> comments = [
    {
      "comment_number": 1,
      "username": "LunaFlow",
      "title": "Absolutely love this app!",
      "comment":
          "I've tried dozens of similar apps, but this one stands out for its ease of use and the incredible results it delivers. The UI is intuitive and the performance is smooth. Kudos to the developers!"
    },
    {
      "comment_number": 2,
      "username": "MaxOnTrack",
      "title": "Incredible experience",
      "comment":
          "Honestly, I wasn’t expecting much, but this app completely blew me away. It's fast, reliable, and packed with powerful features. It's now part of my daily workflow."
    },
    {
      "comment_number": 3,
      "username": "EchoWave",
      "title": "Unique and creative tool",
      "comment":
          "What I love most is how creative I feel when I use this app. It lets me turn basic ideas into amazing visuals without much effort. Perfect for anyone in the creative space!"
    },
    {
      "comment_number": 4,
      "username": "NoraPixel",
      "title": "Changed the way I work",
      "comment":
          "I’ve recommended this to several friends already. It’s rare to find something that’s both powerful and fun to use. Everything just works like magic."
    },
    {
      "comment_number": 5,
      "username": "ZaneVision",
      "title": "Mind-blowing results",
      "comment":
          "Beautiful interface, quick rendering, and the results are surprisingly high quality. I love the variety of styles and the customizations available."
    },
    {
      "comment_number": 6,
      "username": "NovaStream",
      "title": "So much fun to use",
      "comment":
          "Great job on making something this creative and still so accessible. I’m using it both for fun and for client work. It’s flexible enough to do both."
    },
    {
      "comment_number": 7,
      "username": "KaiVibe",
      "title": "Better than expected",
      "comment":
          "From the moment I installed this app, I was hooked. The updates keep making it better and better. Can’t wait to see what’s next!"
    },
    {
      "comment_number": 8,
      "username": "SkyPulse",
      "title": "Highly recommend it",
      "comment":
          "If you’re on the fence, just try it. You’ll be impressed. There’s nothing else quite like it out there. The team behind this clearly knows what they’re doing."
    },
    {
      "comment_number": 9,
      "username": "MiraQuest",
      "title": "Exactly what I needed",
      "comment":
          "One of the best discoveries I’ve made this year. It’s rare I leave reviews, but this app truly deserves it. Top marks!"
    },
    {
      "comment_number": 10,
      "username": "LeoFusion",
      "title": "Can't stop using it",
      "comment":
          "It feels like having a creative assistant in your pocket. I can brainstorm ideas visually in seconds. Super helpful for content planning."
    },
    {
      "comment_number": 11,
      "username": "CloudWanderer",
      "title": "Creative and inspiring",
      "comment":
          "So many smart touches in the design. It’s obvious a lot of thought went into the user experience. I find myself opening it just to play around!"
    },
    {
      "comment_number": 12,
      "username": "SolarNova",
      "title": "Simple yet powerful",
      "comment":
          "I use it mainly for social media visuals and it’s a game-changer. Speeds up my content production by a lot."
    },
    {
      "comment_number": 13,
      "username": "PixelCraze",
      "title": "One of a kind",
      "comment":
          "Been looking for something like this forever. Finally, an app that makes creativity feel effortless."
    },
    {
      "comment_number": 14,
      "username": "WaveCraft",
      "title": "Exceeded expectations",
      "comment":
          "Not only is it functional, but it’s also really fun. It makes creating feel like a game, and that’s hard to pull off."
    },
    {
      "comment_number": 15,
      "username": "NeoPath",
      "title": "Fantastic UI and features",
      "comment":
          "The rendering speed is impressive and the results are consistently good. Very happy I found this."
    },
    {
      "comment_number": 16,
      "username": "AuraMode",
      "title": "A must-have for creators",
      "comment":
          "Highly recommend this to any designers or marketers out there. It saves time and makes you look good!"
    },
    {
      "comment_number": 17,
      "username": "DreamTrail",
      "title": "Well designed and intuitive",
      "comment":
          "The app is smooth, the UI is clean, and the output looks professional. What more could you ask for?"
    },
    {
      "comment_number": 18,
      "username": "PulseForge",
      "title": "Super smooth and fast",
      "comment":
          "I like how it mixes creativity with productivity. I’m more inspired now than I was before I started using it."
    },
    {
      "comment_number": 19,
      "username": "VisionBloom",
      "title": "Worth every penny",
      "comment":
          "This is what AI tools should feel like — empowering, quick, and easy to use. Well done."
    },
    {
      "comment_number": 20,
      "username": "SparkLogic",
      "title": "Truly addictive!",
      "comment":
          "Can’t believe this is on mobile. The quality is desktop-level. Fantastic!"
    }
  ];
}

const storage = FlutterSecureStorage();
