Rails.application.routes.draw do
  ############################################################################
  #Routes for UI only

  root 'cuts#index'

  ############################################################################
  #Routes for UI + API

  post 'cuts/create', as: :cuts
  get '/:code', to: 'cuts#decode'

  ############################################################################
  #Routes for API only

end
