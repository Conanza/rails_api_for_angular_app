require File.expand_path('../boot', __FILE__)
require 'rails/all'
Bundler.require(*Rails.groups)

module AngularApp
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.assets.paths << Rails.root.join("vendor","assets")
    config.assets.precompile << %r(.*.(?:eot|svg|ttf|woff|woff2)$)
  end
end
