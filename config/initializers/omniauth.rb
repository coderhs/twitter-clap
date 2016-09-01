Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'eESMxZHltsAZtLiPn1wK5pWkI', 'SrLrh1w4J6b8Ya07CVVrAEmIfyooeZQQuJEI9R2Ayceiijnc6n'
  #provider :facebook, '...', '...'
  #provider :github, '...', '...'
end