defmodule Mercado.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :sexo, :string
      add :nome, :string

      timestamps()
    end
  end
end
