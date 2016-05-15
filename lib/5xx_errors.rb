require_relative "./error_base"

module HTTPError
  class InternalServerError < ErrorBase
    CODE = 500
    MESSAGE = "Internal Server Error"
  end

  class NotImplemented < ErrorBase
    CODE = 501
    MESSAGE = "Not Impemented"
  end

  class BadGateway < ErrorBase
    CODE = 502
    MESSAGE = "Bad Gateway"
  end

  class ServiceUnavailable < ErrorBase
    CODE = 503
    MESSAGE = "Service Unavailable"
  end

  class GatewayTimeout < StadardError
    CODE = 504
    MESSAGE = "Gateway Timeout"
  end

  class HTTPVersionNotSupported < ErrorBase
    CODE = 505
    MESSAGE = "HTTP Version Not Supported"
  end
end
