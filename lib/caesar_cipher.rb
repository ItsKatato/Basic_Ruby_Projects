class CaesarCipher
  def caesar_cipher(string, shifts)
    new_string = ''
    string.each_char do |c|
      shifts.times { c.next! } if c.match /[A-z]/
      c.slice!(0) if c.length == 2
      new_string += c
    end
    new_string
  end
end
