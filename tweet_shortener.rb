def dictionary
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  array = []
  tweet.split.each do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
      array << word
    else
      array << word
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each {|x| puts word_substituter (x)}
end

def selective_tweet_shortener(tweet)
  tweet.length > 140? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  short = word_substituter(tweet)
  short.length > 140? short[0...136] + "..." : short
end