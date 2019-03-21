module LN.Api where


import Data.Either            (Either)
import Prelude                (Unit, show, map, (<$>), (<>))
import Purescript.Api.Helpers (class QueryParam, ApiError, ApiEff, getAt, handleError, qp, deleteAt, putAt, postAt)
import Data.Default

import LN.T

getForumsCount :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getForumsCount params = handleError <$> getAt params ["forums_count"]

getForumsCount' :: ApiEff (Either (ApiError ApplicationError) CountResponses)
getForumsCount'  = handleError <$> getAt ([] :: Array Boolean) ["forums_count"]

getBoardsCount :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getBoardsCount params = handleError <$> getAt params ["boards_count"]

getBoardsCount' :: ApiEff (Either (ApiError ApplicationError) CountResponses)
getBoardsCount'  = handleError <$> getAt ([] :: Array Boolean) ["boards_count"]

getThreadsCount :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getThreadsCount params = handleError <$> getAt params ["threads_count"]

getThreadsCount' :: ApiEff (Either (ApiError ApplicationError) CountResponses)
getThreadsCount'  = handleError <$> getAt ([] :: Array Boolean) ["threads_count"]

getThreadPostsCount :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getThreadPostsCount params = handleError <$> getAt params ["thread_posts_count"]

getThreadPostsCount' :: ApiEff (Either (ApiError ApplicationError) CountResponses)
getThreadPostsCount'  = handleError <$> getAt ([] :: Array Boolean) ["thread_posts_count"]

getLikesCount :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getLikesCount params = handleError <$> getAt params ["likes_count"]

getLikesCount' :: ApiEff (Either (ApiError ApplicationError) CountResponses)
getLikesCount'  = handleError <$> getAt ([] :: Array Boolean) ["likes_count"]

getUsersCount :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getUsersCount params = handleError <$> getAt params ["users_count"]

getUsersCount' :: ApiEff (Either (ApiError ApplicationError) CountResponses)
getUsersCount'  = handleError <$> getAt ([] :: Array Boolean) ["users_count"]

getApis :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) ApiResponses)
getApis params = handleError <$> getAt params ["apis"]

getApis' :: ApiEff (Either (ApiError ApplicationError) ApiResponses)
getApis'  = handleError <$> getAt ([] :: Array Boolean) ["apis"]

postApi :: forall qp. QueryParam qp => Array qp -> ApiRequest -> ApiEff (Either (ApiError ApplicationError) ApiResponse)
postApi params api_request = handleError <$> postAt params ["api"] api_request

postApi' :: ApiRequest -> ApiEff (Either (ApiError ApplicationError) ApiResponse)
postApi' api_request = handleError <$> postAt ([] :: Array Boolean) ["api"] api_request

getApi :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ApiResponse)
getApi params api_id = handleError <$> getAt params ["api", show api_id]

getApi' :: Int -> ApiEff (Either (ApiError ApplicationError) ApiResponse)
getApi' api_id = handleError <$> getAt ([] :: Array Boolean) ["api", show api_id]

putApi :: forall qp. QueryParam qp => Array qp -> Int -> ApiRequest -> ApiEff (Either (ApiError ApplicationError) ApiResponse)
putApi params api_id api_request = handleError <$> putAt params ["api", show api_id] api_request

putApi' :: Int -> ApiRequest -> ApiEff (Either (ApiError ApplicationError) ApiResponse)
putApi' api_id api_request = handleError <$> putAt ([] :: Array Boolean) ["api", show api_id] api_request

deleteApi :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteApi params api_id = handleError <$> deleteAt params ["api", show api_id]

deleteApi' :: Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteApi' api_id = handleError <$> deleteAt ([] :: Array Boolean) ["api", show api_id]

getMe :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) UserResponse)
getMe params = handleError <$> getAt params ["me"]

getMe' :: ApiEff (Either (ApiError ApplicationError) UserResponse)
getMe'  = handleError <$> getAt ([] :: Array Boolean) ["me"]

getMePack :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) UserPackResponse)
getMePack params = handleError <$> getAt params ["me_pack"]

getMePack' :: ApiEff (Either (ApiError ApplicationError) UserPackResponse)
getMePack'  = handleError <$> getAt ([] :: Array Boolean) ["me_pack"]

getBoards :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) BoardResponses)
getBoards params = handleError <$> getAt params ["boards"]

getBoards' :: ApiEff (Either (ApiError ApplicationError) BoardResponses)
getBoards'  = handleError <$> getAt ([] :: Array Boolean) ["boards"]

postBoard :: forall qp. QueryParam qp => Array qp -> BoardRequest -> ApiEff (Either (ApiError ApplicationError) BoardResponse)
postBoard params board_request = handleError <$> postAt params ["boards"] board_request

postBoard' :: BoardRequest -> ApiEff (Either (ApiError ApplicationError) BoardResponse)
postBoard' board_request = handleError <$> postAt ([] :: Array Boolean) ["boards"] board_request

getBoard :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) BoardResponse)
getBoard params board_id = handleError <$> getAt params ["boards", show board_id]

getBoard' :: Int -> ApiEff (Either (ApiError ApplicationError) BoardResponse)
getBoard' board_id = handleError <$> getAt ([] :: Array Boolean) ["boards", show board_id]

putBoard :: forall qp. QueryParam qp => Array qp -> Int -> BoardRequest -> ApiEff (Either (ApiError ApplicationError) BoardResponse)
putBoard params board_id board_request = handleError <$> putAt params ["boards", show board_id] board_request

putBoard' :: Int -> BoardRequest -> ApiEff (Either (ApiError ApplicationError) BoardResponse)
putBoard' board_id board_request = handleError <$> putAt ([] :: Array Boolean) ["boards", show board_id] board_request

deleteBoard :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteBoard params board_id = handleError <$> deleteAt params ["boards", show board_id]

deleteBoard' :: Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteBoard' board_id = handleError <$> deleteAt ([] :: Array Boolean) ["boards", show board_id]

getBoardStats_ByBoardsIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) BoardStatResponses)
getBoardStats_ByBoardsIds params _ByBoardsIds = handleError <$> getAt (map qp params <> map qp [ByBoardsIds _ByBoardsIds]) ["board_stats"]

getBoardStats_ByBoardsIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) BoardStatResponses)
getBoardStats_ByBoardsIds' _ByBoardsIds = handleError <$> getAt [ByBoardsIds _ByBoardsIds] ["board_stats"]

getBoardStat :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) BoardStatResponse)
getBoardStat params board_id = handleError <$> getAt params ["board_stat", show board_id]

getBoardStat' :: Int -> ApiEff (Either (ApiError ApplicationError) BoardStatResponse)
getBoardStat' board_id = handleError <$> getAt ([] :: Array Boolean) ["board_stat", show board_id]

getUsers :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) UserResponses)
getUsers params = handleError <$> getAt params ["users"]

getUsers' :: ApiEff (Either (ApiError ApplicationError) UserResponses)
getUsers'  = handleError <$> getAt ([] :: Array Boolean) ["users"]

getUsers_ByUsersIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) UserResponses)
getUsers_ByUsersIds params _ByUsersIds = handleError <$> getAt (map qp params <> map qp [ByUsersIds _ByUsersIds]) ["users"]

getUsers_ByUsersIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) UserResponses)
getUsers_ByUsersIds' _ByUsersIds = handleError <$> getAt [ByUsersIds _ByUsersIds] ["users"]

getUsers_ByUsersNames :: forall qp. QueryParam qp => Array qp -> (Array String) -> ApiEff (Either (ApiError ApplicationError) UserResponses)
getUsers_ByUsersNames params _ByUsersNames = handleError <$> getAt (map qp params <> map qp [ByUsersNames _ByUsersNames]) ["users"]

getUsers_ByUsersNames' :: (Array String) -> ApiEff (Either (ApiError ApplicationError) UserResponses)
getUsers_ByUsersNames' _ByUsersNames = handleError <$> getAt [ByUsersNames _ByUsersNames] ["users"]

postUser :: forall qp. QueryParam qp => Array qp -> UserRequest -> ApiEff (Either (ApiError ApplicationError) UserResponse)
postUser params user_request = handleError <$> postAt params ["user"] user_request

postUser' :: UserRequest -> ApiEff (Either (ApiError ApplicationError) UserResponse)
postUser' user_request = handleError <$> postAt ([] :: Array Boolean) ["user"] user_request

getUser :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) UserResponse)
getUser params user_id = handleError <$> getAt params ["user", show user_id]

getUser' :: Int -> ApiEff (Either (ApiError ApplicationError) UserResponse)
getUser' user_id = handleError <$> getAt ([] :: Array Boolean) ["user", show user_id]

putUser :: forall qp. QueryParam qp => Array qp -> Int -> UserRequest -> ApiEff (Either (ApiError ApplicationError) UserResponse)
putUser params user_id user_request = handleError <$> putAt params ["user", show user_id] user_request

putUser' :: Int -> UserRequest -> ApiEff (Either (ApiError ApplicationError) UserResponse)
putUser' user_id user_request = handleError <$> putAt ([] :: Array Boolean) ["user", show user_id] user_request

deleteUser :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteUser params user_id = handleError <$> deleteAt params ["user", show user_id]

deleteUser' :: Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteUser' user_id = handleError <$> deleteAt ([] :: Array Boolean) ["user", show user_id]

getUserProfiles :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) ProfileResponses)
getUserProfiles params = handleError <$> getAt params ["user_profiles"]

getUserProfiles' :: ApiEff (Either (ApiError ApplicationError) ProfileResponses)
getUserProfiles'  = handleError <$> getAt ([] :: Array Boolean) ["user_profiles"]

getUserProfiles_ByUserId :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ProfileResponses)
getUserProfiles_ByUserId params _ByUserId = handleError <$> getAt (map qp params <> map qp [ByUserId _ByUserId]) ["user_profiles"]

getUserProfiles_ByUserId' :: Int -> ApiEff (Either (ApiError ApplicationError) ProfileResponses)
getUserProfiles_ByUserId' _ByUserId = handleError <$> getAt [ByUserId _ByUserId] ["user_profiles"]

getUserProfiles_ByUsersIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) ProfileResponses)
getUserProfiles_ByUsersIds params _ByUsersIds = handleError <$> getAt (map qp params <> map qp [ByUsersIds _ByUsersIds]) ["user_profiles"]

getUserProfiles_ByUsersIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) ProfileResponses)
getUserProfiles_ByUsersIds' _ByUsersIds = handleError <$> getAt [ByUsersIds _ByUsersIds] ["user_profiles"]

getUserProfile :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ProfileResponse)
getUserProfile params profile_id = handleError <$> getAt params ["user_profile", show profile_id]

getUserProfile' :: Int -> ApiEff (Either (ApiError ApplicationError) ProfileResponse)
getUserProfile' profile_id = handleError <$> getAt ([] :: Array Boolean) ["user_profile", show profile_id]

putUserProfile :: forall qp. QueryParam qp => Array qp -> Int -> ProfileRequest -> ApiEff (Either (ApiError ApplicationError) ProfileResponse)
putUserProfile params profile_id profile_request = handleError <$> putAt params ["user_profile", show profile_id] profile_request

putUserProfile' :: Int -> ProfileRequest -> ApiEff (Either (ApiError ApplicationError) ProfileResponse)
putUserProfile' profile_id profile_request = handleError <$> putAt ([] :: Array Boolean) ["user_profile", show profile_id] profile_request

deleteUserProfile :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteUserProfile params profile_id = handleError <$> deleteAt params ["user_profile", show profile_id]

deleteUserProfile' :: Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteUserProfile' profile_id = handleError <$> deleteAt ([] :: Array Boolean) ["user_profile", show profile_id]

getUsersSanitized :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) UserSanitizedResponses)
getUsersSanitized params = handleError <$> getAt params ["users_sanitized"]

getUsersSanitized' :: ApiEff (Either (ApiError ApplicationError) UserSanitizedResponses)
getUsersSanitized'  = handleError <$> getAt ([] :: Array Boolean) ["users_sanitized"]

getUsersSanitized_ByUsersIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) UserSanitizedResponses)
getUsersSanitized_ByUsersIds params _ByUsersIds = handleError <$> getAt (map qp params <> map qp [ByUsersIds _ByUsersIds]) ["users_sanitized"]

getUsersSanitized_ByUsersIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) UserSanitizedResponses)
getUsersSanitized_ByUsersIds' _ByUsersIds = handleError <$> getAt [ByUsersIds _ByUsersIds] ["users_sanitized"]

getUsersSanitized_ByUsersNames :: forall qp. QueryParam qp => Array qp -> (Array String) -> ApiEff (Either (ApiError ApplicationError) UserSanitizedResponses)
getUsersSanitized_ByUsersNames params _ByUsersNames = handleError <$> getAt (map qp params <> map qp [ByUsersNames _ByUsersNames]) ["users_sanitized"]

getUsersSanitized_ByUsersNames' :: (Array String) -> ApiEff (Either (ApiError ApplicationError) UserSanitizedResponses)
getUsersSanitized_ByUsersNames' _ByUsersNames = handleError <$> getAt [ByUsersNames _ByUsersNames] ["users_sanitized"]

getUserSanitized :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) UserSanitizedResponse)
getUserSanitized params user_id = handleError <$> getAt params ["user_sanitized", show user_id]

getUserSanitized' :: Int -> ApiEff (Either (ApiError ApplicationError) UserSanitizedResponse)
getUserSanitized' user_id = handleError <$> getAt ([] :: Array Boolean) ["user_sanitized", show user_id]

getUserSanitizedStats :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) UserSanitizedStatResponse)
getUserSanitizedStats params = handleError <$> getAt params ["user_sanitized_stats"]

getUserSanitizedStats' :: ApiEff (Either (ApiError ApplicationError) UserSanitizedStatResponse)
getUserSanitizedStats'  = handleError <$> getAt ([] :: Array Boolean) ["user_sanitized_stats"]

getUserSanitizedStats_ByUsersIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) UserSanitizedStatResponse)
getUserSanitizedStats_ByUsersIds params _ByUsersIds = handleError <$> getAt (map qp params <> map qp [ByUsersIds _ByUsersIds]) ["user_sanitized_stats"]

getUserSanitizedStats_ByUsersIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) UserSanitizedStatResponse)
getUserSanitizedStats_ByUsersIds' _ByUsersIds = handleError <$> getAt [ByUsersIds _ByUsersIds] ["user_sanitized_stats"]

getUserSanitizedStat :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) UserSanitizedStatResponse)
getUserSanitizedStat params user_id = handleError <$> getAt params ["user_sanitized_stat", show user_id]

getUserSanitizedStat' :: Int -> ApiEff (Either (ApiError ApplicationError) UserSanitizedStatResponse)
getUserSanitizedStat' user_id = handleError <$> getAt ([] :: Array Boolean) ["user_sanitized_stat", show user_id]

getUserPacks :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) UserPackResponses)
getUserPacks params = handleError <$> getAt params ["user_packs"]

getUserPacks' :: ApiEff (Either (ApiError ApplicationError) UserPackResponses)
getUserPacks'  = handleError <$> getAt ([] :: Array Boolean) ["user_packs"]

getUserPacks_ByUsersIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) UserPackResponses)
getUserPacks_ByUsersIds params _ByUsersIds = handleError <$> getAt (map qp params <> map qp [ByUsersIds _ByUsersIds]) ["user_packs"]

getUserPacks_ByUsersIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) UserPackResponses)
getUserPacks_ByUsersIds' _ByUsersIds = handleError <$> getAt [ByUsersIds _ByUsersIds] ["user_packs"]

getUserPacks_ByEmail :: forall qp. QueryParam qp => Array qp -> String -> ApiEff (Either (ApiError ApplicationError) UserPackResponses)
getUserPacks_ByEmail params _ByEmail = handleError <$> getAt (map qp params <> map qp [ByEmail _ByEmail]) ["user_packs"]

getUserPacks_ByEmail' :: String -> ApiEff (Either (ApiError ApplicationError) UserPackResponses)
getUserPacks_ByEmail' _ByEmail = handleError <$> getAt [ByEmail _ByEmail] ["user_packs"]

getUserPack :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) UserPackResponse)
getUserPack params user_id = handleError <$> getAt params ["user_pack", show user_id]

getUserPack' :: Int -> ApiEff (Either (ApiError ApplicationError) UserPackResponse)
getUserPack' user_id = handleError <$> getAt ([] :: Array Boolean) ["user_pack", show user_id]

getUserSanitizedPacks :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) UserSanitizedPackResponses)
getUserSanitizedPacks params = handleError <$> getAt params ["user_sanitized_packs"]

getUserSanitizedPacks' :: ApiEff (Either (ApiError ApplicationError) UserSanitizedPackResponses)
getUserSanitizedPacks'  = handleError <$> getAt ([] :: Array Boolean) ["user_sanitized_packs"]

getUserSanitizedPacks_ByUsersIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) UserSanitizedPackResponses)
getUserSanitizedPacks_ByUsersIds params _ByUsersIds = handleError <$> getAt (map qp params <> map qp [ByUsersIds _ByUsersIds]) ["user_sanitized_packs"]

getUserSanitizedPacks_ByUsersIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) UserSanitizedPackResponses)
getUserSanitizedPacks_ByUsersIds' _ByUsersIds = handleError <$> getAt [ByUsersIds _ByUsersIds] ["user_sanitized_packs"]

getUserSanitizedPack :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) UserSanitizedPackResponse)
getUserSanitizedPack params user_id = handleError <$> getAt params ["user_sanitized_pack", show user_id]

getUserSanitizedPack' :: Int -> ApiEff (Either (ApiError ApplicationError) UserSanitizedPackResponse)
getUserSanitizedPack' user_id = handleError <$> getAt ([] :: Array Boolean) ["user_sanitized_pack", show user_id]

getBoardPacks :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) BoardPackResponses)
getBoardPacks params = handleError <$> getAt params ["board_packs"]

getBoardPacks' :: ApiEff (Either (ApiError ApplicationError) BoardPackResponses)
getBoardPacks'  = handleError <$> getAt ([] :: Array Boolean) ["board_packs"]

getBoardPacks_ByBoardsIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) BoardPackResponses)
getBoardPacks_ByBoardsIds params _ByBoardsIds = handleError <$> getAt (map qp params <> map qp [ByBoardsIds _ByBoardsIds]) ["board_packs"]

getBoardPacks_ByBoardsIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) BoardPackResponses)
getBoardPacks_ByBoardsIds' _ByBoardsIds = handleError <$> getAt [ByBoardsIds _ByBoardsIds] ["board_packs"]

getBoardPack :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) BoardPackResponse)
getBoardPack params board_id = handleError <$> getAt params ["board_pack", show board_id]

getBoardPack' :: Int -> ApiEff (Either (ApiError ApplicationError) BoardPackResponse)
getBoardPack' board_id = handleError <$> getAt ([] :: Array Boolean) ["board_pack", show board_id]

-- footer