require 'rspec'

class Array
    def bubble_sort
    n = self.length
    loop do
        swapped = false

        (n-1).times do |i|
            if self[i] > self[i+1]
                self[i], self[i+1] = self[i+1], self[i]
                swapped = true
            end
        end

        break if not swapped
    end

    self

end
end

arr = [9,2,3,6,8,1,5]

arr.bubble_sort

class Array
def bubble_sort_by
    n = self.length
    loop do
        swapped = false
        (n-1).times do |i|
            if yield(self[i], self[i+1]) > 0
                self[i], self[i+1] = self[i+1], self[i]
                swapped = true
            end
        end
        break if not swapped
        n-1
    end
    self
end
end

arr2 = ["hi", "hello", "hey"]
arr2.bubble_sort_by do |left,right|
  left.length - right.length
end

