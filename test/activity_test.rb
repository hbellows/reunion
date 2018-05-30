require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_activity_has_a_name
    activity = Activity.new('Sky Diving')

    assert_equal 'Sky Diving', activity.name
  end

  def test_activity_starts_with_no_participants
    activity = Activity.new('Alcatraz')

    assert_equal [], activity.participants
  end

  # def test_participants_start_with_no_bill
  #   activity = Activity.new('Fun Run')
  #
  #   assert_equal {}, activity.bill
  # end
end
