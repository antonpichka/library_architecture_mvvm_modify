import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';

class NetworkException extends BaseException {
  final int _statusCode;
  final String _nameStatusCode;
  final String _descriptionStatusCode;

  NetworkException(
      String nameClassWhereWasTheMistake,
      this._statusCode,
      this._nameStatusCode,
      this._descriptionStatusCode) : super((NetworkException).toString(),nameClassWhereWasTheMistake);

  static NetworkException byStatusCode(String nameClassWhereWasTheMistake,int statusCode)  {
    return _DataInMapNetworkException.getMapCodeAndNetworkException(nameClassWhereWasTheMistake)[statusCode];
  }

  int get getStatusCode {
    return _statusCode;
  }

  String get getNameStatusCode {
    return _nameStatusCode;
  }

  String get getDescriptionStatusCode {
    return _descriptionStatusCode;
  }

  @override
  String exceptionInString() {
    return "\n - StatusCode($_statusCode\n)\n - NameStatusCode($_nameStatusCode\n)\n - DescriptionStatusCode($_descriptionStatusCode\n)";
  }
}

class _DataInMapNetworkException {
  static Map<int,NetworkException> getMapCodeAndNetworkException(String nameClassWhereWasTheMistake) {
    return {
      201: NetworkException(
          nameClassWhereWasTheMistake,
          201,
          '201 Created',
          'The request has been fulfilled and resulted in a new resource being created.'
      ),
      202: NetworkException(
          nameClassWhereWasTheMistake,
          202,
          '202 Accepted',
          'The request has been accepted for processing, but the processing has not been completed.'
      ),
      203: NetworkException(
          nameClassWhereWasTheMistake,
          203,
          '203 Non-Authoritative Information',
          'The returned metaInformation in the entity-header is not the definitive set as available from the origin server, but is gathered from a local or a third-party copy.'
      ),
      204: NetworkException(
          nameClassWhereWasTheMistake,
          204,
          '204 No Content',
          'The server has fulfilled the request but does not need to return an entity-body, and might want to return updated metaInformation.'
      ),
      205: NetworkException(
          nameClassWhereWasTheMistake,
          205,
          '205 Reset Content',
          'The server has fulfilled the request and the user agent SHOULD reset the document view which caused the request to be sent.'
      ),
      206: NetworkException(
        nameClassWhereWasTheMistake,
        206,
        '206 Partial Content',
        'The server has fulfilled the partial GET request for the resource.',
      ),
      300: NetworkException(
        nameClassWhereWasTheMistake,
        300,
        '300 Multiple Choices',
        'User (or user agent) can select a preferred representation and redirect its request to that location.',
      ),
      301: NetworkException(
        nameClassWhereWasTheMistake,
        301,
        '301 Moved Permanently',
        'The requested resource has been assigned a new permanent URI and any future references to this resource SHOULD use one of the returned URIs.',
      ),
      302: NetworkException(
        nameClassWhereWasTheMistake,
        302,
        '302 Found',
        'The requested resource resides temporarily under a different URI.',
      ),
      303: NetworkException(
        nameClassWhereWasTheMistake,
        303,
        '303 See Other',
        'The response to the request can be found under a different URI and SHOULD be retrieved using a GET method on that resource.',
      ),
      304: NetworkException(
        nameClassWhereWasTheMistake,
        304,
        '304 Not Modified',
        'If the client has performed a conditional GET request and access is allowed, but the document has not been modified, the server SHOULD respond with this status code.',
      ),
      305: NetworkException(
          nameClassWhereWasTheMistake,
          305,
          '305 Use Proxy',
          'The requested resource MUST be accessed through the proxy given by the Location field.'
      ),
      307: NetworkException(
          nameClassWhereWasTheMistake,
          307,
          '307 Temporary Redirect',
          'The requested resource resides temporarily under a different URI.'
      ),
      400: NetworkException(
          nameClassWhereWasTheMistake,
          400,
          '400 Bad Request',
          'The request could not be understood by the server due to malformed syntax.'
      ),
      401: NetworkException(
          nameClassWhereWasTheMistake,
          401,
          '401 Unauthorized',
          'The request requires user authentication.'
      ),
      403: NetworkException(
          nameClassWhereWasTheMistake,
          403,
          '403 Forbidden',
          'The server understood the request, but is refusing to fulfill it.'
      ),
      404: NetworkException(
          nameClassWhereWasTheMistake,
          404,
          '404 Not Found',
          'The server has not found anything matching the Request-URI.'
      ),
      405: NetworkException(
          nameClassWhereWasTheMistake,
          405,
          '405 Method Not Allowed',
          'The method specified in the Request-Line is not allowed for the resource identified by the Request-URI.'
      ),
      406: NetworkException(
          nameClassWhereWasTheMistake,
          406,
          '406 Not Acceptable',
          'The resource identified by the request is only capable of generating response entities which have content characteristics not acceptable according to the accept headers sent in the request.'
      ),
      407: NetworkException(
          nameClassWhereWasTheMistake,
          407,
          '407 Proxy Authentication Required',
          'This code is similar to 401 (Unauthorized), but indicates that the client must first authenticate itself with the proxy.'
      ),
      408: NetworkException(
          nameClassWhereWasTheMistake,
          408,
          '408 Request Timeout',
          'The client did not produce a request within the time that the server was prepared to wait.'
      ),
      409: NetworkException(
          nameClassWhereWasTheMistake,
          409,
          '409 Conflict',
          'The request could not be completed due to a conflict with the current state of the resource.'
      ),
      410: NetworkException(
          nameClassWhereWasTheMistake,
          410,
          '410 Gone',
          'The requested resource is no longer available at the server and no forwarding address is known.'
      ),
      411: NetworkException(
          nameClassWhereWasTheMistake,
          411,
          '411 Length Required',
          'The server refuses to accept the request without a defined Content- Length.'
      ),
      412: NetworkException(
          nameClassWhereWasTheMistake,
          412,
          '412 Precondition Failed',
          'The precondition given in one or more of the request-header fields evaluated to false when it was tested on the server.'
      ),
      413: NetworkException(
          nameClassWhereWasTheMistake,
          413,
          '413 Request Entity Too Large',
          'The server is refusing to process a request because the request entity is larger than the server is willing or able to process.'
      ),
      414: NetworkException(
          nameClassWhereWasTheMistake,
          414,
          '414 Request-URI Too Long',
          'The server is refusing to service the request because the Request-URI is longer than the server is willing to interpret.'
      ),
      415: NetworkException(
          nameClassWhereWasTheMistake,
          415,
          '415 Unsupported Media Type',
          'The server is refusing to service the request because the entity of the request is in a format not supported by the requested resource for the requested method.'
      ),
      416: NetworkException(
          nameClassWhereWasTheMistake,
          416,
          '416 Requested Range Not Satisfiable',
          'A server SHOULD return a response with this status code if a request included a Range request-header field (section 14.35), and none of the range-specifier values in this field overlap the current extent of the selected resource, and the request did not include an If-Range request-header field.'
      ),
      417: NetworkException(
          nameClassWhereWasTheMistake,
          417,
          '417 Expectation Failed',
          'The expectation given in an Expect request-header field (see section 14.20) could not be met by this server.'
      ),
      500: NetworkException(
          nameClassWhereWasTheMistake,
          500,
          '500 Internal Server Error',
          'The server encountered an unexpected condition which prevented it from fulfilling the request.'
      ),
      501: NetworkException(
          nameClassWhereWasTheMistake,
          501,
          '501 Not Implemented',
          'The server does not support the functionality interface_function_view_model to fulfill the request.'
      ),
      502: NetworkException(
          nameClassWhereWasTheMistake,
          502,
          '502 Bad Gateway',
          'The server, while acting as a gateway or proxy, received an invalid response from the upstream server it accessed in attempting to fulfill the request.'
      ),
      503: NetworkException(
          nameClassWhereWasTheMistake,
          503,
          '503 Service Unavailable',
          'The server is currently unable to handle the request due to a temporary overloading or maintenance of the server.'
      ),
      504: NetworkException(
          nameClassWhereWasTheMistake,
          504,
          '504 Gateway Timeout',
          'The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server specified by the URI.'
      ),
      505: NetworkException(
          nameClassWhereWasTheMistake,
          505,
          '505 HTTP Version Not Supported',
          'The server does not support, or refuses to support, the HTTP protocol version that was used in the request message.'
      )
    };
  }
}
