class Snail

  def get_path(array)
    snail_path = []
    if array == [[]]
    else
      for i in (0...array[0].length)
        snail_path.push(array[0][i])
      end
      for i in (0...array[1].length)
        snail_path.push(array[1][1-i])
      end
    end
    snail_path
  end

end