-- stolen from https://github.com/purescript/package-sets/blob/master/src/Package.dhall
let Package = { dependencies : List Text, repo : Text, version : Text }

in  { halogen : Package
    , halogen-vdom : Package
    -- , halogen-hooks : Package
    -- , halogen-storybook : Package
    -- , halogen-select : Package
    -- , halogen-formless : Package
    -- , node-http : Package
    -- , hyper : Package
    -- , web-dom : Package
    -- , media-types : Package
    -- , dom-indexed : Package
    -- , slug : Package
    -- , foldable-traversable : Package
    -- , either : Package
    -- , express : Package
    -- , node-process : Package
    -- , nodemailer : Package
    -- , routing-duplex : Package
    }
