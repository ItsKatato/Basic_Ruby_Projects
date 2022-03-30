dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    substring_hash = {}
    substring_hash.default = 0
    string_array = string.downcase.split(" ")
    string_array.each do |string|
        dictionary.each do |dict_str|
            if string.include?(dict_str)
                substring_hash[dict_str] += 1
            end
        end
    end
    puts substring_hash
end