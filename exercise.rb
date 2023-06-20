class Exercise
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    # Use gsub with ternary conditionals to replace words in string
    str.gsub(/\w+/) { |word| word.length > 4 ? 
      (/[A-Z]/.match(word[0,1]) ? 'Marklar' : 'marklar') : word}
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    # Calculate nth fib number
    fib = Hash.new {|hash, key| hash[key] = key < 2 ? key : hash[key-1] + hash[key-2] }
    # Set nth fib num as limit for summing even fib nums
    limit = fib[nth]
    # If no even nums in sequence up to nth fib number
    if limit < 2
      return 0;
    end
    # 4 * (f1 + f2) is formula for next even value of fib sequence
    fib1 = 0
    fib2 = 2
    sum = fib1 + fib2
    while fib2 <= limit
      fib3 = 4 * fib2 + fib1

      if fib3 > limit
        break
      end

      fib1 = fib2
      fib2 = fib3
      sum += fib2
    end
    return sum
  end
end
