require 'dotenv'
require 'dashing'

configure do
  set :auth_token, '3wC4HNy3d4CjsClfw9yI'

  helpers do
    def protected!
      # Put any authentication code you want in here.
      # This method is run before accessing any resource.
    end
  end
end

map Sinatra::Application.assets_prefix do
  run Sinatra::Application.sprockets
end

Dotenv.load

run Sinatra::Application