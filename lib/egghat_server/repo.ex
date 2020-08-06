defmodule EgghatServer.Repo do
  use Ecto.Repo,
    otp_app: :egghat_server,
    adapter: Ecto.Adapters.Postgres
end
