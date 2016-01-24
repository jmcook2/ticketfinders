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

end
