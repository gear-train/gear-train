require "geartrain/version"
require 'geartrain/railtie' if defined?(Rails)

module Geartrain
  MANIFEST_PATH = 'assets/manifest.json'
  PUBLIC_ASSET_ROOT = '/assets'
end
