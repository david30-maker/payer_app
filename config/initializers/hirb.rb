if Rails.env.development? || Rails.env.staging?
    Hirb.enable
  end
  