module Catalog exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)

parentContainer : Catalog -> Html Action
parentContainer model =
    div [class "column is-three-quarters"]
        [div [class "content"] 
            [h2 [] 
                [text "Latest Products"]
            ,productCard model]]

productCard : Catalog -> Html Action
productCard model =
    let
        showProduct product =
            div [class "card card-product"] 
                [div [class "card-image"] 
                    [figure [class "image is-4by3"]
                        [img [src "http://placehold.it/300x225", alt ""] []]
                    ,div [class "content card-product-content"]
                        [h2 []
                            [a [href "#"] [text product.title]]
                        ,p [] [text <| "Rp" ++ toString product.price]
                        ,p [] [text product.description]
                        ,a [class "button is-primary"] [text "Beli"]]]]
    in
        div [class "tile"] (List.map showProduct model.item)
