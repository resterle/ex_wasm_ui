import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ex_wasm_ui_web, ExWasmUiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ul2Gz3aT0VetZolUTj1EaLvZsjOmnTIqb88VejX3/uVIVX1kXHp5yPd8B11jnix8",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
