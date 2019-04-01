module LN.Api where


import Data.Either            (Either)
import Prelude                (Unit, show, map, (<$>), (<>))
import Purescript.Api.Helpers (class QueryParam, ApiError, ApiEff, getAt, handleError, qp, deleteAt, putAt, postAt)
import Data.Default

import LN.T

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

postForum :: forall qp. QueryParam qp => Array qp -> ForumRequest -> ApiEff (Either (ApiError ApplicationError) ForumResponse)
postForum params forum_request = handleError <$> postAt params ["forums"] forum_request

postForum' :: ForumRequest -> ApiEff (Either (ApiError ApplicationError) ForumResponse)
postForum' forum_request = handleError <$> postAt ([] :: Array Boolean) ["forums"] forum_request

getForum :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ForumResponse)
getForum params forum_id = handleError <$> getAt params ["forums", show forum_id]

getForum' :: Int -> ApiEff (Either (ApiError ApplicationError) ForumResponse)
getForum' forum_id = handleError <$> getAt ([] :: Array Boolean) ["forums", show forum_id]

putForum :: forall qp. QueryParam qp => Array qp -> Int -> ForumRequest -> ApiEff (Either (ApiError ApplicationError) ForumResponse)
putForum params forum_id forum_request = handleError <$> putAt params ["forums", show forum_id] forum_request

putForum' :: Int -> ForumRequest -> ApiEff (Either (ApiError ApplicationError) ForumResponse)
putForum' forum_id forum_request = handleError <$> putAt ([] :: Array Boolean) ["forums", show forum_id] forum_request

getForumStat :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ForumStatResponse)
getForumStat params forum_id = handleError <$> getAt params ["forum_stat", show forum_id]

getForumStat' :: Int -> ApiEff (Either (ApiError ApplicationError) ForumStatResponse)
getForumStat' forum_id = handleError <$> getAt ([] :: Array Boolean) ["forum_stat", show forum_id]

getBoards :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) BoardResponses)
getBoards params = handleError <$> getAt params ["boards"]

getBoards' :: ApiEff (Either (ApiError ApplicationError) BoardResponses)
getBoards'  = handleError <$> getAt ([] :: Array Boolean) ["boards"]

postBoard :: forall qp. QueryParam qp => Array qp -> BoardRequest -> ApiEff (Either (ApiError ApplicationError) BoardResponse)
postBoard params board_request = handleError <$> postAt params ["boards"] board_request

postBoard' :: BoardRequest -> ApiEff (Either (ApiError ApplicationError) BoardResponse)
postBoard' board_request = handleError <$> postAt ([] :: Array Boolean) ["boards"] board_request

postBoard_ByForumId :: forall qp. QueryParam qp => Array qp -> Int -> BoardRequest -> ApiEff (Either (ApiError ApplicationError) BoardResponse)
postBoard_ByForumId params _ByForumId board_request = handleError <$> postAt (map qp params <> map qp [ByForumId _ByForumId]) ["boards"] board_request

postBoard_ByForumId' :: Int -> BoardRequest -> ApiEff (Either (ApiError ApplicationError) BoardResponse)
postBoard_ByForumId' _ByForumId board_request = handleError <$> postAt [ByForumId _ByForumId] ["boards"] board_request

postBoard_ByBoardId :: forall qp. QueryParam qp => Array qp -> Int -> BoardRequest -> ApiEff (Either (ApiError ApplicationError) BoardResponse)
postBoard_ByBoardId params _ByBoardId board_request = handleError <$> postAt (map qp params <> map qp [ByBoardId _ByBoardId]) ["boards"] board_request

postBoard_ByBoardId' :: Int -> BoardRequest -> ApiEff (Either (ApiError ApplicationError) BoardResponse)
postBoard_ByBoardId' _ByBoardId board_request = handleError <$> postAt [ByBoardId _ByBoardId] ["boards"] board_request

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

getThreads :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) ThreadResponses)
getThreads params = handleError <$> getAt params ["threads"]

getThreads' :: ApiEff (Either (ApiError ApplicationError) ThreadResponses)
getThreads'  = handleError <$> getAt ([] :: Array Boolean) ["threads"]

postThread :: forall qp. QueryParam qp => Array qp -> ThreadRequest -> ApiEff (Either (ApiError ApplicationError) ThreadResponse)
postThread params thread_request = handleError <$> postAt params ["threads"] thread_request

postThread' :: ThreadRequest -> ApiEff (Either (ApiError ApplicationError) ThreadResponse)
postThread' thread_request = handleError <$> postAt ([] :: Array Boolean) ["threads"] thread_request

postThread_ByBoardId :: forall qp. QueryParam qp => Array qp -> Int -> ThreadRequest -> ApiEff (Either (ApiError ApplicationError) ThreadResponse)
postThread_ByBoardId params _ByBoardId thread_request = handleError <$> postAt (map qp params <> map qp [ByBoardId _ByBoardId]) ["threads"] thread_request

postThread_ByBoardId' :: Int -> ThreadRequest -> ApiEff (Either (ApiError ApplicationError) ThreadResponse)
postThread_ByBoardId' _ByBoardId thread_request = handleError <$> postAt [ByBoardId _ByBoardId] ["threads"] thread_request

getThread :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ThreadResponse)
getThread params thread_id = handleError <$> getAt params ["threads", show thread_id]

getThread' :: Int -> ApiEff (Either (ApiError ApplicationError) ThreadResponse)
getThread' thread_id = handleError <$> getAt ([] :: Array Boolean) ["threads", show thread_id]

putThread :: forall qp. QueryParam qp => Array qp -> Int -> ThreadRequest -> ApiEff (Either (ApiError ApplicationError) ThreadResponse)
putThread params thread_id thread_request = handleError <$> putAt params ["threads", show thread_id] thread_request

putThread' :: Int -> ThreadRequest -> ApiEff (Either (ApiError ApplicationError) ThreadResponse)
putThread' thread_id thread_request = handleError <$> putAt ([] :: Array Boolean) ["threads", show thread_id] thread_request

deleteThread :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteThread params thread_id = handleError <$> deleteAt params ["threads", show thread_id]

deleteThread' :: Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteThread' thread_id = handleError <$> deleteAt ([] :: Array Boolean) ["threads", show thread_id]

getThreadStats_ByThreadsIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) ThreadStatResponses)
getThreadStats_ByThreadsIds params _ByThreadsIds = handleError <$> getAt (map qp params <> map qp [ByThreadsIds _ByThreadsIds]) ["thread_stats"]

getThreadStats_ByThreadsIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) ThreadStatResponses)
getThreadStats_ByThreadsIds' _ByThreadsIds = handleError <$> getAt [ByThreadsIds _ByThreadsIds] ["thread_stats"]

getThreadStat :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ThreadStatResponse)
getThreadStat params thread_id = handleError <$> getAt params ["thread_stat", show thread_id]

getThreadStat' :: Int -> ApiEff (Either (ApiError ApplicationError) ThreadStatResponse)
getThreadStat' thread_id = handleError <$> getAt ([] :: Array Boolean) ["thread_stat", show thread_id]

getThreadsCount_ByBoardId :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getThreadsCount_ByBoardId params _ByBoardId = handleError <$> getAt (map qp params <> map qp [ByBoardId _ByBoardId]) ["threads_count"]

getThreadsCount_ByBoardId' :: Int -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getThreadsCount_ByBoardId' _ByBoardId = handleError <$> getAt [ByBoardId _ByBoardId] ["threads_count"]

getThreadPosts :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) ThreadPostResponses)
getThreadPosts params = handleError <$> getAt params ["thread_posts"]

getThreadPosts' :: ApiEff (Either (ApiError ApplicationError) ThreadPostResponses)
getThreadPosts'  = handleError <$> getAt ([] :: Array Boolean) ["thread_posts"]

postThreadPost :: forall qp. QueryParam qp => Array qp -> ThreadPostRequest -> ApiEff (Either (ApiError ApplicationError) ThreadPostResponse)
postThreadPost params thread_post_request = handleError <$> postAt params ["thread_posts"] thread_post_request

postThreadPost' :: ThreadPostRequest -> ApiEff (Either (ApiError ApplicationError) ThreadPostResponse)
postThreadPost' thread_post_request = handleError <$> postAt ([] :: Array Boolean) ["thread_posts"] thread_post_request

postThreadPost_ByThreadId :: forall qp. QueryParam qp => Array qp -> Int -> ThreadPostRequest -> ApiEff (Either (ApiError ApplicationError) ThreadPostResponse)
postThreadPost_ByThreadId params _ByThreadId thread_post_request = handleError <$> postAt (map qp params <> map qp [ByThreadId _ByThreadId]) ["thread_posts"] thread_post_request

postThreadPost_ByThreadId' :: Int -> ThreadPostRequest -> ApiEff (Either (ApiError ApplicationError) ThreadPostResponse)
postThreadPost_ByThreadId' _ByThreadId thread_post_request = handleError <$> postAt [ByThreadId _ByThreadId] ["thread_posts"] thread_post_request

getThreadPost :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ThreadPostResponse)
getThreadPost params thread_post_id = handleError <$> getAt params ["thread_posts", show thread_post_id]

getThreadPost' :: Int -> ApiEff (Either (ApiError ApplicationError) ThreadPostResponse)
getThreadPost' thread_post_id = handleError <$> getAt ([] :: Array Boolean) ["thread_posts", show thread_post_id]

putThreadPost :: forall qp. QueryParam qp => Array qp -> Int -> ThreadPostRequest -> ApiEff (Either (ApiError ApplicationError) ThreadPostResponse)
putThreadPost params thread_post_id thread_post_request = handleError <$> putAt params ["thread_posts", show thread_post_id] thread_post_request

putThreadPost' :: Int -> ThreadPostRequest -> ApiEff (Either (ApiError ApplicationError) ThreadPostResponse)
putThreadPost' thread_post_id thread_post_request = handleError <$> putAt ([] :: Array Boolean) ["thread_posts", show thread_post_id] thread_post_request

deleteThreadPost :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteThreadPost params thread_post_id = handleError <$> deleteAt params ["thread_posts", show thread_post_id]

deleteThreadPost' :: Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteThreadPost' thread_post_id = handleError <$> deleteAt ([] :: Array Boolean) ["thread_posts", show thread_post_id]

getThreadPostStats_ByThreadPostsIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) ThreadPostStatResponses)
getThreadPostStats_ByThreadPostsIds params _ByThreadPostsIds = handleError <$> getAt (map qp params <> map qp [ByThreadPostsIds _ByThreadPostsIds]) ["thread_post_stats"]

getThreadPostStats_ByThreadPostsIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) ThreadPostStatResponses)
getThreadPostStats_ByThreadPostsIds' _ByThreadPostsIds = handleError <$> getAt [ByThreadPostsIds _ByThreadPostsIds] ["thread_post_stats"]

getThreadPostStat :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ThreadPostStatResponse)
getThreadPostStat params threadpost_id = handleError <$> getAt params ["thread_post_stat", show threadpost_id]

getThreadPostStat' :: Int -> ApiEff (Either (ApiError ApplicationError) ThreadPostStatResponse)
getThreadPostStat' threadpost_id = handleError <$> getAt ([] :: Array Boolean) ["thread_post_stat", show threadpost_id]

getThreadPostsCount_ByBoardId :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getThreadPostsCount_ByBoardId params _ByBoardId = handleError <$> getAt (map qp params <> map qp [ByBoardId _ByBoardId]) ["thread_posts_count"]

getThreadPostsCount_ByBoardId' :: Int -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getThreadPostsCount_ByBoardId' _ByBoardId = handleError <$> getAt [ByBoardId _ByBoardId] ["thread_posts_count"]

getThreadPostsCount_ByThreadId :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getThreadPostsCount_ByThreadId params _ByThreadId = handleError <$> getAt (map qp params <> map qp [ByThreadId _ByThreadId]) ["thread_posts_count"]

getThreadPostsCount_ByThreadId' :: Int -> ApiEff (Either (ApiError ApplicationError) CountResponses)
getThreadPostsCount_ByThreadId' _ByThreadId = handleError <$> getAt [ByThreadId _ByThreadId] ["thread_posts_count"]

getLikes :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) LikeResponses)
getLikes params = handleError <$> getAt params ["likes"]

getLikes' :: ApiEff (Either (ApiError ApplicationError) LikeResponses)
getLikes'  = handleError <$> getAt ([] :: Array Boolean) ["likes"]

postLikes :: forall qp. QueryParam qp => Array qp -> LikeRequest -> ApiEff (Either (ApiError ApplicationError) LikeResponse)
postLikes params like_request = handleError <$> postAt params ["likes"] like_request

postLikes' :: LikeRequest -> ApiEff (Either (ApiError ApplicationError) LikeResponse)
postLikes' like_request = handleError <$> postAt ([] :: Array Boolean) ["likes"] like_request

postLikes_ByThreadPostId :: forall qp. QueryParam qp => Array qp -> Int -> LikeRequest -> ApiEff (Either (ApiError ApplicationError) LikeResponse)
postLikes_ByThreadPostId params _ByThreadPostId like_request = handleError <$> postAt (map qp params <> map qp [ByThreadPostId _ByThreadPostId]) ["likes"] like_request

postLikes_ByThreadPostId' :: Int -> LikeRequest -> ApiEff (Either (ApiError ApplicationError) LikeResponse)
postLikes_ByThreadPostId' _ByThreadPostId like_request = handleError <$> postAt [ByThreadPostId _ByThreadPostId] ["likes"] like_request

getLike :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) LikeResponse)
getLike params like_id = handleError <$> getAt params ["likes", show like_id]

getLike' :: Int -> ApiEff (Either (ApiError ApplicationError) LikeResponse)
getLike' like_id = handleError <$> getAt ([] :: Array Boolean) ["likes", show like_id]

putLike :: forall qp. QueryParam qp => Array qp -> Int -> LikeRequest -> ApiEff (Either (ApiError ApplicationError) LikeResponse)
putLike params like_id like_request = handleError <$> putAt params ["likes", show like_id] like_request

putLike' :: Int -> LikeRequest -> ApiEff (Either (ApiError ApplicationError) LikeResponse)
putLike' like_id like_request = handleError <$> putAt ([] :: Array Boolean) ["likes", show like_id] like_request

deleteLike :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteLike params like_id = handleError <$> deleteAt params ["likes", show like_id]

deleteLike' :: Int -> ApiEff (Either (ApiError ApplicationError) Unit)
deleteLike' like_id = handleError <$> deleteAt ([] :: Array Boolean) ["likes", show like_id]

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

postUsers :: forall qp. QueryParam qp => Array qp -> UserRequest -> ApiEff (Either (ApiError ApplicationError) UserResponse)
postUsers params user_request = handleError <$> postAt params ["users"] user_request

postUsers' :: UserRequest -> ApiEff (Either (ApiError ApplicationError) UserResponse)
postUsers' user_request = handleError <$> postAt ([] :: Array Boolean) ["users"] user_request

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

getForumPack :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ForumPackResponse)
getForumPack params forum_id = handleError <$> getAt params ["forum_pack", show forum_id]

getForumPack' :: Int -> ApiEff (Either (ApiError ApplicationError) ForumPackResponse)
getForumPack' forum_id = handleError <$> getAt ([] :: Array Boolean) ["forum_pack", show forum_id]

getBoardPacks :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) BoardPackResponses)
getBoardPacks params = handleError <$> getAt params ["board_packs"]

getBoardPacks' :: ApiEff (Either (ApiError ApplicationError) BoardPackResponses)
getBoardPacks'  = handleError <$> getAt ([] :: Array Boolean) ["board_packs"]

getBoardPacks_ByBoardsIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) BoardPackResponses)
getBoardPacks_ByBoardsIds params _ByBoardsIds = handleError <$> getAt (map qp params <> map qp [ByBoardsIds _ByBoardsIds]) ["board_packs"]

getBoardPacks_ByBoardsIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) BoardPackResponses)
getBoardPacks_ByBoardsIds' _ByBoardsIds = handleError <$> getAt [ByBoardsIds _ByBoardsIds] ["board_packs"]

getBoardPacks_ByForumId :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) BoardPackResponses)
getBoardPacks_ByForumId params _ByForumId = handleError <$> getAt (map qp params <> map qp [ByForumId _ByForumId]) ["board_packs"]

getBoardPacks_ByForumId' :: Int -> ApiEff (Either (ApiError ApplicationError) BoardPackResponses)
getBoardPacks_ByForumId' _ByForumId = handleError <$> getAt [ByForumId _ByForumId] ["board_packs"]

getBoardPack :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) BoardPackResponse)
getBoardPack params board_id = handleError <$> getAt params ["board_pack", show board_id]

getBoardPack' :: Int -> ApiEff (Either (ApiError ApplicationError) BoardPackResponse)
getBoardPack' board_id = handleError <$> getAt ([] :: Array Boolean) ["board_pack", show board_id]

getThreadPacks :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) ThreadPackResponses)
getThreadPacks params = handleError <$> getAt params ["thread_packs"]

getThreadPacks' :: ApiEff (Either (ApiError ApplicationError) ThreadPackResponses)
getThreadPacks'  = handleError <$> getAt ([] :: Array Boolean) ["thread_packs"]

getThreadPacks_ByThreadsIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) ThreadPackResponses)
getThreadPacks_ByThreadsIds params _ByThreadsIds = handleError <$> getAt (map qp params <> map qp [ByThreadsIds _ByThreadsIds]) ["thread_packs"]

getThreadPacks_ByThreadsIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) ThreadPackResponses)
getThreadPacks_ByThreadsIds' _ByThreadsIds = handleError <$> getAt [ByThreadsIds _ByThreadsIds] ["thread_packs"]

getThreadPacks_ByBoardId :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ThreadPackResponses)
getThreadPacks_ByBoardId params _ByBoardId = handleError <$> getAt (map qp params <> map qp [ByBoardId _ByBoardId]) ["thread_packs"]

getThreadPacks_ByBoardId' :: Int -> ApiEff (Either (ApiError ApplicationError) ThreadPackResponses)
getThreadPacks_ByBoardId' _ByBoardId = handleError <$> getAt [ByBoardId _ByBoardId] ["thread_packs"]

getThreadPack :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ThreadPackResponse)
getThreadPack params thread_id = handleError <$> getAt params ["thread_pack", show thread_id]

getThreadPack' :: Int -> ApiEff (Either (ApiError ApplicationError) ThreadPackResponse)
getThreadPack' thread_id = handleError <$> getAt ([] :: Array Boolean) ["thread_pack", show thread_id]

getThreadPostPacks :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) ThreadPostPackResponses)
getThreadPostPacks params = handleError <$> getAt params ["thread_post_packs"]

getThreadPostPacks' :: ApiEff (Either (ApiError ApplicationError) ThreadPostPackResponses)
getThreadPostPacks'  = handleError <$> getAt ([] :: Array Boolean) ["thread_post_packs"]

getThreadPostPacks_ByThreadPostsIds :: forall qp. QueryParam qp => Array qp -> (Array Int) -> ApiEff (Either (ApiError ApplicationError) ThreadPostPackResponses)
getThreadPostPacks_ByThreadPostsIds params _ByThreadPostsIds = handleError <$> getAt (map qp params <> map qp [ByThreadPostsIds _ByThreadPostsIds]) ["thread_post_packs"]

getThreadPostPacks_ByThreadPostsIds' :: (Array Int) -> ApiEff (Either (ApiError ApplicationError) ThreadPostPackResponses)
getThreadPostPacks_ByThreadPostsIds' _ByThreadPostsIds = handleError <$> getAt [ByThreadPostsIds _ByThreadPostsIds] ["thread_post_packs"]

getThreadPostPacks_ByThreadId :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ThreadPostPackResponses)
getThreadPostPacks_ByThreadId params _ByThreadId = handleError <$> getAt (map qp params <> map qp [ByThreadId _ByThreadId]) ["thread_post_packs"]

getThreadPostPacks_ByThreadId' :: Int -> ApiEff (Either (ApiError ApplicationError) ThreadPostPackResponses)
getThreadPostPacks_ByThreadId' _ByThreadId = handleError <$> getAt [ByThreadId _ByThreadId] ["thread_post_packs"]

getThreadPostPack :: forall qp. QueryParam qp => Array qp -> Int -> ApiEff (Either (ApiError ApplicationError) ThreadPostPackResponse)
getThreadPostPack params thread_post_id = handleError <$> getAt params ["thread_post_pack", show thread_post_id]

getThreadPostPack' :: Int -> ApiEff (Either (ApiError ApplicationError) ThreadPostPackResponse)
getThreadPostPack' thread_post_id = handleError <$> getAt ([] :: Array Boolean) ["thread_post_pack", show thread_post_id]

getRecentThreadPostPacks :: forall qp. QueryParam qp => Array qp -> ApiEff (Either (ApiError ApplicationError) ThreadPostPackResponses)
getRecentThreadPostPacks params = handleError <$> getAt params ["recent_thread_post_packs"]

getRecentThreadPostPacks' :: ApiEff (Either (ApiError ApplicationError) ThreadPostPackResponses)
getRecentThreadPostPacks'  = handleError <$> getAt ([] :: Array Boolean) ["recent_thread_post_packs"]

-- footer