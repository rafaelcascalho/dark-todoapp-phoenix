defmodule Todoapp.Project.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :description, :string, default: ""
    field :points, :integer, default: 0
    field :status, :string, default: "active"
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :description, :points, :status])
    |> validate_required([:title, :description, :points, :status])
  end
end
