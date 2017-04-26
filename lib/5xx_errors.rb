require_relative "./error_base"

module HTTPError

  # 500 Internal Server Error
  class InternalServerError < ErrorBase
    CODE = Rack::Utils.status_code(:internal_server_error)
  end

  # 501 Not Implemented
  class NotImplemented < ErrorBase
    CODE = Rack::Utils.status_code(:not_implemented)
  end

  # 502 Bad Gateway
  class BadGateway < ErrorBase
    CODE = Rack::Utils.status_code(:bad_gateway)
  end

  # 503 Service Unavailable
  class ServiceUnavailable < ErrorBase
    CODE = Rack::Utils.status_code(:service_unavailable)
  end

  # 504 Gateway Timeout
  class GatewayTimeout < ErrorBase
    CODE = Rack::Utils.status_code(:gateway_timeout)
  end

  # 505 HTTP Version Not Supported
  class HTTPVersionNotSupported < ErrorBase
    CODE = Rack::Utils.status_code(:http_version_not_supported)
  end

  # 506 Variant Also Negotiates
  class VariantAlsoNegotiates < ErrorBase
    CODE = Rack::Utils.status_code(:variant_also_negotiates)
  end

  # 507 Insufficient Storage
  class InsufficientStorage < ErrorBase
    CODE = Rack::Utils.status_code(:insufficient_storage)
  end

  # 508 Loop Detected
  class LoopDetected < ErrorBase
    CODE = Rack::Utils.status_code(:loop_detected)
  end

  # 510 Not Extended
  class NotExtended < ErrorBase
    CODE = Rack::Utils.status_code(:not_extended)
  end

  # 511 Network Authentication Required
  class NetworkAuthenticationRequired < ErrorBase
    CODE = Rack::Utils.status_code(:network_authentication_required)
  end

end
