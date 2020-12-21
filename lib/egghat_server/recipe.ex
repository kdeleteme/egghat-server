defmodule EgghatServer.Recipe do
  use Ecto.Schema
  import Ecto.Changeset

  schema "recipes" do
    field :name, :string
    field :image, :string

    belongs_to :user, EgghatServer.Accounts.User

    has_many :instructions, EgghatServer.Instruction
    has_many :ingredients, EgghatServer.Ingredient

    timestamps()
  end

  @doc false
  def changeset(recipe, attrs) do
    recipe
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
