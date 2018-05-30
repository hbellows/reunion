class Activity
  attr_reader :name, :participants, :bill, :cost

  def initialize(activity_name, base_cost)
    @name = activity_name
    @cost = base_cost
    @participants = []
    @bill = Hash.new(0)
  end

  def add_participants(person)
    @participants << person
  end

  def total_bill
    require "pry"; binding.pry
    @participants.map do |person|
      @bill[person] = 0
    end
  end
  #
  # def cost_per_person
  #
  # end
end
