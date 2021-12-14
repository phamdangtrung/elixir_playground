defmodule ElixirPlaygroundWeb.EventView do
  use ElixirPlaygroundWeb, :view

  def format_date(date) do
    "#{DateTime.to_date(date)}  #{DateTime.to_time(date)}"
    # "#{date[date]}/#{date[month]}/#{date[year]}  #{date[hour]}:#{date[minute]}:#{date[second]}"

  end
end
