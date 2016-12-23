require_relative "./error_base"

module HTTPError
  class InternalServerError < ErrorBase
    CODE = Rack::Utils.status_code(:internal_server_error)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class BadGateway < ErrorBase
    CODE = Rack::Utils.status_code(:bad_gateway)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class ServiceUnavailable < ErrorBase
    CODE = Rack::Utils.status_code(:service_unavailable)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class GatewayTimeout < ErrorBase
    CODE = Rack::Utils.status_code(:gateway_timeout)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class HTTPVersionNotSupported < ErrorBase
    CODE = Rack::Utils.status_code(:http_version_not_supported)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class VariantAlsoNegotiates < ErrorBase
    CODE = Rack::Utils.status_code(:variant_also_negotiates)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class InsufficientStorage < ErrorBase
    CODE = Rack::Utils.status_code(:insufficient_storage)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class LoopDetected < ErrorBase
    CODE = Rack::Utils.status_code(:loop_detected)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class NotExtended < ErrorBase
    CODE = Rack::Utils.status_code(:not_extended)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class NetworkAuthenticationRequired < ErrorBase
    CODE = Rack::Utils.status_code(:network_authentication_required)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end
end
