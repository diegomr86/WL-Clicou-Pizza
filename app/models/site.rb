class Site < ActiveRecord::Base
  attr_accessible :code, :domain

  attr_accessor :info
end
