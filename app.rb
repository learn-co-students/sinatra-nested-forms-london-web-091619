require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get "/" do 
    
      erb:root
    end

    post "/root"  do  #we need to write a form for the landing

    erb :root


    end

    get '/new' do 

    erb :'/pirates/new'

    end

    post '/pirates' do 
      binding.pry
      @pirates = Pirate.create(params)
     
      redirect :'/show'
    end
  end
end
