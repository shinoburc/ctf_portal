Airbrake.configure do |config|
  config.api_key = 'ctf-portal-errbit'
  config.host    = 'morizyun-errbit.herokuapp.com'
  config.port    = 80
  config.secure  = config.port == 443
  config.development_environments = %w(development test)
end