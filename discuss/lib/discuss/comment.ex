defmodule Discuss.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :content, :string
    belongs_to :user, Discuss.User
    belongs_to :topic, Discuss.Topic

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, [:content])
    |> validate_required([:content])
  end
end
