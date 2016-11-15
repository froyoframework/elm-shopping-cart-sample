module Parent exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Catalog as CatalogView
import Cart as CartView
import Types exposing (..)

parentContainer : Catalog -> Html Action
parentContainer model =
    div [class "columns"]
        [CatalogView.parentContainer model
        ,CartView.parentContainer]