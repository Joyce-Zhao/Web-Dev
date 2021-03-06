defmodule Tasktracker2Web.TimeblockView do
  use Tasktracker2Web, :view
  alias Tasktracker2Web.TimeblockView

  def render("index.json", %{timeblocks: timeblocks}) do
    %{data: render_many(timeblocks, TimeblockView, "timeblock.json")}
  end

  def render("show.json", %{timeblock: timeblock}) do
    %{data: render_one(timeblock, TimeblockView, "timeblock.json")}
  end

  def render("timeblock.json", %{timeblock: timeblock}) do
    %{id: timeblock.id,
      start_time: timeblock.start_time,
      end_time: timeblock.end_time}
  end
end
