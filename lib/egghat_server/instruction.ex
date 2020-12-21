defmodule EgghatServer.Instruction do
  use Ecto.Schema
  import Ecto.Changeset

  schema "instructions" do
    field :name, :string
    field :text, :string
    field :priority_number, :integer

    belongs_to :recipe, EgghatServer.Recipe

    timestamps()
  end

  @doc false
  def changeset(instruction, attrs) do
    instruction
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
