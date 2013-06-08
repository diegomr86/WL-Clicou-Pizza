class MenuController < ApplicationController
  def index
    @items = ActiveSupport::JSON.decode(open("http://localhost:3001/#{@site.code}/order_#{params['type']}.json?#{params['type']}_category_id=#{params['category']}&wl=true").read) if params['type'] != 'pizza'
  end
end

