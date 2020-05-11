defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do
  defstruct owner: %Customer{}, details: "", severity: 1
end

# Two methods to update a struct with name and without name
### report = %{report | owner: %{report.owner | company: "PragProg" }}
# -------------------------------------------------------------------------------------
### report = %BugReport{report | owner: %Customer{report.owner | company: "PragProg" }}
