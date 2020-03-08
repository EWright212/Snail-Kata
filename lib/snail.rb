class Snail

  def get_path(array)
    snail_path = []
    if array == [[]]
    else
      p array
      n = array[0].length
      next_iteration_array = array.dup
      for i in (0...n/2)
        # step 1 - top
        p "array: " + array.to_s
        p "n: " + n.to_s
        for i in (0...n)
          snail_path.push(array[0][i])
        end
        next_iteration_array.delete_at(0)
        p "next_iteration_array after delete1: " + next_iteration_array.to_s
        # step 2 - left
        if n > 2
          for i in (1..n-2)
            snail_path.push(array[i][n-1])
          end
          next_iteration_array.each_with_index do |item, idx|
            if idx < (n-2)
              item[n-1] = nil
            end
          end
        end
        p "next_iteration_array after delete2: " + next_iteration_array.to_s
        # step 3 - bottom
        for i in (0...n)
          snail_path.push(array[n-1][n-1-i])
        end
        next_iteration_array.delete_at(n-2)
        p "next_iteration_array after delete3: " + next_iteration_array.to_s
        # step 4 - left
        if n > 2
          for i in (1..n-2)
            snail_path.push(array[n-1-i][0])
          end
          next_iteration_array.each_with_index do |item, idx|
            if idx < (n-2)
              item[0] = nil
            end
          end
        end
        p "next_iteration_array after delete4: " + next_iteration_array.to_s
        # step 5 - middle (to be changed to repeat)
        if n == 3
          snail_path.push(array[1][1])
        end
        n = n-2
        array = next_iteration_array.dup
        array.each &:compact!
      end
    end
    snail_path
  end

end