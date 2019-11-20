defmodule Scenia.Repo.Migrations.CreateSensorInformations do
  use Ecto.Migration

  def change do
    alter table(:sensor_informations) do
      add :send_at, :datetime

      timestamps()
    end
  end
end