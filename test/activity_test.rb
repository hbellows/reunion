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
    person_1 = 'Jane'
    person_2 = 'Juan'
    person_3 = 'Jessie'

    activity.add_participants(person_1)
    activity.add_participants(person_2)
    activity.add_participants(person_3)

    assert_equal ['Jane', 'Juan', 'Jessie'], activity.participants
  end

  def test_participants_are_added_to_the_bill
    activity = Activity.new('SparkleFest', 1000)
    person_1 = 'Jane'
    person_2 = 'Juan'
    person_3 = 'Jessie'

    activity.add_participants(person_1)
    activity.add_participants(person_2)
    activity.add_participants(person_3)

    assert_equal {"Jane"=>0, "Juan"=>0, "Jessie"=>0}, activity.total_bill
  end
end
