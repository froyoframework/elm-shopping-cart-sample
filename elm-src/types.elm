module Types exposing (..)

type alias Product =
    { title : String
    , description : String
    , price : Int
    }

type alias Catalog = { item : List Product }

type alias Cart =
    { item : List Product
    , subTotal : Int
    }

type Action 
    = Buy 
    | FetchCatalog
    | ErrorOccurred String
    | DataFetched (List Product)