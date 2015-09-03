OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '987284149300-ne0l3rciudoo9qghnm4h5tmufiopgrir.apps.googleusercontent.com', 'SHdA7xoZ_O-ChqnDzfL7mxV3', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
