module Config exposing (..)

import BigInt exposing (BigInt)
import Common.Types exposing (..)
import Eth.Types exposing (Address)
import Eth.Utils
import Set exposing (Set)
import Time
import TokenValue exposing (TokenValue)


displayProfileBreakpoint : Int
displayProfileBreakpoint =
    1280


mainnetHttpProviderUrl : String
mainnetHttpProviderUrl =
    "https://07a14c9f5130471d81dbe1488f0c22f5.eth.rpc.rivet.cloud/"


kovanHttpProviderUrl : String
kovanHttpProviderUrl =
    "https://kovan.infura.io/v3/e3eef0e2435349bf9164e6f465bd7cf9"


ganacheProviderUrl : String
ganacheProviderUrl =
    "http://localhost:8545"


appTitle : String
appTitle =
    "FRY Sale - Join Foundry and become a FRY holder!"


enteringTokenCurrencyLabel : String
enteringTokenCurrencyLabel =
    "DAI"


enteringTokenImageInfo : { src : String, description : String }
enteringTokenImageInfo =
    { src = "img/dai-symbol.png"
    , description = "DAI"
    }


enteringTokenAddress : TestMode -> Address
enteringTokenAddress testMode =
    case testMode of
        None ->
            Eth.Utils.unsafeToAddress "0x6B175474E89094C44Da98b954EedeAC495271d0F"

        TestKovan ->
            Debug.todo ""

        TestMainnet ->
            Eth.Utils.unsafeToAddress "0x6B175474E89094C44Da98b954EedeAC495271d0F"

        TestGanache ->
            Eth.Utils.unsafeToAddress "0x2612Af3A521c2df9EAF28422Ca335b04AdF3ac66"


exitingTokenCurrencyLabel : String
exitingTokenCurrencyLabel =
    "FRY"


exitingTokenAddress : TestMode -> Address
exitingTokenAddress testMode =
    case testMode of
        None ->
            Eth.Utils.unsafeToAddress "0x6c972b70c533E2E045F333Ee28b9fFb8D717bE69"

        TestKovan ->
            Debug.todo ""

        TestMainnet ->
            Eth.Utils.unsafeToAddress "0xe8c7495870f63DD045ba20E4604Ef3534ffa3724"

        TestGanache ->
            Eth.Utils.unsafeToAddress "0x67B5656d60a809915323Bf2C40A8bEF15A152e3e"


bucketSaleAddress : TestMode -> Address
bucketSaleAddress testMode =
    case testMode of
        None ->
            Eth.Utils.unsafeToAddress "0x30076fF7436aE82207b9c03AbdF7CB056310A95A"

        TestKovan ->
            Debug.todo ""

        TestMainnet ->
            Eth.Utils.unsafeToAddress "0xEB997be36d9a3168e548f058FF6E76Ba16bd8d13"

        TestGanache ->
            Eth.Utils.unsafeToAddress "0x26b4AFb60d6C903165150C6F0AA14F8016bE4aec"


bucketSaleScriptsAddress : TestMode -> Address
bucketSaleScriptsAddress testMode =
    case testMode of
        None ->
            Eth.Utils.unsafeToAddress "0xfF0E22aDd363A90bB5cAd3e74A21341C1a9A80AE"

        TestKovan ->
            Debug.todo ""

        TestMainnet ->
            Eth.Utils.unsafeToAddress "0xfF0E22aDd363A90bB5cAd3e74A21341C1a9A80AE"

        TestGanache ->
            Debug.todo ""


gasstationApiEndpoint : String
gasstationApiEndpoint =
    "https://ethgasstation.info/api/ethgasAPI.json?api-key=ebca374685809a499c4513455cb6867c6112269da20bda9ae64d491a02cf"


bucketSaleBucketInterval : TestMode -> Time.Posix
bucketSaleBucketInterval testMode =
    Time.millisToPosix <| 1000 * 60 * 60 * 7


bucketSaleTokensPerBucket : TestMode -> TokenValue
bucketSaleTokensPerBucket testMode =
    TokenValue.fromIntTokenValue 30000


bucketSaleNumBuckets : Int
bucketSaleNumBuckets =
    2000


feedbackEndpointUrl : String
feedbackEndpointUrl =
    "https://personal-rxyx.outsystemscloud.com/SaleFeedbackUI/rest/General/SubmitFeedback"


ipCountryCodeEndpointUrl : String
ipCountryCodeEndpointUrl =
    "https://personal-rxyx.outsystemscloud.com/SaleFeedbackUI/rest/General/IPCountryLookup"


forbiddenJurisdictionCodes : Set String
forbiddenJurisdictionCodes =
    Set.fromList [ "US" ]


multiBucketBotAddress : TestMode -> Address
multiBucketBotAddress testMode =
    case testMode of
        None ->
            Eth.Utils.unsafeToAddress "0x7d6ea6ae58ddc0c237557035ad873b5a978d108b"

        TestKovan ->
            Debug.todo ""

        TestMainnet ->
            Eth.Utils.unsafeToAddress "0x7d6ea6ae58ddc0c237557035ad873b5a978d108b"

        TestGanache ->
            Debug.todo ""


maxMultiBucketRange : Int
maxMultiBucketRange =
    200
