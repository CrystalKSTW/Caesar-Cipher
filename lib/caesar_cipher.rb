def caesarCipher(str, key)
    words = "abcdefghijklmnopqrstuvwxyz"
    str.each_char.with_index do |char,i|
        if words.include? char.downcase
            char.downcase==char ? str[i]=words[(words.index(char)+key)%26] : str[i]=words[(words.index(char.downcase)+key)%26].upcase
        end
    end
str
end

p caesarCipher("ha ha ha", 4)