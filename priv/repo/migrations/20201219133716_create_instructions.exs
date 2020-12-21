defmodule EgghatServer.Repo.Migrations.CreateInstructions do
  use Ecto.Migration

  def change do
    create table(:instructions) do
      add :text, :string
      add :priority_number, :integer
      add :recipe_id, references(:recipes, on_delete: :delete_all)

      timestamps()
    end

  end
end
