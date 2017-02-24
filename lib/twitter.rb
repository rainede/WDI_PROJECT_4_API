require "HTTParty"

class Twitter
  include HTTParty
  base_uri 'twitter.com'

  def initialize
    @auth = {username: username, password: password}
  end

  # which can be :friends, :user or :public
  # options[:query] can be things like since, since_id, count, etc.
  def timeline(which = :friends, options = {})
    options.merge!({ basic_auth: @auth })
    self.class.get("/statuses/#{which}_timeline.json", options)
  end

  def post(text)
    options = { query: { status: text }, basic_auth: @auth }
    self.class.post('/statuses/update.json', options)
  end

  private

      def username
        ENV['TWITTER_USERNAME']
      end

      def password
        ENV['TWITTER_PASSWORD']
      end
end

# twitter = Twitter.new('config['email']', config['password'])
