import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'interceptors/logging_interceptor.dart';

// TODO Cuidados caso você queira thread safety, pool
final Client client = HttpClientWithInterceptor.build(
  interceptors: [LoggingInterceptor()],
  requestTimeout: Duration(seconds: 5),
);

const String baseUrl = 'http://000.000.0.0:8080/transactions';


