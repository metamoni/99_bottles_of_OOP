class Bottles
  def first_line(start)
    if start == 1
      return "1 bottle of beer on the wall, 1 bottle of beer."
    elsif start == 0
      return "No more bottles of beer on the wall, no more bottles of beer."
    end

    return "#{start} bottles of beer on the wall, #{start} bottles of beer."
  end

  def last_line(start)
    remaining = start - 1

    if start > 2
      return "Take one down and pass it around, #{remaining} bottles of beer on the wall."
    elsif start > 1
      return "Take one down and pass it around, 1 bottle of beer on the wall."
    elsif start == 1
      return "Take it down and pass it around, no more bottles of beer on the wall."
    else start == 0
      return "Go to the store and buy some more, 99 bottles of beer on the wall."
    end
  end

  def verse(start)
    return "#{first_line(start)}\n#{last_line(start)}\n"
  end

  def verses(start, finish)
    array_of_bottles = (finish..start).to_a.reverse
    array_of_lyrics = array_of_bottles.collect! { |bottle|
      verse(bottle)
    }
    array_of_lyrics.join("\n")
  end
end
