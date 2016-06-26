class ErrorBase < StandardError
  def initialize( *message )
    _v = message.join(' ')
    @_message = (!_v.empty? ? _v : self.class::MESSAGE)
    @_code = (self.class::CODE)
  end
end
