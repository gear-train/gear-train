require "geartrain/helper"

module Diningcar
  class Railtie < Rails::Railtie
    initializer "geartrain.helper" do
      ActionView::Base.send :include, Helper
    end
  end
end
