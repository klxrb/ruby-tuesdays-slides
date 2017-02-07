require 'rack'
require 'warden'
require 'byebug'

main_app = Rack::Builder.new do
  use Rack::Session::Cookie, :secret => "replace this with some secret key"

  use Warden::Manager do |manager|
    manager.default_strategies :password, :basic
  end

  app = Proc.new do |env|
    byebug
    # warden = env['warden']
    # warden.authenticated?(:user) && warden.logout(:user)
    # warden.set_user({id: 1}, scope: :user)
    # warden.user(scope: :user)

    ['200', {'Content-Type' => 'text/html'}, ['A barebones rack app.']]
  end

  run app
end

run main_app
