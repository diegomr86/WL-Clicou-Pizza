require 'open-uri'
require 'json'

class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_site

  def load_site

    @site = Site.find_by_domain(request.host)

    @site.info = ActiveSupport::JSON.decode(open("http://clicoupizza.com/#{@site.code}.json?wl=true").read) if @site.present?
    @pizzas = ActiveSupport::JSON.decode(open("http://clicoupizza.com/#{@site.code}/order_pizza.json?wl=true").read) if @site.present?
    @ratings = ActiveSupport::JSON.decode(open("http://clicoupizza.com/#{@site.code}/rating.json?wl=true").read) if @site.present?

  end
end
