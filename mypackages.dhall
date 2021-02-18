-- used as `/home/srghma/projects/my-purescript-package-sets/mypackages.dhall` in `./packages.dhall` of project

let upstream =
      /home/srghma/projects/package-sets/src/packages.dhall

let myupstream =
          upstream
      //  /home/srghma/projects/my-purescript-package-sets/packages.dhall
            upstream.(/home/srghma/projects/my-purescript-package-sets/upstreamTypeChunk.dhall)

in  myupstream
    with event.version = "master"
    with event.repo = "https://github.com/thomashoneyman/purescript-event"

    with filterable.version = "master"
    with filterable.repo = "https://github.com/thomashoneyman/purescript-filterable"

    with freeap.version = "master"
    with freeap.repo = "https://github.com/thomashoneyman/purescript-freeap"

    with quickcheck-laws.version = "master"
    with quickcheck-laws.repo = "https://github.com/thomashoneyman/purescript-quickcheck-laws"

    with optparse.version = "patch-2"
    with optparse.repo = "https://github.com/srghma/purescript-optparse"

    with spec.version = "update-0-14"
    with spec.repo = "https://github.com/srghma/purescript-spec"

    with yarn.version = "master"
    with yarn.repo = "https://github.com/srghma/purescript-yarn"

    with stringutils.version = "master"
    with stringutils.repo = "https://github.com/srghma/purescript-stringutils"

    with unique-lists.version = "master"
    with unique-lists.repo = "https://github.com/srghma/purescript-unique-lists"

    with variant.version = "polykindsUpdate"
    with variant.repo = "https://github.com/JordanMartinez/purescript-variant"

    with codec-argonaut.version = "patch-1"
    with codec-argonaut.repo = "https://github.com/srghma/purescript-codec-argonaut"

    with record-csv.version = "master"
    with record-csv.repo = "https://github.com/srghma/purescript-record-csv"

    with foreign-generic.version = "master"
    with foreign-generic.repo = "https://github.com/srghma/purescript-foreign-generic"

    with simple-json.version = "master"
    with simple-json.repo = "https://github.com/srghma/purescript-simple-json"

    with heterogeneous.version = "master"
    with heterogeneous.repo = "https://github.com/srghma/purescript-heterogeneous"

    with js-uri.version = "main"
    with js-uri.repo = "https://github.com/srghma/purescript-js-uri"

    with smolder.version = "master"
    with smolder.dependencies = myupstream.smolder.dependencies # ["js-uri"]
    with smolder.repo = "https://github.com/srghma/purescript-smolder"

    with websocket-simple.version = "master"
    with websocket-simple.repo = "https://github.com/srghma/purescript-websocket-simple"

    with express.version = "master"
    with express.repo = "https://github.com/purescript-express/purescript-express"

    with halogen-hooks-extra.version = "master"
    with halogen-hooks-extra.repo = "https://github.com/srghma/purescript-halogen-hooks-extra"
