require "instagram"

Instagram.configure do |config|
  config.client_id = "b287f08343ef4e2ebf3d122316fcdd6c"
  config.client_secret = "19cf16db2e0d43b38ea1adaa9205d689"
end

CALLBACK_URL = "http://localhost:3000/data"