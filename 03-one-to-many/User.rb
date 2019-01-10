class User
  # attr_reader :username

  def initialize(username)
    @username = username
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end

  def username
    @username
  end

  def post_tweet(message)
    Tweet.new(message, self)
  end

end





#
