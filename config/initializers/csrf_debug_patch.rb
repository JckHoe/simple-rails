require "pry"

module ActionController
  module RequestForgeryProtection
    private

    def csrf_token_hmac(session, identifier)
      real_token = real_csrf_token(session)
      result = OpenSSL::HMAC.digest(
        OpenSSL::Digest::SHA256.new,
        real_token,
        identifier
      )
      binding.pry
      result
    end
  end
end
