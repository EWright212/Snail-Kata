class Snail

  def get_path(array)
    snail_path = []
    if array == [[]]
    else
      # step 1 - top
      n = array[0].length
      for i in (0...n)
        snail_path.push(array[0][i])
      end
      # step 2 - left
      if n > 2
        for i in (1..n-2)
          p i
          snail_path.push(array[i][n-1])
        end
      end
      # step 3 - bottom
      for i in (0...n)
        snail_path.push(array[n-1][n-1-i])
      end
      # step 4 - left
      if n > 2
        for i in (1..n-2)
          p i
          snail_path.push(array[i][0])
        end
      end
      # step 5 - middle (to be changed to repeat)
      if n == 3
        snail_path.push(array[1][1])
      end
    end
    snail_path
  end

end