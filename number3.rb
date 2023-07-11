def two_sum(nums, target)
  num_map = {}
  
  nums.each_with_index do |num, index|
    complement = target - num
    
    if num_map.key?(complement)
      return [num_map[complement], index]
    end
    
    num_map[num] = index
  end
  
  return []  # No solution found
end

# Example usage:
nums = [2, 7, 11, 15]
target = 9
puts two_sum(nums, target)  # Output: [0, 1]

nums = [3, 2, 4]
target = 6
puts two_sum(nums, target)  # Output: [1, 2]

nums = [3, 3]
target = 6
puts two_sum(nums, target)  # Output: [0, 1]