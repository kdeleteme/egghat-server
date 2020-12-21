defmodule EgghatServer.Repo.Migrations.CreatePantryItems do
  use Ecto.Migration

  def change do
    create table(:pantry_items) do
      add :name, :string
      add :available_amount, :integer
      add :measurement_unit, :string
      add :user_id, references(:users, on_delete: :delete_all)

      timestamps()
    end

  end
end
