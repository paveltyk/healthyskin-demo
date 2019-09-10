defmodule Healthyskin.Repo do
  use Ecto.Repo,
    otp_app: :healthyskin,
    adapter: Ecto.Adapters.Postgres
end
