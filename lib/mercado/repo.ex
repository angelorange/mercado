defmodule Mercado.Repo do
  use Ecto.Repo,
    otp_app: :mercado,
    adapter: Ecto.Adapters.Postgres
end
