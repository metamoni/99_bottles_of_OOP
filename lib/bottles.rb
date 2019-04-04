class Bottles
  def first_line(bottle)
    if bottle == 1
      return "1 bottle of beer on the wall, 1 bottle of beer."
    elsif bottle == 0
      return "No more bottles of beer on the wall, no more bottles of beer."
    end

    return "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer."
  end

  def last_line(bottle)
    remaining = bottle - 1

    if bottle > 2
      return "Take one down and pass it around, #{remaining} bottles of beer on the wall."
    elsif bottle > 1
      return "Take one down and pass it around, 1 bottle of beer on the wall."
    elsif bottle == 1
      return "Take it down and pass it around, no more bottles of beer on the wall."
    else bottle == 0
      return "Go to the store and buy some more, 99 bottles of beer on the wall."
    end
  end

  def verse(bottle)
    return "#{first_line(bottle)}\n#{last_line(bottle)}\n"
  end

  def verses(start, finish)
    lines_to_sing = (finish..start).to_a.reverse
    verses_to_join = lines_to_sing.collect! { |bottle| verse(bottle) }
    return verses_to_join.join("\n")
  end

  def song
    return verses(99, 0)
  end
end
