class Bottles

  def remaining_bottles(number_of_bottles)
    return number_of_bottles - 1
  end

  def first_line(number_of_bottles)
    if number_of_bottles == 1
      return "1 bottle of beer on the wall, 1 bottle of beer."
    elsif number_of_bottles == 0
      return "No more bottles of beer on the wall, no more bottles of beer."
    else
      return "#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer."
    end
  end

  def last_line(number_of_bottles)
    remaining = remaining_bottles(number_of_bottles)

    if remaining == 1
      return "Take one down and pass it around, 1 bottle of beer on the wall."
    elsif remaining == 0
      return "Take it down and pass it around, no more bottles of beer on the wall."
    elsif remaining < 0
      return "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      return "Take one down and pass it around, #{remaining} bottles of beer on the wall."
    end

  end

  def verse(number_of_bottles)
    return "#{first_line(number_of_bottles)}\n#{last_line(number_of_bottles)}\n"
  end
  # 
  # def song
  #   i = 99
  #   while i >= 0
  #     verse(i)
  #     i -= 1
  #   end
  # end

  # def verses(start, end)
  # end

end
