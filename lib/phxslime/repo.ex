defmodule Phxslime.Repo do
  use Ecto.Repo,
    otp_app: :phxslime,
    adapter: Ecto.Adapters.Postgres
end
