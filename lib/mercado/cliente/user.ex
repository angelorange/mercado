defmodule Mercado.Cliente.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :sexo, :string
    field :nome, :string

    timestamps()
  end

  @required_params [:email, :sexo, :nome]
  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, @required_params)
    |> validate_required(@required_params)
  end
end
