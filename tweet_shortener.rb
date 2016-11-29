def dictionary
  substitutes = {
    "Hello" => "hi",
    "To" => "2",
    "Two" => "2",
    "Too" => "2",
    "For" => "4",
    "Four" => "4",
    "Be" => "b",
    "You" => "u",
    "At" => "@",
    "And" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split
  i = 0
    while i < tweet_array.length
      if dictionary.has_key?(tweet_array[i].capitalize)
        tweet_array[i] = dictionary[tweet_array[i].capitalize]
      end
      i += 1
    end
    tweet_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      return word_substituter(tweet)
    else
      return tweet
    end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    string = tweet[0..136] + "..."
  else
    tweet
  end
end
