class Stack
    attr_reader :stack
    def initialize
      @stack = []
    end
  
    def push(el)
      stack << el 
    end
  
    def pop
      stack.pop
    end
  
    def peek
      stack[-1]
    end
  end

# s = Stack.new 
# p s.push(4)
# p s.push(0)
# p s.pop
# p s.peek

class Queue 
    attr_reader :queue
    def initialize 
        @queue = []
    end

    def enqueue(el)
        queue << el
    end

    def dequeue
        queue.shift
    end

    def peek
        queue[-1]
    end
end

# q = Queue.new 
# p q.enqueue(4)
# p q.enqueue(5)
# p q.peek
# p q.dequeue 
# p q.peek
# p q.queue

class Map
    attr_reader :map
    def initialize 
        @map = Array.new {Array.new}
    end

    def set(key, value)
        hash = Hash.new
        map.each_with_index do |pair, idx|
            k = pair[0]
            hash[k] = idx
        end

        if hash.keys.include?(key)
            idx = hash[key]
            # update existing key value pair
            map[idx][1] = value 
        else
            # create new key value pair
            map << [key, value]
        end 
    end

    def get(key)
        map.each do |sub|
            return sub[1] if sub[0] == key
        end
        nil
    end

    def delete(key)
        map.each_with_index do |pair, idx|
            if pair[0] == key 
                map.delete_at(idx)
                return
            end
        end
    end

    def show
        print map
        puts
    end
end

m = Map.new
m.set("key", "value")
m.set("hello", "world")
m.set("hi", "world")
# m.show
m.set("hello", "everyone")
# m.show
# m.delete("hello")
# m.delete("Y")
# m.show
p m.get("hello")