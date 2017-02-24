#require 'json'
#
# User.destroy_all
# Post.destroy_all
#
# u1 = User.create!(email: "rainey@rainey.com", password: "password", password_confirmation: "password", first_name: "Rainey", last_name: "Cat")
#
# u1.posts.create!(text: "I wonder what this amazing piece of prose will score in Watson's fantastic engine...")
# u1.posts.create!(text: "Tumeric activated charcoal literally direct trade cliche selfies. Salvia heirloom iPhone tattooed, 90's biodiesel deep v put a bird on it try-hard schlitz dreamcatcher selvage chambray. ")
# u1.posts.create!(text: "Skateboard keytar intelligentsia, meggings brunch hoodie post-ironic fingerstache raw denim portland small batch thundercats. Pug vexillologist subway tile microdosing.")
# u1.posts.create!(text: "Next level post-ironic kitsch, gastropub hammock narwhal tumblr. Drinking vinegar selfies art party, vape everyday carry bushwick whatever meh mlkshk yr actually hexagon.")
# u1.posts.create!(text: "This is amazing!!!!")
#
#
# words = []
#
# 10.times do
#   get_hipster = HTTParty.get("http://hipsterjesus.com/api/?paras=1")
#   hipster_data = get_hipster["text"]
#   words << hipster_data
# end
#  p words
# response = HTTParty.get("http://api.randomuser.me/?results=10")
# p.response["results"]
# # byebug
# response["results"].each_with_index do |randomuser,i|
#  dummy = User.create!({first_name: randomuser["user"]["name"]["first"],last_name: randomuser["user"]["name"]["last"], email: randomuser["user"]["email"], password: "password", password_confirmation: "password", image: randomuser["picture"]["large"] })
#  dummy.posts.create!(text: words[i])
# end
#

dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
require File.join(dir, 'httparty')
require 'pp'
config = YAML.load(File.read(File.join(ENV['HOME'], '.twitter')))

class Twitter
  include HTTParty
  base_uri 'twitter.com'

  def initialize(u, p)
    @auth = {username: u, password: p}
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
end

# twitter = Twitter.new('config['email']', config['password'])
twitter = Twitter.new('rainede','Spec1al')
pp twitter.timeline
# pp twitter.timeline(:friends, query: {since_id: 868482746})
# pp twitter.timeline(:friends, query: 'since_id=868482746')
# pp twitter.post('this is a test of 0.2.0')
