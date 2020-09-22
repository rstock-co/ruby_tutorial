module Palindrome

  # Returns true for palindrome
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrom testing.
    def processed_content
      self.downcase
    end
end  

  class String
    include Palindrome
  end
 
