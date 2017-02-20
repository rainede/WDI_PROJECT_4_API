require "HTTParty"

class Watson
  include HTTParty

  URL = "https://gateway.watsonplatform.net/tone-analyzer/api/v3/tone?version=2016-05-19&text="

  attr_reader :text, :options, :result

  def initialize text
    @text = text
    @options = {
      query: {
        text: @text
      },
      basic_auth: {
        username: username,
        password: password
      }
    }
    @result = get_results
  end

  def get_results
    result = self.class.get(URL, @options).parsed_response.to_hash
    HashWithIndifferentAccess.new(result)
  end

  private

    def username
      ENV['WATSON_USERNAME']
    end

    def password
      ENV['WATSON_PASSWORD']
    end
end
