class PigLatinizer

    def piglatinize(words)
        words.split(" ").map {|word| pig_latin(word)}.join(" ")
    end

    def has_vowel(word)
        word.match(/[aeiouAEIOU]/)
    end

    def pig_latin(word)
        if has_vowel(word[0])
            word + "way"
        else
            vowels = word.index(/[aeiouAEIOU]/)
            consonants = word.slice(0..vowels-1)
            words_left = word.slice(vowels..word.length)
            words_left + consonants + "ay"
        end
    end

end

    #  def piglatinize(words)
    #     array = words.split(" ")
    #     array.map do |word|
    #         if word.include?(".") && word[/\A[bcdfghjklmnpqrstvwxyz]*/i].length >= 1 
    #             consonants = word[/\A[bcdfghjklmnpqrstvwxyz]*/i]
    #             ending = word.gsub(consonants, "")
    #             periods = ending.insert(-5, consonants)
    #             periods.insert(-5, "ay")
    #         elsif word[/\A[bcdfghjklmnpqrstvwxyz]*/i].length >= 1
    #             consonants = word[/\A[bcdfghjklmnpqrstvwxyz]*/i]
    #             ending = word.gsub(consonants, "")
    #             ending + consonants + "ay"
    #         else 
    #             word + "way"
    #         end
    #     end.join(" ")
    # end
