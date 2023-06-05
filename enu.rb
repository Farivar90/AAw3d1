class Array
    def my_each(&prc)
        i = 0
        while i < self.length
         prc.call(self[i])
         i += 1
        end
        self
    end
    def select(&prc)
        new_array = []
        self.my_each(&prc) do |ele|
            new_array << ele if prc.call(ele)
        end
        new_array
    end
    
end

