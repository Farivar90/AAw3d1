class Array
    def my_each(&prc)
        self.map! {|ele| prc.call(ele)}
    end
end

