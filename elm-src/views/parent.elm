module Parent exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Catalog as CatalogView
import Cart as CartView

parentContainer : Html tag
parentContainer =
    div [class "columns"]
        [CatalogView.parentContainer
        ,CartView.parentContainer]