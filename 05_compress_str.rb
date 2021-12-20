# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".


def compress_str(str)

    hash = Hash.new(0)

    newstr = ''

    str.each_char do |c|
        if !hash[c]
            hash[c] = 1
        else
            hash[c] += 1
        end
    end

     hash.each do |key, value|
        if hash[value] != 1
            newstr += "#{value}#{key}"
        else
            newstr += "#{key}"
        end

     end

     newstr
end

#     compressed = ''

#     count = 0

#     while count < str.length

#         char = str[count]
#         i = 0

#         while char == str[count]

#             i +=1
#             count+=1

#         end 

#         compressed += i.to_s + char 
#     end


#     compressed
# end


p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
