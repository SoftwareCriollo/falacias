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

  get('/fallacies/cargadeprueba') do 
    slim :"fallacies/cargadeprueba"
  end  

  get('/fallacies/ambiguedad') do 
    slim :"fallacies/ambiguedad"
  end  

  get('/fallacies/terrenonatural') do 
    slim :"fallacies/terrenonatural"
  end  

  get('/fallacies/defensaespecial') do 
    slim :"fallacies/defensaespecial"
  end  

  get('/fallacies/preguntaintencionada') do 
    slim :"fallacies/preguntaintencionada"
  end  

  get('/fallacies/falaciajugador') do 
    slim :"fallacies/falaciajugador"
  end  

  get('/fallacies/carrobanda') do 
    slim :"fallacies/carrobanda"
  end  

  get('/fallacies/apelarautoridad') do 
    slim :"fallacies/apelarautoridad"
  end  

  get('/fallacies/composiciondivision') do 
    slim :"fallacies/composiciondivision"
  end  

  get('/fallacies/falsacontribucionhombre') do 
    slim :"fallacies/falsacontribucionhombre"
  end  

  get('/fallacies/genetica') do 
    slim :"fallacies/genetica"
  end  

  get('/fallacies/blancoonegro') do 
    slim :"fallacies/blancoonegro"
  end  

  get('/fallacies/preguntaprincipiante') do 
    slim :"fallacies/preguntaprincipiante"
  end  

  get('/fallacies/apelarnatural') do 
    slim :"fallacies/apelarnatural"
  end  

  get('/fallacies/anecdotico') do 
    slim :"fallacies/anecdotico"
  end  

  get('/fallacies/francotiradortexas') do 
    slim :"fallacies/francotiradortexas"
  end  

  get('/fallacies/terrenonatural') do 
    slim :"fallacies/terrenonatural"
  end  

end
