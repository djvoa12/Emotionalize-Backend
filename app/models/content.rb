class Content
  attr_reader :page

  def initialize
    mechanize = Mechanize.new
    @page = mechanize.get("http://www.sfbayedm.com")
  end

  def refresh
    results = page.search("p")
    # •
    results.each do |result|
      hey = result.children[0].to_s.split(" • ")
    binding.pry
    end
  end
end