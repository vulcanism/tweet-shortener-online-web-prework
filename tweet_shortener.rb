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
  array = tweet.split(" ")
   array.each_with_index do |words,index|
    dictionary.keys.each do |x|
      if x == words 
      array[index] = dictionary[x]
      end
      end
      end
array.join(" ")
end

def bulk_tweet_shortener(array)