import Html.App as App
import Parent as ParentView exposing (parentContainer)
import Types exposing (..)
import Http
import Json.Decode as Json exposing ((:=))
import Task exposing (Task)

main : Program Never
main =
    App.program
        { init = init
        , view = parentContainer
        , update = update
        , subscriptions = \_ -> Sub.none
        }

-- Model
init : (Catalog, Cmd Action)
init =
    let model = { item = []}
    in model ! [fetchCatalogs]

-- Update
update : Action -> Catalog -> (Catalog, Cmd Action)
update msg model =
    case msg of
        Buy -> model ! []

        FetchCatalog -> model ! [fetchCatalogs]

        ErrorOccurred errorMessage -> model ! []

        DataFetched products -> { model | item = products} ! []


-- Http
productInfoDecoder : Json.Decoder Product
productInfoDecoder =
    Json.object3
        Product
        ("nama" := Json.string)
        ("deskripsi" := Json.string)
        ("harga" := Json.int)

decodeProductsList : Json.Decoder (List Product)
decodeProductsList =
    Json.list productInfoDecoder

fetchCatalogs : Cmd Action
fetchCatalogs =
    let url = "http://localhost:3000/data"
    in
        Http.get decodeProductsList url
            |> Task.mapError toString
            |> Task.perform ErrorOccurred DataFetched