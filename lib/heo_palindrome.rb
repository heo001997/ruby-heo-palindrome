# frozen_string_literal: true

require_relative "heo_palindrome/version"

module HeoPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content.size > 0 &&
      processed_content == processed_content.reverse
  end

  # Returns the letters in the string.
  def letters_and_numbers
    to_s.scan(/[a-z0-9]/i).join
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.letters_and_numbers.downcase
    end
end

class Integer
  include HeoPalindrome
end

class String
  include HeoPalindrome
end
