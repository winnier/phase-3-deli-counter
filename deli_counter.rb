# Write your code here.
# katz_deli = []

def line(queue)
    return puts "The line is currently empty." if queue.empty?

    customers = queue.map.with_index(1) do |name, index|
        "#{index}. #{name}"
    end
    
    puts "The line is currently: #{customers.join(' ')}"
end

def take_a_number(queue, name)
    queue << name
    puts "Welcome, #{name}. You are number #{queue.length} in line."

end

def now_serving(queue)
    return puts "There is nobody waiting to be served!" if queue.empty?
    puts "Currently serving #{queue.first}."
    queue.shift
end