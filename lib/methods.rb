require_relative "./error_base"

module HTTPError
  def self.return_status(e)
    if e.is_a? ErrorBase
      body e.message
      status e.code
    end
  end
end
