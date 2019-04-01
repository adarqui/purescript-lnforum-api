module LN.Api.String where


import Data.Either            (Either)
import Prelude                (map, (<$>), (<>))
import Purescript.Api.Helpers (class QueryParam, ApiError, ApiEff, getAt, handleError, qp)

import LN.T

getUserSanitizedPack :: forall qp. QueryParam qp => Array qp -> String -> ApiEff (Either (ApiError ApplicationError) UserSanitizedPackResponse)
getUserSanitizedPack params user_name = handleError <$> getAt params ["user_sanitized_pack", user_name]

getUserSanitizedPack' :: String -> ApiEff (Either (ApiError ApplicationError) UserSanitizedPackResponse)
getUserSanitizedPack' user_name = handleError <$> getAt ([] :: Array Boolean) ["user_sanitized_pack", user_name]

getForumPack :: forall qp. QueryParam qp => Array qp -> String -> ApiEff (Either (ApiError ApplicationError) ForumPackResponse)
getForumPack params forum_sid = handleError <$> getAt params ["forum_pack", forum_sid]

getForumPack' :: String -> ApiEff (Either (ApiError ApplicationError) ForumPackResponse)
getForumPack' forum_sid = handleError <$> getAt ([] :: Array Boolean) ["forum_pack", forum_sid]

getBoardPack :: forall qp. QueryParam qp => Array qp -> String -> ApiEff (Either (ApiError ApplicationError) BoardPackResponse)
getBoardPack params board_sid = handleError <$> getAt params ["board_pack", board_sid]

getBoardPack' :: String -> ApiEff (Either (ApiError ApplicationError) BoardPackResponse)
getBoardPack' board_sid = handleError <$> getAt ([] :: Array Boolean) ["board_pack", board_sid]

getThreadPack :: forall qp. QueryParam qp => Array qp -> String -> ApiEff (Either (ApiError ApplicationError) ThreadPackResponse)
getThreadPack params thread_sid = handleError <$> getAt params ["thread_pack", thread_sid]

getThreadPack' :: String -> ApiEff (Either (ApiError ApplicationError) ThreadPackResponse)
getThreadPack' thread_sid = handleError <$> getAt ([] :: Array Boolean) ["thread_pack", thread_sid]

-- footer