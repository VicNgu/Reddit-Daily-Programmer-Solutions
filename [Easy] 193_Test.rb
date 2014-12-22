require 'test/unit'   
require_relative '[Easy] 193'

class TestAcronymExpander < Test::Unit::TestCase   

	def test_expand_acronym  
		assert_equal "laugh out loud", $acronyms["lol"]
		assert_equal true, $acronyms["lols"].nil?
	end 

	def test_sentence_inputs
		assert_equal "what the fuck that was unfair", acronymExpander("wtf that was unfair")
		assert_equal "in my opinion that was well played. Anyways I've got to go", acronymExpander("imo that was wp. Anyways I've g2g")
	end
end
