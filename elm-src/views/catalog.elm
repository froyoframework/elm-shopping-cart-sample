module Catalog exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

parentContainer : Html tag
parentContainer =
    div [class "column is-three-quarters"]
        [div [class "content"] 
            [h2 [] 
                [text "Latest Products"]
            ,div [class "tile"] [productCard]]]

productCard : Html tag
productCard =
    div [class "card card-product"] 
        [div [class "card-image"] 
            [figure [class "image is-4by3"]
                [img [src "http://placehold.it/300x225", alt ""] []]
            ,div [class "content card-product-content"]
                [h2 []
                    [a [href "#"] [text "Product Title"]]
                ,p [] [text "Rp25000"]
                ,p [] [text "This is description"]
                ,a [class "button is-primary"] [text "Beli"]]]]
