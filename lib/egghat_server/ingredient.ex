defmodule EgghatServer.Ingredient do
  use Ecto.Schema
  import Ecto.Changeset


  schema "ingredients" do
    field :name, :string
    field :amount, :integer
    field :measurement_unit, :string

    belongs_to :recipe, EgghatServer.Recipe

    timestamps()
  end

  @doc false
  def changeset(ingredient, attrs) do
    ingredient
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
