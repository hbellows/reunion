require 'minitest/autorun'
require 'minitest/pride'
require './lib/participant'

class ParticipantTest < Minitest::Test

  def test_participant_has_a_name
    participant = Participant.new('James', 100)

    assert_equal 'James', participant.name
  end

  def test_participant_has_money
    participant = Participant.new('Sally', 100)

    assert_equal 100, participant.money
  end
end
