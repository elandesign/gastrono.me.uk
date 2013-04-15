page "/*", :layout => :default
page "/recipes/*", :layout => :recipe

activate :blog do |blog|
  blog.prefix = "recipes"
end

activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.user = "paul"
  deploy.host = "elandesign.co.uk"
  deploy.path = "/home/paul/websites/gastrono.me.uk/public"
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

configure :build do
  activate :minify_css
  activate :minify_javascript
end
