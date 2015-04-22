require_relative 'hipster'

require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe Hipster, "minitest syntax reference"  do
	#runs code before each test
	# before do	
	# 	@hipster = Hipster.new
	# end

	#let block
	let(:hipster) do
		Hipster.new
	end
	#There has to be an assertion AND condition

	it '#define' do
		hipster.define.must_equal "you don't understand"
	end

	it '#walk?' do
		skip hipster.walk?.must_equal "I prefer to skip"
	end

	it '#labels' do
		hipster.labels.must_be_empty
		#hipster.labels == []
	end

	describe "when asked about the font" do
		it "should be helvetica" do
			hipster.preferred_font.must_equal "helvetica"
		end
	end

	describe "when asked about mainstream" do
		it "won't be mainstream" do
			hipster.mainstream?.wont_equal true
		end
	end


end 