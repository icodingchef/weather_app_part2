import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherIcon {
  Widget? getWeatherIcon(int condition) {
    if (condition < 300) {
      // 천둥 번개를 동반한 강한 비
      return SvgPicture.asset(
        'svg/colud_lightning.svg',
        colorFilter: const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
      );
    } else if (condition < 600) {
      // 가는 비와 일반적인 비
      return SvgPicture.asset(
        'svg/cloud_rain.svg',
        colorFilter: const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
      );
    } else if (condition < 700) {
      // 흐리고 눈
      return SvgPicture.asset(
        'svg/cloud_snow_alt.svg',
        colorFilter: const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
      );
    } else if (condition == 800) {
      // 맑은 하늘
      return SvgPicture.asset(
        'svg/sun.svg',
        colorFilter: const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
      );
    } else if (condition <= 804) {
      // 구름 낀 하늘
      return SvgPicture.asset(
        'svg/cloud_sun.svg',
        colorFilter: const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
      );
    }
    return null; // 그 외 해당사항에 없을 땐 null 값 반환
  }
}
