defmodule TodoList do
  defstruct auto_id: 1, entries: %{}

  def new(), do: %TodoList{}

  def add_entry(todolist, entry) do
    entry = Map.put(entry, :id, todolist.auto_id)

    new_entries = Map.put(todolist.entries,
      todolist.auto_id,
      entry
    )

    %TodoList{todolist | entries: new_entries, auto_id: todolist.auto_id + 1}
  end

  def entries(todolist, date) do
    todolist.entries
    |> Stream.filter(fn {_, entry} -> entry.date == date end)
    |> Enum.map(fn {_, entry} -> entry end)
  end
end
