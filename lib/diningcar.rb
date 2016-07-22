require "diningcar/version"
require 'diningcar/railtie' if defined?(Rails)

module Diningcar
  MANIFEST_PATH = 'assets/manifest.json'
  PUBLIC_ASSET_ROOT = '/assets'
end
