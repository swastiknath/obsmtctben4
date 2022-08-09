enum ImageStates {none, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve}

extension ImageStatesToggler on ImageStates {

  String get imageURL {

    switch (this){
      case ImageStates.one:
        return 'https://res.cloudinary.com/theobservation/image/upload/v1660081205/1_yisisf.jpg';

      case ImageStates.two:
        return 'https://res.cloudinary.com/theobservation/image/upload/v1660081205/2_eztenf.jpg';

      case ImageStates.three:
        return 'https://res.cloudinary.com/theobservation/image/upload/v1660081205/3_xtqb9l.jpg';

      case ImageStates.four:
        return 'https://res.cloudinary.com/theobservation/image/upload/v1660081204/4_wdxi3r.jpg';

      case ImageStates.five:
        return 'https://res.cloudinary.com/theobservation/image/upload/v1660081205/5_c10dnk.jpg';

      case ImageStates.six:
        return 'https://res.cloudinary.com/theobservation/image/upload/v1660081204/6_qnkgee.jpg';

      case ImageStates.seven:
        return 'https://res.cloudinary.com/theobservation/image/upload/v1660081205/7_wv1vxh.jpg';

      case ImageStates.eight:
        return 'https://res.cloudinary.com/theobservation/image/upload/v1660081206/8_spid7l.jpg';

      case ImageStates.nine:
        return 'https://res.cloudinary.com/theobservation/image/upload/v1660081206/9_vyfscv.jpg';

      case ImageStates.ten:
        return 'https://res.cloudinary.com/theobservation/image/upload/v1660081206/10_bgy23g.jpg';

      case ImageStates.eleven:
        return 'https://res.cloudinary.com/theobservation/image/upload/v1660081209/11_oheak9.jpg';

      case ImageStates.twelve:
        return 'https://res.cloudinary.com/theobservation/image/upload/v1660081206/12_x9yydi.jpg';

      default:
        return '';
    }
  }


  int get stateNumber {

    switch(this){
      case ImageStates.one:
        return 1;

      case ImageStates.two:
        return 2;

      case ImageStates.three:
        return 3;

      case ImageStates.four:
        return 4;

      case ImageStates.five:
        return 5;

      case ImageStates.six:
        return 6;

      case ImageStates.seven:
        return 7;

      case ImageStates.eight:
        return 8;

      case ImageStates.nine:
        return 9;

      case ImageStates.ten:
        return 10;

      case ImageStates.eleven:
        return 11;

      case ImageStates.twelve:
        return 12;

      default:
        return 0;
    }

  }

}