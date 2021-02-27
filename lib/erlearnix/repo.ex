defmodule Erlearnix.Repo do
  use Ecto.Repo,
    otp_app: :erlearnix,
    adapter: Ecto.Adapters.Postgres
end
