# my-purescript-package-sets

overrides https://github.com/purescript/package-sets

# Example usage in `package.dhall`

```dhall
let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.8-20200831/packages.dhall

let overrides = {=}

let additions = {=}

in      upstream
    //  https://raw.githubusercontent.com/srghma/my-purescript-package-sets/master/packages.dhall
          upstream.(https://raw.githubusercontent.com/srghma/my-purescript-package-sets/master/upstreamTypeChunk.dhall ) -- this space here is very important
    //  overrides
    //  additions
```

the `record.({ xxx: XXX, yyy: YYY })` is a record projections (you extract only selected fields)

NOTE: this error https://github.com/dhall-lang/dhall-haskell/issues/2031

# How to update hashes

```sh
# remove hashes
sd --flags c 'sha256:\w+' '' ./packages.dhall

# this will add them again, updated
spago build
```
