# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# added this line to fix problem 'Sprockets::Rails::Helper::AssetFilteredError' when trying to load admin.css on admin pages
Rails.application.config.assets.precompile += %w( admin.css )

# added as part of foundation install
Rails.application.config.assets.precompile += %w( vendor/modernizr.js )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
