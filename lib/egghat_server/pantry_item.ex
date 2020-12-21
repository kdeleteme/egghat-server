defmodule EgghatServer.PantryItem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "pantry_items" do
    field :name, :string
    field :available_amount, :integer
    field :measurement_unit, :string

    belongs_to :user, EgghatServer.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(pantry_item, attrs) do
    pantry_item
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
