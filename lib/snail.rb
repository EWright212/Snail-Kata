class Snail

  def get_path(array)
    snail_path = []
    if array == [[]]
    else
      n = array[0].length
      for i in (0...n)
        snail_path.push(array[0][i])
      end
      for i in (0...n)
        snail_path.push(array[n-1][n-1-i])
      end
    end
    snail_path
  end

end