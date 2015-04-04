class Refresher
  attr_accessor :mechanize

  def initialize
    mechanize = Mechanize.new
  end

  def update_events
    mechanize.get("http://www.sfbayedm.com") do |page|
      pry
    end

    pry
    Event.create
  end
end