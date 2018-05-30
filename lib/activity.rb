class Activity
  attr_reader :name, :participants, :bill

  def initialize(activity_name)
    @name = activity_name
    @participants = []
    @bill = Hash.new(0)
  end

  def total_cost

  end

  def cost_per_person

  end
end
