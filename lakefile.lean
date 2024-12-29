import Lake
open Lake DSL

package "testcomb" where
  -- Settings applied to both builds and interactive editing
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩ -- pretty-prints `fun a ↦ b`
  ]
  -- add any additional package configuration options here

require "leanprover-community" / "mathlib" from git
  "https://github.com/leanprover-community/mathlib4/" @ "20c73142afa995ac9c8fb80a9bb585a55ca38308"

@[default_target]
lean_lib «Testcomb» where
  -- add any library configuration options here
