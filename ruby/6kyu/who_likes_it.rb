=begin
>>> DESCRIPTION

  You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or
  other items. We want to create the text that should be displayed next to such an item.

  Implement a function likes :: [String] -> String, which must take in input array, containing the names of 
  people who like an item. It must return the display text as shown in the examples:

  likes [] -- must be "no one likes this"
  likes ["Peter"] -- must be "Peter likes this"
  likes ["Jacob", "Alex"] -- must be "Jacob and Alex like this"
  likes ["Max", "John", "Mark"] -- must be "Max, John and Mark like this"
  likes ["Alex", "Jacob", "Mark", "Max"] -- must be "Alex, Jacob and 2 others like this"
  For 4 or more names, the number in and 2 others simply increases.

>>> LOGIC
  There are several special cases ...
    - When no one likes
    - When one person likes
    - When there are two persons who like
    - When there are 3 persons who likes
    - When there are more than 3 persons who likes
  Each case must therefore be treated in a different way. We must therefore count the number
  of people who like to know in what sitaution we find ourselves in.

Date: 2021-01-09 by Benjamin Courchesne
link: https://www.codewars.com/kata/5266876b8f4bf2da9b000362
=end

def likes(names)
  case names.size
  when 0 
    "no one likes this"
  when 1 
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
  end
end

likes []                               # must be "no one likes this"
likes ["Peter"]                        # must be "Peter likes this"
likes ["Jacob", "Alex"]                # must be "Jacob and Alex like this"
likes ["Max", "John", "Mark"]          # must be "Max, John and Mark like this"
likes ["Alex", "Jacob", "Mark", "Max"] # must be "Alex, Jacob and 2 others like this"