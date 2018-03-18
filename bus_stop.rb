require_relative('./person')

class BusStop

attr_reader :name

  def initialize(new_name)
    @name = new_name
    @queue = []
  end

  def add_person_to_queue(person)
    @queue.push(person)
  end

end
