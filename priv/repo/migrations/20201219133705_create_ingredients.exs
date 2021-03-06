defmodule EgghatServer.Repo.Migrations.CreateIngredients do
  use Ecto.Migration

  def change do
    create table(:ingredients) do
      add :name, :string
      add :amount, :integer
      add :measurement_unit, :string
      add :recipe_id, references(:recipes, on_delete: :delete_all)

      timestamps()
    end

  end
end
