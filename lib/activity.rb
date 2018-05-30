class Activity
  attr_reader :name, :participants, :bill, :cost

  def initialize(activity_name)
    @name = activity_name
    @cost = base_cost
    @participants = []
    @bill = Hash.new(0)
  end

  def add_participants

  end

  # def total_cost
  #
  # end
  #
  # def cost_per_person
  #
  # end
end
