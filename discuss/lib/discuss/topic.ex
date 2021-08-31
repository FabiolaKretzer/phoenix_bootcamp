defmodule Discuss.Topic do
  use Ecto.Schema
  import Ecto.Changeset

  schema "topics" do
    field :title, :string
    belongs_to :user, Discuss.User
    has_many :comments, Discuss.Comment
  end

  def changeset(topic, params), do: create_changeset(topic, params)

  def changeset(params), do: create_changeset(%__MODULE__{}, params)

  defp create_changeset(module_or_topic, params) do
    module_or_topic
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
