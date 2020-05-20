defmodule Todoapp.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :title, :string
      add :description, :string, default: ""
      add :points, :integer, default: 0
      add :status, :string, default: "active"

      timestamps()
    end

  end
end
