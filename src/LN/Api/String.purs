module LN.Api.String where


import Data.Either            (Either)
import Prelude                (map, (<$>), (<>))
import Purescript.Api.Helpers (class QueryParam, ApiError, ApiEff, getAt, handleError, qp)

import LN.T

getUserSanitizedPack :: forall qp. QueryParam qp => Array qp -> String -> ApiEff SpecificApiOptions (Either (ApiError ApplicationError) UserSanitizedPackResponse)
getUserSanitizedPack params user_name = handleError <$> getAt params ["user_sanitized_pack", user_name]

getUserSanitizedPack' :: String -> ApiEff SpecificApiOptions (Either (ApiError ApplicationError) UserSanitizedPackResponse)
getUserSanitizedPack' user_name = handleError <$> getAt ([] :: Array Boolean) ["user_sanitized_pack", user_name]

-- footer