# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
IJURY::Application.initialize!

I18n.enforce_available_locales = false