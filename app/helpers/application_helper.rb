module ApplicationHelper

  def nice_time(time)
    time.strftime("%a %d %B %H:%M")
  end

  def embedded_svg(filename, options = {})
    assets = Rails.application.assets
    file = assets.find_asset(filename).source.force_encoding("UTF-8")
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css "svg"
    if options[:class].present?
      svg["class"] = options[:class]
    end
    raw doc
  end

  def has_icon?(category)
    @stripped = category.gsub(/\s+/, '')
    if Rails.application.assets.find_asset("#{@stripped}Blue.svg") && Rails.application.assets.find_asset("#{@stripped}Grey.svg")
      return @stripped
    else
      return false
    end
  end

  def title(text)
    content_for :title, text
  end

  def gon(text)
    content_for :gon, text
  end

  def recommended(event)
    city = event.venue.city
    target_events = []
    target_venues = []
    all_venues = Venue.all
    all_venues.each do |venue|
      if venue.city == city
        target_venues << venue
      end
    end
    target_venues.each do |venue|
      venue.events.each do |event|
        target_events << event
      end
    end
    target_events
  end

end
