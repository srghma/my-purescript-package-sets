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
          , "generics-rep"
          ]
        , repo = "https://github.com/srghma/purescript-protolude.git"
        , version = "master"
        }
      , halogen-material-components-web =
        { dependencies =
          [ "arrays"
          , "console"
          , "debug"
          , "event"
          , "halogen-svg"
          , "effect"
          , "generics-rep"
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
          , "generics-rep"
          , "lists"
          , "ordered-collections"
          , "strings"
          , "free-alternative"
          , "node-process"
          ]
        , repo = "https://github.com/srghma/purescript-envparse.git"
        , version = "master"
        }
      , url-regex-safe =
        { dependencies =
          [ "console"
          , "effect"
          , "psci-support"
          , "strings"
          ]
        , repo = "https://github.com/srghma/purescript-url-regex-safe.git"
        , version = "master"
        }
      }

let srghma-forks-published =
          \(upstream : ./upstreamTypeChunk.dhall)
      ->  { halogen =
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
                      "https://github.com/srghma/purescript-halogen-formless.git"
                  , version = "master"
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
          , web-dom =
                  upstream.web-dom
              //  { repo = "https://github.com/srghma/purescript-web-dom.git"
                  , version = "patch-1"
                  }
          , media-types =
                  upstream.media-types
              //  { repo =
                      "https://github.com/srghma/purescript-media-types.git"
                  , version = "patch-1"
                  }
          , dom-indexed =
                  upstream.dom-indexed
              //  { repo =
                      "https://github.com/srghma/purescript-dom-indexed.git"
                  , version = "patch-1"
                  }
          , slug =
                  upstream.slug
              //  { repo = "https://github.com/srghma/purescript-slug.git"
                  , version = "master"
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
          , node-process =
                upstream.node-process
            //  { repo = "https://github.com/srghma/purescript-node-process.git"
                , version = "master"
                }
          , either =
                upstream.either
            //  { repo = "https://github.com/srghma/purescript-either.git"
                , version = "5aac6a0"
                }
          , express =
                upstream.express
            //  { repo = "https://github.com/srghma/purescript-express.git"
                , version = "master"
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
        , repo = "https://github.com/srghma/purescript-spec-should-equal-or-satisfy.git"
        , version = "master"
        }
      , free-alternative =
        { dependencies =
          [ "console"
          , "effect"
          , "psci-support"
          , "spec"
          , "free"
          , "freeap"
          ]
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
          [ "strings", "arrays", "generics-rep", "partial", "unicode" ]
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
          , "generics-rep"
          , "psci-support"
          , "record"
          , "strings"
          , "spec"
          , "node-path"
          , "node-fs-aff"
          , "ansi"
          , "dodo-printer"
          ]
        , repo = "https://github.com/purescript-codegen/purescript-ps-cst.git"
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
        , repo = "https://github.com/natefaubion/purescript-dodo-printer.git"
        , version = "master"
        }
      , graphql-client =
        { dependencies =
          [ "affjax"
          , "effect"
          , "generics-rep"
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
        , version = "master"
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
        , repo =
            "https://github.com/rightfold/purescript-postgresql-client.git"
        , version = "master"
        }
      }

in      \(upstream : ./upstreamTypeChunk.dhall)
    ->      srghma-packages
        //  srghma-forks-published upstream
        //  srghma-forks-nonpublished
        //  other
