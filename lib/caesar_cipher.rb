def caesar_cipher(string, shifts)
    new_string = ""
    string.each_char do |c|
        if c.match /[A-z]/
            (shifts).times {c.next!}
        end
        if c.length == 2
            c.slice!(0)
        end
        new_string += c
    end
    return new_string
end