require 'pry'

after_configuration do
  sprockets.append_path Pathname(root).join('vendor','assets')
  sprockets.import_asset 'reveal.js-3.1.0/plugin/notes/notes.js' do |_| 'reveal.js-3.1.0/plugin/notes/notes.js' end
  sprockets.import_asset 'reveal.js-3.1.0/plugin/math/math.js' do |_| 'reveal.js-3.1.0/plugin/math/math.js' end
end


###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end
#

# activate :syntax, :line_numbers => false
#
#

set :relative_links, true

set :css_dir, 'assets/stylesheets'

set :js_dir, 'assets/javascripts'

set :images_dir, 'assets/images'


# activate :syntax, :line_numbers => true

set :markdown_engine, :kramdown

set :haml, { ugly: true }

# Build-specific configuration
configure :build do

  ignore '**/*.graffle'
  ignore '**/*.monopic'

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash, ignore: [%r{development/.*$}]

  activate :minify_html

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end


