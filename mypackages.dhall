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
    with filterable.repo
        = "https://github.com/thomashoneyman/purescript-filterable"
    with freeap.version = "master"
    with freeap.repo = "https://github.com/thomashoneyman/purescript-freeap"
    with quickcheck-laws.version = "master"
    with quickcheck-laws.repo
        = "https://github.com/thomashoneyman/purescript-quickcheck-laws"
    with optparse.version = "patch-2"
    with optparse.repo = "https://github.com/srghma/purescript-optparse"
    with spec.version = "update-0-14"
    with spec.repo = "https://github.com/srghma/purescript-spec"
