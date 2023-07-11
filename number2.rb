require 'set'

def longest_consecutive(nums)
  num_set = Set.new(nums)  # Create a hash set to store the numbers
  longest_streak = 0

  # Iterate through each number in the array
  nums.each do |num|
    # Check if the current number is the start of a sequence
    if !num_set.include?(num - 1)
      current_num = num
      current_streak = 1

      # Increment the current number and streak until the sequence ends
      while num_set.include?(current_num + 1)
        current_num += 1
        current_streak += 1
      end

      # Update the longest streak if necessary
      longest_streak = current_streak if current_streak > longest_streak
    end
  end

  return longest_streak
end

# Example usage:
nums = [100, 4, 200, 1, 3, 2]
puts longest_consecutive(nums) # Output: 4
