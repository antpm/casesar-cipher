def caesar_ciph(input, shift, output = '')
    input.each_byte do |c|
        converted = c
        if c.between?(65, 122)
            shift.times do
                converted += 1
                if c <= 90 and converted > 90
                converted -= 26
                elsif converted > 122
                converted -= 26
                end
            end
        end
        output += converted.chr
    end
    output
end

puts "Please enter your text: "
input = gets.chomp
puts "Enter amount to shift by: "
shift = gets.chomp.to_i
puts "Output: "
puts caesar_ciph(input, shift)