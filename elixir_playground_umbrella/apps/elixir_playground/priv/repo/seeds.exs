# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ElixirPlayground.Repo.insert!(%ElixirPlayground.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

ElixirPlayground.EventsQueries.create(ElixirPlayground.Events.changeset(%ElixirPlayground.Events{}, %{date: "2011-05-15 17:00:00", title: ".NET Conference", location: "London", description: "News in .NET 6.0 and C# 10"}))
ElixirPlayground.EventsQueries.create(ElixirPlayground.Events.changeset(%ElixirPlayground.Events{}, %{date: "2012-12-07 12:00:00", title: ".NET Community Standup", location: "British Columbia", description: "QA Community Standup for .NET 6.0 and future releases"}))
ElixirPlayground.EventsQueries.create(ElixirPlayground.Events.changeset(%ElixirPlayground.Events{}, %{date: "2013-11-04 09:00:00", title: "Haskell Introduction", location: "VietNam", description: "Introduction to Haskell"}))
ElixirPlayground.EventsQueries.create(ElixirPlayground.Events.changeset(%ElixirPlayground.Events{}, %{date: "2011-04-23 18:00:00", title: "Introduction to Functional Programming", location: "Ontario", description: "Functional programming and its future"}))
ElixirPlayground.EventsQueries.create(ElixirPlayground.Events.changeset(%ElixirPlayground.Events{}, %{date: "2009-01-01 11:00:00", title: "Programming paradigms", location: "Colorado", description: "Object Oriented and other paradigms"}))
ElixirPlayground.EventsQueries.create(ElixirPlayground.Events.changeset(%ElixirPlayground.Events{}, %{date: "2005-08-31 14:00:00", title: "Elixir - Phoenix", location: "Florida", description: "Phoenix framework for Elixir"}))
ElixirPlayground.EventsQueries.create(ElixirPlayground.Events.changeset(%ElixirPlayground.Events{}, %{date: "2016-02-22 08:00:00", title: "Concurrency and Parallelism", location: "Tennessee", description: "The difference between concurrency and parallelism in programming"}))
