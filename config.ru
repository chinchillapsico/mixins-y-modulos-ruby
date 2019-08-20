#config.ru
require 'rack'
  class MiPrimeraWebApp
    def call(env)
      [200, {'Content-Type' => 'text/html'}, ["<h1>There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...<h1>"]]
  end
end

run MiPrimeraWebApp.new