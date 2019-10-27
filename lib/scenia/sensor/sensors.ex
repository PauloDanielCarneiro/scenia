defmodule Scenia.Sensor.Sensors do
  use Ecto.Schema
  import Ecto.Changeset

  schema "sensors_information" do
    field :A1, :float
    field :A2, :float
    field :A3, :float
    field :Irms, :float
    field :Vrms, :float
    field :freq1, :float
    field :freq2, :float
    field :freq3, :float
    field :module_id, :id

    timestamps()
  end

  @doc false
  def changeset(sensors_information, attrs) do
    sensors_information
    |> cast(attrs, [:A1, :A2, :A3, :freq1, :freq2, :freq3, :Irms, :Vrms])
    |> validate_required([:A1, :A2, :A3, :freq1, :freq2, :freq3, :Irms, :Vrms])
  end
end