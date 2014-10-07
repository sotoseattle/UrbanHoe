class WelcomeController < ApplicationController
  require 'open-uri'

  def index
  end

  def about
  end

  def hardiness_region_for
    zipcode = params[:zipo]
    # validate here

    url = 'http://www.arborday.org/webtools/hortzones/zones2.cfm?' \
          'RegID=3172&ZipCode=' + zipcode.to_s
    doc = Nokogiri::HTML(open(url))
    m = /zones?:.(\d+)/.match(doc.at_css('.ZoneToolZoneMessage').text)
    render json: m[1]
  end
end
