class WelcomeController < ApplicationController
  require 'open-uri'

  def index
    @reg = params[:hhregion] || '0'
    @sea = params[:hseason] || 'All'

    query = {}
    query[:region] = @reg if @reg != '0'
    query[:season] = @sea if @sea != 'All'

    if query.keys.empty?
      @plants = Plant.all
    else
      @plants = Plant.where(query)
    end
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
