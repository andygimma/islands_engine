defmodule IslandsEngine.Coordinate do 
    @moduledoc """
    Coordinates
    """
    alias __MODULE__
    @enforce_keys [:row, :col]
    @board_range 1..10
    defstruct [:row, :col]

    # def new(row, col), do: {:ok, %Coordinate{row: row, col: col}}
    @doc """
    Create a new set of coordinates.
    ## Example
        iex> IslandsEngine.new(1, 1)
        {:ok, %IslandsEngine.Coordinate{col: 1, row: 1}}

        iex> IslandsEngine.new(11, 11) # numbers are out of range
        {:error, :invalid_coordinate}
    """
    def new(row, col) when row in(@board_range) and col in(@board_range), do:
        {:ok, %Coordinate{row: row, col: col}}
    
    def new(_row, _col), do: {:error, :invalid_coordinate}
end
