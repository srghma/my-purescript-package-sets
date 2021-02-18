let srghma-packages =
      { protolude =
        { dependencies =
          [ "affjax"
          , "console"
          , "effect"
          , "node-fs-aff"
          , "node-process"
          , "node-path"
          , "prelude"
          , "psci-support"
          , "record"
          , "typelevel-prelude"
          , "debug"
          , "variant"
          , "ansi"
          , "url-regex-safe"
          ]
        , repo = "https://github.com/srghma/purescript-protolude.git"
        , version = "master"
        }
      -- , selenium-webdriver =
      --   { dependencies =
      --     [ "aff", "aff-reattempt", "aff-promise", "web-html", "web-uievents" ]
      --   , repo =
      --       "https://github.com/purescript-selenium-webdriver/purescript-selenium-webdriver.git"
      --   , version = "master"
      --   }
      , halogen-material-components-web =
        { dependencies =
          [ "arrays"
          , "console"
          , "debug"
          , "event"
          , "halogen-svg"
          , "effect"
          , "halogen"
          , "numbers"
          , "prelude"
          , "psci-support"
          , "record"
          , "strings"
          , "tuples"
          , "either"
          , "foldable-traversable"
          ]
        , repo =
            "https://github.com/srghma/purescript-halogen-material-components-web.git"
        , version = "master"
        }
      , web-intersection-observer =
        { dependencies = [ "prelude", "web-dom" ]
        , repo =
            "https://github.com/srghma/purescript-web-intersection-observer.git"
        , version = "master"
        }
      , record-extra-srghma =
        { dependencies =
          [ "record"
          , "typelevel-prelude"
          , "unfoldable"
          , "control"
          , "assert"
          , "lists"
          , "parallel"
          , "record-extra"
          , "js-timers"
          ]
        , repo = "https://github.com/srghma/purescript-record-extra-srghma.git"
        , version = "master"
        }
      , foreign-js-map =
        { dependencies =
          [ "console", "effect", "psci-support", "nullable", "functions" ]
        , repo = "https://github.com/srghma/purescript-foreign-js-map.git"
        , version = "master"
        }
      , foreign-js-set =
        { dependencies =
          [ "console", "effect", "psci-support", "nullable", "functions" ]
        , repo = "https://github.com/srghma/purescript-foreign-js-set.git"
        , version = "master"
        }
      , envparse =
        { dependencies =
          [ "console"
          , "effect"
          , "psci-support"
          , "nullable"
          , "functions"
          , "either"
          , "lists"
          , "ordered-collections"
          , "strings"
          , "free-alternative"
          , "node-process"
          , "boxes"
          ]
        , repo = "https://github.com/srghma/purescript-envparse.git"
        , version = "master"
        }
      , url-regex-safe =
        { dependencies = [ "console", "effect", "psci-support", "strings" ]
        , repo = "https://github.com/srghma/purescript-url-regex-safe.git"
        , version = "master"
        }
      }

let srghma-forks-published =
      \(upstream : ./upstreamTypeChunk.dhall) ->
        { halogen =
          { dependencies = upstream.halogen.dependencies # [ "event" ]
          , repo = "https://github.com/srghma/purescript-halogen.git"
          , version = "hydration-wip-2"
          }
        , halogen-vdom =
          { dependencies = upstream.halogen-vdom.dependencies
          , repo = "https://github.com/srghma/purescript-halogen-vdom.git"
          , version = "master"
          }
        , halogen-hooks =
                upstream.halogen-hooks
            //  { repo =
                    "https://github.com/srghma/purescript-halogen-hooks.git"
                , version = "master"
                }
        , halogen-storybook =
                upstream.halogen-storybook
            //  { repo =
                    "https://github.com/srghma/purescript-halogen-storybook.git"
                , version = "master"
                }
        , halogen-select =
                upstream.halogen-select
            //  { repo =
                    "https://github.com/srghma/purescript-halogen-select.git"
                , version = "master"
                }
        , halogen-formless =
                upstream.halogen-formless
            //  { repo =
                    "https://github.com/thomashoneyman/purescript-halogen-formless.git"
                , version = "hooks"
                }
        , node-http =
                upstream.node-http
            //  { repo = "https://github.com/srghma/purescript-node-http.git"
                , version = "master"
                }
        , hyper =
                upstream.hyper
            //  { repo = "https://github.com/srghma/hyper.git"
                , version = "patch-1"
                }
        , dom-indexed =
                upstream.dom-indexed
            //  { repo = "https://github.com/srghma/purescript-dom-indexed.git"
                , version = "patch-1"
                }
        , browser-cookies =
          { dependencies =
            [ "console"
            , "debug"
            , "effect"
            , "foldable-traversable"
            , "js-date"
            , "maybe"
            , "prelude"
            , "psci-support"
            , "strings"
            ]
          , repo = "https://github.com/srghma/purescript-browser-cookies.git"
          , version = "patch-1"
          }
        , nodemailer =
                upstream.nodemailer
            //  { repo = "https://github.com/srghma/purescript-nodemailer.git"
                , version = "patch-1"
                }
        , routing-duplex =
          { repo =
              "https://github.com/srghma/purescript-routing-duplex.git"
          , version = "polykindsUpdate-variants"
          , dependencies =
            [ "arrays"
            , "assert"
            , "console"
            , "control"
            , "effect"
            , "either"
            , "lazy"
            , "prelude"
            , "profunctor"
            , "psci-support"
            , "quickcheck"
            , "record"
            , "strings"
            , "js-uri"
            ]
          }
        , routing-duplex-variant =
          { repo = "https://github.com/srghma/purescript-routing-duplex-variant.git"
          , version = "master"
          , dependencies =
            [ "assert"
            , "console"
            , "effect"
            , "routing-duplex"
            , "variant"
            ]
          }
        }

let srghma-forks-nonpublished =
      { halogen-svg =
        { dependencies = [ "prelude" ]
        , repo = "https://github.com/srghma/purescript-halogen-svg.git"
        , version = "master"
        }
      , halogen-vdom-string-renderer =
        { dependencies =
          [ "prelude", "halogen-vdom", "ordered-collections", "foreign" ]
        , repo =
            "https://github.com/srghma/purescript-halogen-vdom-string-renderer.git"
        , version = "master"
        }
      , homogeneous-records =
        { dependencies =
          [ "record", "prelude", "typelevel-prelude", "unfoldable", "control" ]
        , repo = "https://github.com/srghma/purescript-homogeneous-records.git"
        , version = "master"
        }
      , html-parser =
        { dependencies = [ "console", "quickcheck", "string-parsers" ]
        , repo = "https://github.com/srghma/purescript-html-parser.git"
        , version = "master"
        }
      , webpack-loader-api =
        { dependencies =
          [ "aff"
          , "aff-promise"
          , "console"
          , "effect"
          , "foldable-traversable"
          , "foreign"
          , "foreign-object"
          , "node-buffer"
          , "node-path"
          , "prelude"
          , "psci-support"
          , "transformers"
          ]
        , repo = "https://github.com/srghma/purescript-webpack-loader-api.git"
        , version = "master"
        }
      , spec-should-equal-or-satisfy =
        { dependencies =
          [ "aff"
          , "aff-promise"
          , "console"
          , "effect"
          , "foldable-traversable"
          , "foreign"
          , "foreign-object"
          , "node-buffer"
          , "node-path"
          , "prelude"
          , "psci-support"
          , "transformers"
          ]
        , repo =
            "https://github.com/srghma/purescript-spec-should-equal-or-satisfy.git"
        , version = "master"
        }
      , free-alternative =
        { dependencies =
          [ "console", "effect", "psci-support", "spec", "free", "freeap" ]
        , repo = "https://github.com/srghma/purescript-free-alternative.git"
        , version = "master"
        }
      , express-passport =
        { dependencies =
          [ "console"
          , "effect"
          , "psci-support"
          , "maybe"
          , "either"
          , "express"
          , "spec"
          , "argonaut-codecs"
          , "foreign"
          , "newtype"
          ]
        , repo = "https://github.com/srghma/purescript-express-passport.git"
        , version = "master"
        }
      }

let other =
      { yarn =
        { dependencies =
          [ "strings", "arrays", "partial", "unicode" ]
        , repo = "https://github.com/Thimoteus/purescript-yarn.git"
        , version = "master"
        }
      , unordered-collection =
        { dependencies =
          [ "enums"
          , "functions"
          , "integers"
          , "lists"
          , "prelude"
          , "record"
          , "tuples"
          , "typelevel-prelude"
          ]
        , repo =
            "https://github.com/fehrenbach/purescript-unordered-collections.git"
        , version = "master"
        }
      , mkdirp-aff =
        { dependencies =
          [ "prelude"
          , "effect"
          , "node-fs-aff"
          , "node-fs"
          , "node-path"
          , "either"
          , "exceptions"
          , "aff"
          ]
        , repo = "https://github.com/leighman/purescript-mkdirp-aff.git"
        , version = "master"
        }
      , ps-cst =
        { dependencies =
          [ "console"
          , "effect"
          , "psci-support"
          , "record"
          , "strings"
          , "spec"
          , "node-path"
          , "node-fs-aff"
          , "ansi"
          , "dodo-printer"
          ]
        , repo = "https://github.com/srghma/purescript-ps-cst.git"
        , version = "master"
        }
      , dodo-printer =
        { dependencies =
          [ "aff"
          , "ansi"
          , "avar"
          , "console"
          , "effect"
          , "foldable-traversable"
          , "lists"
          , "maybe"
          , "minibench"
          , "node-child-process"
          , "node-fs-aff"
          , "node-process"
          , "psci-support"
          , "strings"
          ]
        , repo = "https://github.com/srghma/purescript-dodo-printer.git"
        , version = "master"
        }
      , dillonkearns-graphql-client =
        { dependencies =
          [ "affjax"
          , "effect"
          , "node-fs-aff"
          , "prelude"
          , "psci-support"
          , "record"
          , "argonaut-core"
          , "argonaut-codecs"
          , "argonaut-generic"
          , "typelevel-prelude"
          , "debug"
          , "spec"
          , "variant"
          , "protolude"
          , "web-socket"
          , "unordered-collection"
          ]
        , repo =
            "https://github.com/purescript-graphql-client/purescript-graphql-client.git"
        , version = "update-0-14"
        }
      , postgresql-client =
        { dependencies =
          [ "aff"
          , "argonaut"
          , "arrays"
          , "assert"
          , "bifunctors"
          , "bytestrings"
          , "console"
          , "datetime"
          , "decimals"
          , "effect"
          , "either"
          , "exceptions"
          , "foldable-traversable"
          , "foreign"
          , "foreign-generic"
          , "foreign-object"
          , "js-date"
          , "lists"
          , "maybe"
          , "newtype"
          , "nullable"
          , "prelude"
          , "psci-support"
          , "string-parsers"
          , "test-unit"
          , "transformers"
          , "tuples"
          ]
        , repo = "https://github.com/srghma/purescript-postgresql-client.git"
        , version = "master"
        }
      , aff-reattempt =
        { dependencies = [ "aff", "refs" ]
        , repo = "https://github.com/slamdata/purescript-aff-reattempt.git"
        , version = "master"
        }
      , lunapark =
        { dependencies =
          [ "aff"
          , "affjax"
          , "argonaut-codecs"
          , "argonaut-core"
          , "css"
          , "node-fs-aff"
          , "run"
          ]
        , repo = "https://github.com/srghma/purescript-lunapark.git"
        , version = "master"
        }
      , faker =
        { dependencies =
          [ "arrays"
          , "console"
          , "effect"
          , "newtype"
          , "psci-support"
          , "random"
          , "safely"
          , "strings"
          ]
        , repo = "https://github.com/kayhide/purescript-faker.git"
        , version = "master"
        }
      , boxes =
        { dependencies =
          [ "prelude", "profunctor", "strings", "stringutils" ]
        , repo = "https://github.com/srghma/purescript-boxes.git"
        , version = "master"
        }
      , aff-retry =
        { dependencies =
          [ "aff"
          , "transformers"
          , "exceptions"
          , "random"
          , "datetime"
          , "prelude"
          ]
        , repo = "https://github.com/srghma/purescript-aff-retry.git"
        , version = "patch-1"
        }
      , websocket-simple =
        { dependencies =
          [ "web-socket"
          , "web-events"
          , "effect"
          , "exceptions"
          , "var"
          ]
        , repo = "https://github.com/zudov/purescript-websocket-simple.git"
        , version = "master"
        }
      , var =
        { dependencies = [ "effect", "contravariant", "invariant" ]
        , repo = "https://github.com/zudov/purescript-var.git"
        , version = "master"
        }
      , jsdom =
        { dependencies =
          [ "console"
          , "effect"
          , "psci-support"
          , "aff"
          , "web-dom"
          , "web-html"
          , "exceptions"
          , "nullable"
          , "assert"
          , "debug"
          , "record"
          ]
        , repo = "https://github.com/srghma/purescript-jsdom.git"
        , version = "master"
        }
      , unique-lists =
        { dependencies = [ "prelude", "ordered-collections", "lists" ]
        , repo = "https://github.com/colehaus/purescript-unique-lists.git"
        , version = "master"
        }
      , csv =
        { dependencies =
          [ "prelude", "ordered-collections", "arrays", "parsing" ]
        , repo = "https://github.com/nwolverson/purescript-csv.git"
        , version = "master"
        }
      , record-csv =
        { dependencies =
          [ "free", "numbers", "parsing", "record", "typelevel-prelude" ]
        , repo = "https://github.com/hjmtql/purescript-record-csv.git"
        , version = "master"
        }
      }

in  \(upstream : ./upstreamTypeChunk.dhall) ->
        srghma-packages
    //  srghma-forks-published upstream
    //  srghma-forks-nonpublished
    //  other
