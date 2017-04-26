class ErrorBase < StandardError
  def initialize( *message )
    _message = message.join(' ')
    @_code = self.class::CODE
    @_msg = _message.empty? ?
      Rack::Utils::HTTP_STATUS_CODES[@_code] : _message
  end

  def code
    @_code
  end

  def msg
    @_msg
  end
end
