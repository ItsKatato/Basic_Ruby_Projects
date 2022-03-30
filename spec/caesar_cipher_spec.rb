require './lib/caesar_cipher'

describe CaesarCipher do
  describe "#caesar_cipher" do
    it "returns ciphered sentence" do
      cae_ciph = CaesarCipher.new
      expect(cae_ciph.caesar_cipher('attack at dawn', 5)). to eql('fyyfhp fy ifbs')
    end

    it "returns ciphered word with edge cases" do
      cae_ciph = CaesarCipher.new
      expect(cae_ciph.caesar_cipher('abcdefghijklmnopqrstuvwxyz', 3)). to eql('defghijklmnopqrstuvwxyzabc')
    end
  end
end