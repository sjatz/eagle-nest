defmodule EagleNest.Repo do
  use Ecto.Repo,
    otp_app: :eagle_nest,
    adapter: Ecto.Adapters.Postgres
end
