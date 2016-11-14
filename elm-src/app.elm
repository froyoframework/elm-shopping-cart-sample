import Html exposing (..)
import Parent as ParentView
import Types exposing (..)
import Http
import Json.Decode as Decode

main : Html tag
main =
    ParentView.parentContainer

-- Model
init : (Product, Cmd Action)
init = (Product "" "" Nothing, Cmd.none)

-- Http
getCatalogs : Cmd Action
getCatalogs =
    let url = "http://localhost:3000/data"
    in Http.send FetchCatalog <| Http.get url decodeCatalogUrl

