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

    def my_flatten
        new_array = []
        self.my_each do |ele|
            if ele.is_a? (Array)
                new_array += ele.my_flatten
            else
                new_array << ele
            end
        end
        new_array
    end
    def my_zip(*arg)
        my_zip = Array.new(self.length){Array.new}
        i = 0
        while i < self.length 
            my_zip[i] << self[i]
            arg.each do |arr| 
                my_zip[i] << arr[i]
            end
            i +=1
        end
        my_zip
    end
    
end

