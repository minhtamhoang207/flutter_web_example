import 'package:dio/dio.dart';
import 'package:flutter_web_example/model/coffee.dart';
import 'package:retrofit/http.dart';

part 'coffee_service.g.dart';

@RestApi(baseUrl: 'https://api.sampleapis.com/coffee')
abstract class CoffeeService {
  factory CoffeeService(Dio dio) = _CoffeeService;

  @GET("/{type}")
  Future<List<Coffee>> getListCoffee({@Path("type") required String type});

}