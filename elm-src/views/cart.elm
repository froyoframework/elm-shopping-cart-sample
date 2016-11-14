module Cart exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

parentContainer : Html tag
parentContainer =
    div [class "column"]
        [div [class "content"] 
            [h2 [] 
                [text "Shopping Cart"]]
        ,div [class "box"] [cartContent]
        ,totalPrice]

cartContent : Html tag
cartContent =
    article [class "media"]
        [div [class "media-left"] 
            [figure [class "image is-64x64"] 
                [img [src "http://placehold.it/128x128", alt "product-1"] []]]
        ,div [class "media-content"] 
            [div [class "content"] 
                [p [] [strong [] [text "Product 1"]]
                ,p [] [text "Rp 25000 x 1 pcs"]
                ,p [] [text "Total Price: Rp 25000"]]]]

totalPrice : Html tag
totalPrice =
    div [class "content"] 
        [h3 [] [text "Total: Rp 50000"]]