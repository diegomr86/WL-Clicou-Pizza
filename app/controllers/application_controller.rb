require 'open-uri'
require 'json'

class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_site

  def load_site

    @site = Site.find_by_domain(request.host)

    if @site.present?
      @site.info = ActiveSupport::JSON.decode(open("http://www.clicoupizza.com/#{@site.code}.json?wl=true").read)
      @pizzas = ActiveSupport::JSON.decode(open("http://www.clicoupizza.com/#{@site.code}/order_pizza.json?wl=true").read)
      @ratings = ActiveSupport::JSON.decode(open("http://www.clicoupizza.com/#{@site.code}/rating.json?wl=true").read)
    end
  end
end
