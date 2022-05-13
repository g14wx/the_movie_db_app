import 'package:injectable/injectable.dart';
import 'package:the_movie_db_app/Utils/Envs/protocols/i_env_tmdb.dart';

@Injectable(as: IEnvTMDB)
class ProductionEnvTMDB implements IEnvTMDB {

  @override
  String HOSTNAME = "api.themoviedb.org";

  @override
  String LOGIN_API_PATH = "/authentication/token/validate_with_login";

  @override
  String CREATE_TOKEN_PATH = "/authentication/token/new";

  @override
  String API_KEY = "7f5a5827f6eca5ccb9d48a131753b98b";

  @override
  String SESSION_PATH = "/authentication/session/new";

  @override
  String VERSION_PATH= "/3";

  @override
  String HTTPS = "https://";

  @override
  String GET_ALL_MOVIES="/movie/popular";

  @override
  String FETCH_POSTER_PATH= "https://image.tmdb.org/t/p/original/";

  @override
  String SERCH_MOVIE_PATH= "/search/movie";

  @override
  String SUGGESTIONS_PATH = "/movie/";

}