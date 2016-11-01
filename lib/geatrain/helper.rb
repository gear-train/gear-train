require "geartrain/manifest"

module Diningcar
  module Helper
    def manifest
      @manifest ||= Diningcar::Manifest.new(Rails.root.join('public', MANIFEST_PATH))
    end

    def compute_asset_path(source, options = {})
      File.join(PUBLIC_ASSET_ROOT, manifest.path_for_asset(source))
    end
  end
end
