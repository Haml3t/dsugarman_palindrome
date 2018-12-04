require "dsugarman_palindrome/version"

module DsugarmanPalindrome

  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

  # returns content for palindrome testing
  def processed_content
    self.to_s.scan(/\w/i).join.downcase
  end
end

class String
  include DsugarmanPalindrome
end

class Integer
  include DsugarmanPalindrome
end
