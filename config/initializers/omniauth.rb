Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'mac0BkkMR7YgMM4N9xa7gw', 'oFXSZelwAdoOUv5HwE9l2V7H5E6Kc86Dewowy905gto'
  #provider :facebook, 'APP_ID', 'APP_SECRET'
end