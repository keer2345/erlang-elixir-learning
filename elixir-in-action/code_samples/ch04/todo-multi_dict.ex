defmodule MutiDict do
  def new(), do: %{}

  def add(dict, key, value) do
    Map.update(dict, key, [value], &[value | &1])
  end

  def get(dict,  key) do
    Map.get(dict, key, [])
  end
end

defmodule TodoList do
  def new(), do: MutiDict.new()

  def add_entry(todo,key,value) do
    MutiDict.add(todo,key,value)
  end

  def entries(todo,key) do
    MutiDict.get(todo,key)
  end
end
