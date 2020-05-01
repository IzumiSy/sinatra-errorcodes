require_relative "./error_base"

module HTTPError

  # 400 Bad Request
  class BadRequest < ErrorBase
    CODE = Rack::Utils.status_code(:bad_request)
  end

  # 401 Unauthorized
  class Unauthorized < ErrorBase
    CODE = Rack::Utils.status_code(:unauthorized)
  end

  # 402 Payment Required
  class PaymentRequired < ErrorBase
    CODE = Rack::Utils.status_code(:payment_required)
  end

  # 403 Forbidden
  class Forbidden < ErrorBase
    CODE = Rack::Utils.status_code(:forbidden)
  end

  # 404 Not Found
  class NotFound < ErrorBase
    CODE = Rack::Utils.status_code(:not_found)
  end

  # 405 Method Not Allowed
  class MethodNotAllowed < ErrorBase
    CODE = Rack::Utils.status_code(:method_not_allowed)
  end

  # 406 Not Acceptable
  class NotAccpetable < ErrorBase
    CODE = Rack::Utils.status_code(:not_acceptable)
  end

  # 407 Proxy Authentication Required
  class ProxyAuthenticationRequired < ErrorBase
    CODE = Rack::Utils.status_code(:proxy_authentication_required)
  end

  # 408 Request Timeout
  class RequestTimeout < ErrorBase
    CODE = Rack::Utils.status_code(:request_timeout)
  end

  # 409 Conflict
  class Conflict < ErrorBase
    CODE = Rack::Utils.status_code(:conflict)
  end

  # 410 Gone
  class Gone < ErrorBase
    CODE = Rack::Utils.status_code(:gone)
  end

  # 411 Length Required
  class LengthRequired < ErrorBase
    CODE = Rack::Utils.status_code(:length_required)
  end

  # 412 Precondition Failed
  class PreconditionFailed < ErrorBase
    CODE = Rack::Utils.status_code(:precondition_failed)
  end

  # 413 Payload Too Large
  class PayloadTooLarge < ErrorBase
    CODE = Rack::Utils.status_code(:payload_too_large)
  end

  # 414 URI Too Long
  class UriTooLong < ErrorBase
    CODE = Rack::Utils.status_code(:uri_too_long)
  end

  # 415 Unsupported Media Type
  class UnsupportedMediaType < ErrorBase
    CODE = Rack::Utils.status_code(:unsupported_media_type)
  end

  # 416 Range Not Satisfiable
  class RangeNotSatisfiable < ErrorBase
    CODE = Rack::Utils.status_code(:range_not_satisfiable)
  end

  # 417 Expectation Failed
  class ExpectationFailed < ErrorBase
    CODE = Rack::Utils.status_code(:expectation_failed)
  end

  # 421 Misdirected Request
  class MisdirectedRequest < ErrorBase
    CODE = Rack::Utils.status_code(:misdirected_request)
  end

  # 422 Unprocessable Entity
  class UnprocessableEntity < ErrorBase
    CODE = Rack::Utils.status_code(:unprocessable_entity)
  end

  # 423 Locked
  class Locked < ErrorBase
    CODE = Rack::Utils.status_code(:locked)
  end

  # 424 Failed Dependency
  class FailedDependency < ErrorBase
    CODE = Rack::Utils.status_code(:failed_dependency)
  end

  # 426 Upgrade Required
  class UpgradeRequired < ErrorBase
    CODE = Rack::Utils.status_code(:upgrade_required)
  end

  # 428 Precondition Required
  class PreconditionRequired < ErrorBase
    CODE = Rack::Utils.status_code(:precondition_required)
  end

  # 429 Too Many Requests
  class TooManyRequests < ErrorBase
    CODE = Rack::Utils.status_code(:too_many_requests)
  end

  # 431 Request Header Fields Too Large
  class RequestHeaderFieldsTooLarge < ErrorBase
    CODE = Rack::Utils.status_code(:request_header_fields_too_large)
  end

  # 451 Unavailable For Legal Reasons
  class UnavailableForLegalReasons < ErrorBase
    CODE = Rack::Utils.status_code(:unavailable_for_legal_reasons)
  end

end
