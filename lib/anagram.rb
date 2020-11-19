class Anagram

    attr_accessor :anagram

    def initialize(anagram)
        @anagram = anagram
    end

    def match(words)
        words.select do |word|
            collect(word)
        end
    end

    def collect(word)
        word.chars.sort == @anagram.chars.sort
    end
    
end