require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_activity_has_a_name
    activity = Activity.new('Sky Diving', 1000)

    assert_equal 'Sky Diving', activity.name
  end

  def test_activity_starts_with_no_participants
    activity = Activity.new('Alcatraz', 200)

    assert_equal [], activity.participants
  end

  def test_participants_are_added_to_the_activity
    activity = Activity.new('Fun Run', 100)

    assert_equal ['Jane'], activity.add_participants('Jane')
  end

  def test_participants_are_added_to_the_bill
    activity = Activity.new('SparkleFest', 1000)

    assert_equal {}
  end
end
