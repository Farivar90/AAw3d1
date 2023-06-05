class Array
    def my_each(&prc)
        i = 0
        while i < self.length
         prc.call(self[i])
         i += 1
        end
        self
    end

    def my_select(&prc)
        new_array = []
        self.my_each do |ele|
            new_array << ele if prc.call(ele)
        end
        new_array
    end

    def my_reject(&prc)
        new_array = []
        self.my_each do |ele|
            new_array << ele if !prc.call(ele)
        end
        new_array
    end

    def my_any?(&prc)
        counter = 0
        self.my_each do |ele|
            counter += 1 if prc.call(ele)
        end
        counter > 0
    end

    def my_all?(&prc)
        counter = 0
        self.my_each do |ele|
            counter += 1 if prc.call(ele)
        end
        counter == self.length
    end
    
end

