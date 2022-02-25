class Mumbling_kata

    def mumble_letters(string)
      

        # 'abc'
        split_array = string.split('')
        # ['a', 'b', 'c']
        multiplied_letters = split_array.map.with_index{|element, index| (element * index += 1).capitalize}
        # ['a', 'bb', 'ccc']
        # ['A', 'Bb', 'Ccc']
        return multiplied_letters.join("-")
        # 'A-Bb-Ccc'
  
        # one liner : string.split('').map.with_index{|element, index| (element * index += 1).capitalize}.join('-') 
               
    end
end








