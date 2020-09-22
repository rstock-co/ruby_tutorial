
# Defines a Phrase class.
class Phrase < String

  # Returns content for palindrom testing.
  def processed_content
    self.downcase
  end

  # Returns true for palindrome
  def palindrome?
    processed_content == processed_content.reverse
  end
end

# Defines a translated Phrase.
class TranslatedPhrase < Phrase
  attr_accessor :translation

  def initialize(content, translation)
    super(content)
    @translation = translation
  end
end

TranslatedPhrase.new("recognize","reconocer")

