module LN.Api where


import Data.Either            (Either)
import Prelude                (Unit, show, map, (<$>), (<>))
import Purescript.Api.Helpers (class QueryParam, ApiError, ApiEff, getAt, handleError, qp, deleteAt, putAt, postAt)
import Data.Default

import LN.T

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

getUsersCount :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getUsersCount params = handleError <$> getAt params ["users_count"]

getUsersCount' :: ApiEff (Either (ApiError ApplicationError) CountResponses)
getUsersCount'  = handleError <$> getAt ([] :: Array Boolean) ["users_count"]

getResourcesCount :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getResourcesCount params = handleError <$> getAt params ["resources_count"]

getResourcesCount' :: ApiEff (Either (ApiError ApplicationError) CountResponses)
getResourcesCount'  = handleError <$> getAt ([] :: Array Boolean) ["resources_count"]

getLeuronsCount :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getLeuronsCount params = handleError <$> getAt params ["leurons_count"]

getLeuronsCount' :: ApiEff (Either (ApiError ApplicationError) CountResponses)
getLeuronsCount'  = handleError <$> getAt ([] :: Array Boolean) ["leurons_count"]

getLeurons :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) LeuronResponses)
getLeurons params = handleError <$> getAt params ["leurons"]

getLeurons' :: ApiEff (Either (ApiError ApplicationError) LeuronResponses)
getLeurons'  = handleError <$> getAt ([] :: Array Boolean) ["leurons"]

postLeuron_ByResourceId :: forall qp. QueryParam qp => Array qp -> Int -> LeuronRequest -> ApiEff (Either (ApiError ApplicationError) LeuronResponse)
postLeuron_ByResourceId params _ByResourceId leuron_request = handleError <$> postAt (map qp params <> map qp [ByResourceId _ByResourceId]) ["leurons"] leuron_request

postLeuron_ByResourceId' :: Int -> LeuronRequest -> ApiEff (Either (ApiError ApplicationError) LeuronResponse)
postLeuron_ByResourceId' _ByResourceId leuron_request = handleError <$> postAt [ByResourceId _ByResourceId] ["leurons"] leuron_request

getLeuron :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) LeuronResponse)
getLeuron params leuron_id = handleError <$> getAt params ["leurons", show leuron_id]

getLeuron' :: Int -> ApiEff (Either (ApiError ApplicationError) LeuronResponse)
getLeuron' leuron_id = handleError <$> getAt ([] :: Array Boolean) ["leurons", show leuron_id]

putLeuron :: forall qp. QueryParam qp => Array qp -> Int -> LeuronRequest -> ApiEff (Either (ApiError ApplicationError) LeuronResponse)
putLeuron params leuron_id leuron_request = handleError <$> putAt params ["leurons", show leuron_id] leuron_request

putLeuron' :: Int -> LeuronRequest -> ApiEff (Either (ApiError ApplicationError) LeuronResponse)
putLeuron' leuron_id leuron_request = handleError <$> putAt ([] :: Array Boolean) ["leurons", show leuron_id] leuron_request

deleteLeuron :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteLeuron params leuron_id = handleError <$> deleteAt params ["leurons", show leuron_id]

deleteLeuron' :: Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteLeuron' leuron_id = handleError <$> deleteAt ([] :: Array Boolean) ["leurons", show leuron_id]

getMe :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) UserResponse)
getMe params = handleError <$> getAt params ["me"]

getMe' :: ApiEff (Either (ApiError ApplicationError) UserResponse)
getMe'  = handleError <$> getAt ([] :: Array Boolean) ["me"]

getMePack :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) UserPackResponse)
getMePack params = handleError <$> getAt params ["me_pack"]

getMePack' :: ApiEff (Either (ApiError ApplicationError) UserPackResponse)
getMePack'  = handleError <$> getAt ([] :: Array Boolean) ["me_pack"]

getResources :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) ResourceResponses)
getResources params = handleError <$> getAt params ["resources"]

getResources' :: ApiEff (Either (ApiError ApplicationError) ResourceResponses)
getResources'  = handleError <$> getAt ([] :: Array Boolean) ["resources"]

postResource :: forall qp. QueryParam qp => Array qp -> ResourceRequest -> ApiEff (Either (ApiError ApplicationError) ResourceResponse)
postResource params resource_request = handleError <$> postAt params ["resources"] resource_request

postResource' :: ResourceRequest -> ApiEff (Either (ApiError ApplicationError) ResourceResponse)
postResource' resource_request = handleError <$> postAt ([] :: Array Boolean) ["resources"] resource_request

getResource :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ResourceResponse)
getResource params resource_id = handleError <$> getAt params ["resources", show resource_id]

getResource' :: Int -> ApiEff (Either (ApiError ApplicationError) ResourceResponse)
getResource' resource_id = handleError <$> getAt ([] :: Array Boolean) ["resources", show resource_id]

putResource :: forall qp. QueryParam qp => Array qp -> Int -> ResourceRequest -> ApiEff (Either (ApiError ApplicationError) ResourceResponse)
putResource params resource_id resource_request = handleError <$> putAt params ["resources", show resource_id] resource_request

putResource' :: Int -> ResourceRequest -> ApiEff (Either (ApiError ApplicationError) ResourceResponse)
putResource' resource_id resource_request = handleError <$> putAt ([] :: Array Boolean) ["resources", show resource_id] resource_request

deleteResource :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteResource params resource_id = handleError <$> deleteAt params ["resources", show resource_id]

deleteResource' :: Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteResource' resource_id = handleError <$> deleteAt ([] :: Array Boolean) ["resources", show resource_id]

getResourceStats_ByResourcesIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) ResourceStatResponses)
getResourceStats_ByResourcesIds params _ByResourcesIds = handleError <$> getAt (map qp params <> map qp [ByResourcesIds _ByResourcesIds]) ["resource_stats"]

getResourceStats_ByResourcesIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) ResourceStatResponses)
getResourceStats_ByResourcesIds' _ByResourcesIds = handleError <$> getAt [ByResourcesIds _ByResourcesIds] ["resource_stats"]

getResourceStat :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ResourceStatResponse)
getResourceStat params resource_id = handleError <$> getAt params ["resource_stat", show resource_id]

getResourceStat' :: Int -> ApiEff (Either (ApiError ApplicationError) ResourceStatResponse)
getResourceStat' resource_id = handleError <$> getAt ([] :: Array Boolean) ["resource_stat", show resource_id]

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

getResourcePacks :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) ResourcePackResponses)
getResourcePacks params = handleError <$> getAt params ["resource_packs"]

getResourcePacks' :: ApiEff (Either (ApiError ApplicationError) ResourcePackResponses)
getResourcePacks'  = handleError <$> getAt ([] :: Array Boolean) ["resource_packs"]

getResourcePacks_ByResourcesIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) ResourcePackResponses)
getResourcePacks_ByResourcesIds params _ByResourcesIds = handleError <$> getAt (map qp params <> map qp [ByResourcesIds _ByResourcesIds]) ["resource_packs"]

getResourcePacks_ByResourcesIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) ResourcePackResponses)
getResourcePacks_ByResourcesIds' _ByResourcesIds = handleError <$> getAt [ByResourcesIds _ByResourcesIds] ["resource_packs"]

getResourcePack :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ResourcePackResponse)
getResourcePack params resource_id = handleError <$> getAt params ["resource_pack", show resource_id]

getResourcePack' :: Int -> ApiEff (Either (ApiError ApplicationError) ResourcePackResponse)
getResourcePack' resource_id = handleError <$> getAt ([] :: Array Boolean) ["resource_pack", show resource_id]

getLeuronPacks :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) LeuronPackResponses)
getLeuronPacks params = handleError <$> getAt params ["leuron_packs"]

getLeuronPacks' :: ApiEff (Either (ApiError ApplicationError) LeuronPackResponses)
getLeuronPacks'  = handleError <$> getAt ([] :: Array Boolean) ["leuron_packs"]

getLeuronPacks_ByLeuronsIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) LeuronPackResponses)
getLeuronPacks_ByLeuronsIds params _ByLeuronsIds = handleError <$> getAt (map qp params <> map qp [ByLeuronsIds _ByLeuronsIds]) ["leuron_packs"]

getLeuronPacks_ByLeuronsIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) LeuronPackResponses)
getLeuronPacks_ByLeuronsIds' _ByLeuronsIds = handleError <$> getAt [ByLeuronsIds _ByLeuronsIds] ["leuron_packs"]

getLeuronPacks_ByResourceId :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) LeuronPackResponses)
getLeuronPacks_ByResourceId params _ByResourceId = handleError <$> getAt (map qp params <> map qp [ByResourceId _ByResourceId]) ["leuron_packs"]

getLeuronPacks_ByResourceId' :: Int -> ApiEff (Either (ApiError ApplicationError) LeuronPackResponses)
getLeuronPacks_ByResourceId' _ByResourceId = handleError <$> getAt [ByResourceId _ByResourceId] ["leuron_packs"]

getLeuronPack :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) LeuronPackResponse)
getLeuronPack params leuron_id = handleError <$> getAt params ["leuron_pack", show leuron_id]

getLeuronPack' :: Int -> ApiEff (Either (ApiError ApplicationError) LeuronPackResponse)
getLeuronPack' leuron_id = handleError <$> getAt ([] :: Array Boolean) ["leuron_pack", show leuron_id]

-- footer