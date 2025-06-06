Rails.application.config.session_store :redis_session_store,
  key: "_myapp_session",
  redis: {
    expire_after: 90.minutes,
    key_prefix: "myapp:session:",
    url: "redis://localhost:6379/0"
  },
  secure: Rails.env.production?,
  httponly: true,
  same_site: :lax
