class Diningcar::InstallGenerator < Rails::Generators::Base
  desc "Install diningcar's files"
  def copy_templates
    directory File.expand_path('../templates', __FILE__), '.'
  end

  def install_packages
    run 'npm install'
  end

  source_root File.expand_path('../templates', __FILE__)
end
