Rails.application.routes.draw do

  root "clickpoint#home"

  put "/update" => "clickpoint#update"

end
