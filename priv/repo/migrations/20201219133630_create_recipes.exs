defmodule EgghatServer.Repo.Migrations.CreateRecipes do
  use Ecto.Migration

  def change do
    create table(:recipes) do
      add :name, :string
      add :image, :string
      add :user_id, references(:users, on_delete: :delete_all)

      timestamps()
    end

  end
end
