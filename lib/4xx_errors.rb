require_relative "./error_base"

module HTTPError
  class BadRequest < ErrorBase
    CODE = Rack::Utils.status_code(:bad_request)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class Unauthorized < ErrorBase
    CODE = Rack::Utils.status_code(:unauthorized)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class PaymentRequired < ErrorBase
    CODE = Rack::Utils.status_code(:payment_required)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class Forbidden < ErrorBase
    CODE = Rack::Utils.status_code(:forbidden)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class NotFound < ErrorBase
    CODE = Rack::Utils.status_code(:not_found)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class MethodNotAllowed < ErrorBase
    CODE = Rack::Utils.status_code(:method_not_allowed)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class NotAccpetable < ErrorBase
    CODE = Rack::Utils.status_code(:not_acceptable)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class ProxyAuthenticationRequired < ErrorBase
    CODE = Rack::Utils.status_code(:proxy_authentication_required)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class RequestTimeout < ErrorBase
    CODE = Rack::Utils.status_code(:request_timeout)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class Conflict < ErrorBase
    CODE = Rack::Utils.status_code(:conflict)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class Gone < ErrorBase
    CODE = Rack::Utils.status_code(:gone)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class LengthRequired < ErrorBase
    CODE = Rack::Utils.status_code(:length_required)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class PreconditionFailed < ErrorBase
    CODE = Rack::Utils.status_code(:precondition_failed)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class PayloadTooLarge < ErrorBase
    CODE = Rack::Utils.status_code(:payload_too_large)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class UriTooLong < ErrorBase
    CODE = Rack::Utils.status_code(:uri_too_long)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class UnsupportedMediaType < ErrorBase
    CODE = Rack::Utils.status_code(:unsupported_media_type)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class RangeNotSatisfiable < ErrorBase
    CODE = Rack::Utils.status_code(:range_not_satisfiable)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class ExpectationFailed < ErrorBase
    CODE = Rack::Utils.status_code(:expectation_failed)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class MisdirectedRequest < ErrorBase
    CODE = Rack::Utils.status_code(:misdirected_failed)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class UnprocessableEntity < ErrorBase
    CODE = Rack::Utils.status_code(:unprocessable_entity)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class Locked < ErrorBase
    CODE = Rack::Utils.status_code(:locked)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class FailedDependency < ErrorBase
    CODE = Rack::Utils.status_code(:failed_dependency)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class UpgradeRequired < ErrorBase
    CODE = Rack::Utils.status_code(:upgrade_required)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class PreconditionRequired < ErrorBase
    CODE = Rack::Utils.status_code(:precondition_required)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class TooManyRequests < ErrorBase
    CODE = Rack::Utils.status_code(:too_many_requests)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class RequestHeaderFieldsTooLarge < ErrorBase
    CODE = Rack::Utils.status_code(:request_header_fields_too_large)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end

  class UnavailableForLegalReasons < ErrorBase
    CODE = Rack::Utils.status_code(:unavailable_for_legal_reasons)
    MESSAGE = Rack::Utils::HTTP_STATUS_CODES[CODE]
  end
end
