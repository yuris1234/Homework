def sluggish(array)
    biggest_fish = 0
    array.each do |fish1|
        array.each do |fish2|
            if fish1.length > fish2.length && fish1.length > biggest_fish 
                biggest_fish = fish1.length
            elsif fish2.length > fish1.length && fish2.length > biggest_fish
                biggest_fish = fish2.length
            end
        end
    end
    biggest_fish
end

def dominant(array)
    return array if array.length <= 1

    middle = array.length / 2
    left = array[0...middle]
    right = array[middle..-1]
    dominant_helper(dominant(left), dominant(right))
end

def dominant_helper(left, right)
    left.length > right.length ? left : right 
end

def clever(array)
    biggest_fish = 0
    array.each do |fish|
        if fish.length > biggest_fish
            biggest_fish = fish.length 
        end
    end
    biggest_fish
end

def slow_dance(direction, array)
    array.each_with_index do |dir, index|
        return index if dir == direction
    end
end

def fast_dance(direction, array)
    array.index(direction)
end

p dominant(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh'])

p sluggish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh'])

p clever(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh'])

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
"left",  "left-up"]

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)


p fast_dance("up", tiles_array)
p fast_dance("right-down", tiles_array)

