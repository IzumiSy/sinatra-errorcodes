require_relative "./error_base"

module HTTPError
  class BadRequest < ErrorBase
    CODE = 400
    MESSAGE = "Bad Request"
  end

  class Unauthorized < ErrorBase
    CODE = 401
    MESSAGE = "Unauthorized"
  end

  class PaymentRequired < ErrorBase
    CODE = 402
    MESSAGE = "Payment Required"
  end

  class Forbidden < ErrorBase
    CODE = 403
    MESSAGE = "Forbidden"
  end

  class NotFound < ErrorBase
    CODE = 404
    MESSAGE = "Not Found"
  end

  class MethodNotAllows < ErrorBase
    CODE = 405
    MESSAGE = "Method Not Allowed"
  end

  class NotAccpetable < ErrorBase
    CODE = 406
    MESSAGE = "Not Acceptable"
  end

  class ProxyAuthenticationRequired < ErrorBase
    CODE = 407
    MESSAGE = "Proxy Authentication Required"
  end

  class RequestTimeout < ErrorBase
    CODE = 408
    MESSAGE = "Request Timeout"
  end

  class Conflict < ErrorBase
    CODE = 409
    MESSAGE = "Conflict"
  end

  class Gone < ErrorBase
    CODE = 410
    MESSAGE = "Gone"
  end

  class LengthRequired < ErrorBase
    CODE = 411
    MESSAGE = "Length Required"
  end

  class PreconditionFailed < ErrorBase
    CODE = 412
    MESSAGE = "Precondition Failed"
  end

  class PayloadTooLarge < ErrorBase
    CODE = 413
    MESSAGE = "Payload Too Large"
  end

  class UriTooLong < ErrorBase
    CODE = 414
    MESSAGE = "URI Too Long"
  end

  class UnsupportedMediaType < ErrorBase
    CODE = 415
    MESSAGE = "Unsupported Media Type"
  end

  class RangeNotSatisfiable < ErrorBase
    CODE = 416
    MESSAGE = "Range Not Satisfiable"
  end

  class ExpectationFailed < ErrorBase
    CODE = 417
    MESSAGE = "Expectation Failed"
  end

  class MisdirectedRequest < ErrorBase
    CODE = 421
    MESSAGE = "Misdirected Request"
  end

  class UpgradeRequired < ErrorBase
    CODE = 426
    MESSAGE = "Upgrade Required"
  end

  class UnavailableForLegalReasons < ErrorBase
    CODE = 451
    MESSAGE = "Unavailable For Legal Reasons"
  end
end
