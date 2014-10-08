class WelcomeController < ApplicationController
  require 'open-uri'

  def index
    @fam = params[:hfamily] || 'All'
    @reg = params[:hhregion] || '0'

    @plants = (@fam == 'All' ? Plant.all : Plant.where(family: @fam))
    @plants = @plants.where("region LIKE ?", "% #{@reg}%") if @reg != '0'
  end

  def about
  end

  def hardiness_region_for
    zipcode = params[:zipo]
    url = 'http://www.arborday.org/webtools/hortzones/zones2.cfm?' \
          'RegID=3172&ZipCode=' + zipcode.to_s
    doc = Nokogiri::HTML(open(url))
    m = /zones?:.(\d+)/.match(doc.at_css('.ZoneToolZoneMessage').text)
    render json: m[1]
  end
end
