module CommonTypes exposing (..)

import Dict
import Eth.Net
import Eth.Types exposing (Address)
import Json.Decode
import Json.Encode


type TestMode
    = None
    | TestMainnet
    | TestKovan
    | TestGanache


type DisplayProfile
    = Desktop
    | Mobile


type alias GTagData =
    { event : String
    , category : String
    , label : String
    , value : Int
    }


type alias UserInfo =
    { network : Eth.Net.NetworkId
    , address : Address
    }


screenWidthToDisplayProfile : Int -> DisplayProfile
screenWidthToDisplayProfile width =
    if width >= 1150 then
        Desktop

    else
        Mobile


changeForMobile : a -> DisplayProfile -> a -> a
changeForMobile changed dProfile original =
    case dProfile of
        Desktop ->
            original

        Mobile ->
            changed
