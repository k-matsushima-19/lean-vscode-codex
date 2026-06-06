import Lake
open Lake DSL

package «my_lean» where
  -- package configuration options go here

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.30.0"

lean_lib «MyLean» where
  -- library configuration options go here
