{ lib, ... }:
let
    shells = [
        [ "c"         "C"          ]
        [ "cpp"       "C++"        ]
        [ "dotnet"    ".NET"       ]
        [ "go"        "Go"         ]
        [ "haskell"   "Haskell"    ]
        [ "java"      "Java"       ]
        [ "node"      "Node"       ]
        [ "lua"       "Lua"        ]
        [ "nim"       "Nim"        ]
        [ "ocaml"     "OCaml"      ]
        [ "py"        "Python"     ]
        [ "rs"        "Rust"       ]
        [ "zig"       "Zig"        ]
    ];

    f = x: {
        name = "dev-shells/${lib.elemAt x 0}";
        value = {
            path = ./dev-shells + "/${lib.elemAt x 0}";
            description = "Dev Shell for ${lib.elemAt x 1}";
        };
    };
in
builtins.listToAttrs (map f shells)
