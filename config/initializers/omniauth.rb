OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '16964773285-b4onkctoj64cur4bd3rv7gmu58qami3g.apps.googleusercontent.com', 'arc7H7PWVoZknMjEGwYvDSX7', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end