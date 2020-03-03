import 'package:http/http.dart' as http;

String baseUrl = 'http://192.168.1.100:1337';
Uri globalBaseUri = Endpoint.setBaseUrl(baseUrl);
Map<String, String> globalHeaders = {};

class Endpoint {
  Endpoint({method, path});
  Endpoint.to(this.method, this.path);
  String method;
  String path;
  Map<String, String> headers = {};

  static void setGlobalHeaders(Map<String, String> headers) =>
      globalHeaders.addAll(headers);

  static Uri baseUrl;
  static Uri setBaseUrl(url) => Endpoint.baseUrl = Uri.parse(url);

  String resolveParams(params) {
    List pathFragment = path.split('/');
    pathFragment = pathFragment.map((word) {
      List colonParam = word.split(':');
      if (colonParam.length > 1) {
        if (params[colonParam[1]] == null) {
          print('Warning: $colonParam not found in Map params');
          return word;
        }
        return params[colonParam[1]];
      }
      return word;
    }).toList();
    return pathFragment.join('/');
  }

  Future fetch({headers, body, params}) async {
    this.headers.addAll(globalHeaders ?? {});
    this.headers.addAll(headers ?? {});
    path = globalBaseUri.resolve(resolveParams(params)).toString();
    switch (method.toLowerCase()) {
      case 'post':
        return http.post(path, headers: this.headers, body: body);
        break;
      case 'put':
        return http.put(path, headers: this.headers, body: body);
        break;
      case 'delete':
        return http.delete(path, headers: this.headers);
        break;
      default:
        return http.get(path, headers: this.headers);
    }
  }
}
