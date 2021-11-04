
 
 
 class UserModel {
   static const PASSIONS_CYCLING = "CCN";
  static const PASSIONS_FOODIE = "FOD";
  static const PASSIONS_SPIRITUALITY = "STY";
  static const PASSIONS_MOVIES = "MVS";
  static const PASSIONS_TECHNOLOGY = "TNY";
  static const PASSIONS_YOGA = "YGA";
  static const PASSIONS_GOG_LOVER = "GLR";
  static const PASSIONS_CROSSFIT = "CST";
  static const PASSIONS_SWIMMING = "SMG";
  static const PASSIONS_BRUNCH = "BNH";

  static const PASSIONS_Picniking = "PCN";
  static const PASSIONS_Tattoos = "TOO";
  static const PASSIONS_Volunteering = "VTG";
  static const PASSIONS_Art = "ART";
  static const PASSIONS_Activism = "ACM";
  static const PASSIONS_Vegetarian = "VRA";
  static const PASSIONS_Walking = "WLG";

  static const PASSIONS_Theater = "THR";
  static const PASSIONS_Hiking = "HIN";
  static const PASSIONS_Blogging = "BLN";
  static const PASSIONS_Festivals = "FTL";
  static const PASSIONS_Dancing = "DAG";
  static const PASSIONS_Vlogging = "VGN";
  static const PASSIONS_Sushi = "SUI";
  static const PASSIONS_Craft_BEER = "CRR";
  static const PASSIONS_Soccer = "SCR";
  static const PASSIONS_Instagram = "ITM";

  static const PASSIONS_Baking = "BNG";
  static const PASSIONS_Snowboarding = "SRG";
  static const PASSIONS_Outdoors = "OOR";
  static const PASSIONS_Board = "BRD";
  static const PASSIONS_enviro = "ERO";
  static const PASSIONS_Surfing = "SNG";
  static const PASSIONS_Writer = "WTR";
  static const PASSIONS_Wine = "WNE";
  static const PASSIONS_Museum = "MUM";
  static const PASSIONS_Astrology = "ALY";
  static const PASSIONS_Sports = "SRS";

  static const PASSIONS_Tiktok = "TKT";
  static const PASSIONS_Diy = "DIY";
  static const PASSIONS_Disney = "DNY";
  static const PASSIONS_Apple = "APL";
  static const PASSIONS_Plant = "PAT";
  static const PASSIONS_Karaoke = "KAK";
  static const PASSIONS_CAT_LOVER = "CTR";
  static const PASSIONS_Photography = "PTA";
  static const PASSIONS_Gamer = "GMR";

  static const PASSIONS_Trivia = "TVI";
  static const PASSIONS_Music = "MIC";
  static const PASSIONS_Travel = "TVL";
  static const PASSIONS_Coffee = "CFE";
  static const PASSIONS_Language = "LGA";
  static const PASSIONS_Designer = "DNR";
  static const PASSIONS_Tea = "TEA"; 

    static List<String> getPassionsList() {
    List<String> list = [
      UserModel.PASSIONS_CYCLING,
      UserModel.PASSIONS_FOODIE,
      UserModel.PASSIONS_SPIRITUALITY,
      UserModel.PASSIONS_MOVIES,
      UserModel.PASSIONS_TECHNOLOGY,
      UserModel.PASSIONS_YOGA,
      UserModel.PASSIONS_GOG_LOVER,
      UserModel.PASSIONS_CROSSFIT,
      UserModel.PASSIONS_SWIMMING,
      UserModel.PASSIONS_BRUNCH,

      UserModel.PASSIONS_Picniking,
      UserModel.PASSIONS_Tattoos,
      UserModel.PASSIONS_Volunteering,
      UserModel.PASSIONS_Art,
      UserModel.PASSIONS_Activism,
      UserModel.PASSIONS_Vegetarian,
      UserModel.PASSIONS_Walking,

      UserModel.PASSIONS_Theater,
      UserModel.PASSIONS_Hiking,
      UserModel.PASSIONS_Blogging,
      UserModel.PASSIONS_Festivals,
      UserModel.PASSIONS_Dancing,
      UserModel.PASSIONS_Vlogging,
      UserModel.PASSIONS_Sushi,
      UserModel.PASSIONS_Craft_BEER,
      UserModel.PASSIONS_Soccer,
      UserModel.PASSIONS_Instagram,

      UserModel.PASSIONS_Baking,
      UserModel.PASSIONS_Snowboarding,
      UserModel.PASSIONS_Outdoors,
      UserModel.PASSIONS_Board,
      UserModel.PASSIONS_enviro,
      UserModel.PASSIONS_Surfing,
      UserModel.PASSIONS_Writer,
      UserModel.PASSIONS_Wine,
      UserModel.PASSIONS_Museum,
      UserModel.PASSIONS_Astrology,
      UserModel.PASSIONS_Sports,

      UserModel.PASSIONS_Tiktok,
      UserModel.PASSIONS_Diy,
      UserModel.PASSIONS_Disney,
      UserModel.PASSIONS_Apple,
      UserModel.PASSIONS_Plant,
      UserModel.PASSIONS_Karaoke,
      UserModel.PASSIONS_CAT_LOVER,
      UserModel.PASSIONS_Photography,
      UserModel.PASSIONS_Gamer,

      UserModel.PASSIONS_Trivia,
      UserModel.PASSIONS_Music,
      UserModel.PASSIONS_Travel,
      UserModel.PASSIONS_Coffee,
      UserModel.PASSIONS_Language,
      UserModel.PASSIONS_Designer,
      UserModel.PASSIONS_Tea,

      //""
    ];

    return list;
  }

   static String getPassions(String code) {
    switch (code) {

      case UserModel.PASSIONS_CYCLING:
        return "correr";

      case UserModel.PASSIONS_FOODIE:
        return "foodie";

      case UserModel.PASSIONS_SPIRITUALITY:
        return "spirituality";

      case UserModel.PASSIONS_MOVIES:
        return "movies";
      case UserModel.PASSIONS_Designer:
        return "Photoshoper";


      default:
        return "no_answer";
    }
  }

 }
 
 
 

