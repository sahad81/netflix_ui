import 'package:netfilx_app_ui_api/core/strings.dart';
import 'package:netfilx_app_ui_api/infrastruture/api_key.dart';

class ApiEnpoints{
static const apidownloads="$kbaseurl/trending/all/day?api_key=$apikey";
static const apiforsearch="$kbaseurl/search/movie?api_key=$apikey&query=";
static const apiforNewAndHotComimgSoon='$kbaseurl/discover/movie?api_key=$apikey';
static const apiforNewAndHotEveryoneisWatching='$kbaseurl/discover/tv?api_key=$apikey';
} 