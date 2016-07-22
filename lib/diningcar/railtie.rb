require "diningcar/helper"

module Diningcar
  class Railtie < Rails::Railtie
    initializer "diningcar.helper" do
      ActionView::Base.send :include, Helper
    end
  end
end
