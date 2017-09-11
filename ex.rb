array = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]


array.each_with_index do |row, index|
  row_array = index
    row.each_with_index do |seat, index|
      if seat == nil
        puts "Row #{row_array + 1} seat #{index + 1} is free."
        puts "Do you want to sit there? (y/n)"
        puts ">"
        answer = gets.chomp
          if answer == "y"
            print "What is your name?"
            puts ">"
            name = gets.chomp
            array[row_array][index] = name
          end
      end
    end
end
