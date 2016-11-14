module Types exposing (..)

import Http

type alias Product =
    { title : String
    , description : String
    , price : Maybe Int
    }

type alias Cart =
    { item : List Product
    , subTotal : Int
    }

type Action = Buy | FetchCatalog (Result Http.error String)