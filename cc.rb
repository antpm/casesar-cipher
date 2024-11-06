def caesar_ciph(input, shift)
    output = ''
    base = 0
    input.each_byte do |c|
        if c < 91
          base = 65
        else
            base = 97
        end
        if c.between?(65,90) or c.between?(97,122)
          rot = (((c - base) + shift) % 26) + base
          output += rot.chr
        else 
            output += c.chr
        end
    end
    output
end

puts "Please enter your text: "
input = gets.chomp
puts "Enter amount to shift by: "
shift = gets.chomp.to_i
puts "Output: "
puts caesar_ciph(input, shift)