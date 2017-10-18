gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    game = Scrabble.new
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_an_empty_string
    game = Scrabble.new('')
    assert game.empty?, "There is no word here"
  end

  def test_it_will_score_when_someone_passes_nil
    assert_equal nil, game.empty?
  end
end
