require 'rubygems'
require 'sinatra/base'
require 'slim'
require 'sass'

Slim::Engine.set_default_options :sections => false

class App < Sinatra::Base

  set :public, File.join(File.dirname(__FILE__), 'public')
  set :views, File.join(File.dirname(__FILE__), 'views')

  helpers do
    def partial(page, options={})
      haml page, options.merge!(:layout => false)
    end
  end


  get('/') do 
    slim :index
  end

  get('/styles') do 
    slim :styles
  end
  
  get('/grid') do 
    slim :grid
  end

  get('/slider') do 
    slim :slider
  end

  get('/buttons') do 
    slim :buttons
  end  

  get('/fallacies/hombredepaja') do 
    slim :"fallacies/hombredepaja"
  end  

  get('/fallacies/causafalsa') do 
    slim :"fallacies/causafalsa"
  end  

  get('/fallacies/apelaremocion') do 
    slim :"fallacies/apelaremocion"
  end  

  get('/fallacies/adhominem') do 
    slim :"fallacies/adhominem"
  end  

  get('/fallacies/falaciadefalacia') do 
    slim :"fallacies/falaciadefalacia"
  end  

  get('/fallacies/pendienteresbaladiza') do 
    slim :"fallacies/pendienteresbaladiza"
  end  

  get('/fallacies/tuquoque') do 
    slim :"fallacies/tuquoque"
  end  


end
