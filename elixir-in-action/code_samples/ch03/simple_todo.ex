defmodule TodoList do
  def new(), do: %{}

  def add_entry(todolist, date, title) do
    Map.update(todolist, date, [title], fn titles -> [title | titles] end)
  end

  def entries(todolist, date) do
    Map.get(todolist, date, [])
  end
end
