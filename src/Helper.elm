module Helper exposing (..)

import Html
import Html.Attributes


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list


auxiliar : String -> (List (Html.Html msg) -> Html.Html msg) -> Html.Html msg
auxiliar texto2 etiqueta =
    etiqueta [ Html.text texto2 ]


aches : List (List (Html.Html msg) -> Html.Html msg)
aches =
    [ Html.h1 [], Html.h2 [], Html.h3 [], Html.h4 [], Html.h5 [], Html.h6 [] ]


headers : String -> Html.Html msg
headers texto =
    Html.div []
        (List.map (auxiliar texto) aches)


hyperlink : String -> String -> Html.Html msg
hyperlink url text =
    Html.a [ Html.Attributes.href url ] [ Html.text text ]
