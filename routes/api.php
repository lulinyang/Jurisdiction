<?php

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//平台端接口
Route::group(['middleware' => 'customer', 'namespace' => 'api'], function () {
    /*
     * 权限控制
     */
    Route::get('/getJurisdiction', 'CommonController@getJurisdiction');
    /*
     * 用户管理
     */
    Route::get('/getUserList', 'CustomerController@getUserList');
    Route::post('/saveUser', 'CustomerController@saveUser');
    Route::post('/getUserInfo', 'CustomerController@getUserInfo');
    Route::post('/deleteUser', 'CustomerController@deleteUser');

    /*
     * 节点管理
     */
    Route::get('/getNodes', 'PermissionsController@getNodes');
    Route::get('/getNodesAll', 'PermissionsController@getNodesAll');
    Route::get('/getNodesGetTree', 'PermissionsController@getNodesGetTree');
    Route::post('/addNode', 'PermissionsController@addNode');
    Route::post('/deleteNode', 'PermissionsController@deleteNode');

    /*
     * 角色管理
     */
    Route::get('/getRoles', 'RoleController@getRoles');
    Route::get('/getRolesAll', 'RoleController@getRolesAll');
    Route::post('/addRole', 'RoleController@addRole');
    Route::post('/updateRolePower', 'RoleController@updateRolePower');
    Route::post('/deleteRole', 'RoleController@deleteRole');
    /*
     * 族谱管理
     */
    Route::post('/addGenealogy', 'SurnameController@addGenealogy');
    Route::get('/getGenealogyList', 'SurnameController@getGenealogyList');
    Route::get('/getGenealogy', 'SurnameController@getGenealogy');
    Route::post('/deleteGenealogy', 'SurnameController@deleteGenealogy');
    Route::get('/getSurnameAll', 'SurnameController@getSurnameAll');
    Route::get('/getMemberList', 'MemberController@getMemberList');
    Route::post('/addMember', 'MemberController@addMember');
    Route::get('/getMember', 'MemberController@getMember');
    Route::get('/getMemberAll', 'MemberController@getMemberAll');
    Route::post('/deleteMember', 'MemberController@deleteMember');
    Route::get('/getPedigreeTree', 'TopologicalGraphController@getPedigreeTree');
    Route::post('/addPedigree', 'TopologicalGraphController@addPedigree');
    Route::get('/getPedigreeAll', 'TopologicalGraphController@getPedigreeAll');
    Route::post('/deletePedigree', 'TopologicalGraphController@deletePedigree');
    Route::get('/getTreeChart', 'TopologicalGraphController@getTreeChart');
    
    /*
     * 文章管理
     */
    Route::post('/addColumn', 'ColumnController@addColumn');
    Route::post('/delColumn', 'ColumnController@delColumn');
    Route::get('/getColumnList', 'ColumnController@getColumnList');
    Route::post('/addarticle', 'ArcticleController@addarticle');
    Route::get('/getArcticlList', 'ArcticleController@getArcticlList');
    Route::get('/getArticle', 'ArcticleController@getArticle');
    Route::post('/deleteArcticle', 'ArcticleController@deleteArcticle');
    Route::post('/addCelebrity', 'CelebrityController@addCelebrity');
    Route::get('/getCelebrity', 'CelebrityController@getCelebrity');
    Route::get('/getCelebrityById', 'CelebrityController@getCelebrityById');
    Route::post('/delCelebrity', 'CelebrityController@delCelebrity');
    /**
     * 用户管理
     */
    Route::get('/getUser', 'UserController@getUser');
    Route::get('/getUserAll', 'UserController@getUserAll');
    /**
     * 页面设置及系统配置
     */
    Route::post('/addBanner', 'SettingController@addBanner');
    Route::get('/getBanner', 'SettingController@getBanner');
    Route::post('/delBanner', 'SettingController@delBanner');
    Route::post('/addMenu', 'SettingController@addMenu');
    Route::get('/getMenu', 'SettingController@getMenu');
    
    /**
     * 宗祠管理
     */
    Route::post('/addAncestral', 'AncestralController@addAncestral');
    Route::get('/getAncestral', 'AncestralController@getAncestral');
    Route::get('/getAncestralAll', 'AncestralController@getAncestralAll');
    Route::get('/getAncestralById', 'AncestralController@getAncestralById');
    Route::post('/delAncestral', 'AncestralController@delAncestral');
    /**
     * 宗祠公告管理
     */
    Route::post('/addNotice', 'AncestralController@addNotice');
    Route::post('/editNotice', 'AncestralController@editNotice');
    Route::get('/getNoticeList', 'AncestralController@getNoticeList');
    Route::post('/delNotice', 'AncestralController@delNotice');
    /**
     * 话题管理
     */
    Route::get('/getConversationList', 'ConversationController@getConversationList');
    Route::post('/delConversationList', 'ConversationController@delConversationList');
});

//公共接口
Route::group(['namespace' => 'api'], function () {
    Route::post('/upOssImage', 'CommonController@upOssImage');
    Route::post('/upImage', 'CommonController@upImage');
    Route::post('/historyToday', 'CommonController@historyToday');
    Route::post('/getWeather', 'CommonController@getWeather');
    Route::post('/getHuangLi', 'CommonController@getHuangLi');
    Route::post('/getHistoryToday', 'CommonController@getHistoryToday');
    //设置用户位置
    Route::post('/setPosition', 'CommonController@setPosition');
    //上传图片
    Route::post('/upChatImage', 'CommonController@upChatImage');
    //上传文件
    Route::post('/uploadAncestralFile', 'CommonController@uploadAncestralFile');
});
//用户端接口
Route::group(['middleware' => 'user.api', 'namespace' => 'api'], function () {
    //首页菜单
    Route::post('/getMenu', 'SettingController@getMenu');
    //首页轮播图
    Route::post('/getBanner', 'SettingController@getBanner');
    //发送验证码
    Route::post('/sendMsg', 'CommonController@sendMsg');
    //文章
    Route::post('/getColumn', 'ColumnController@getColumnList');
    Route::post('/getArctice', 'ArcticleController@getArcticlList');
    Route::post('/getArticleById', 'ArcticleController@getArticleById');
    Route::post('/addBrowseNumArctice', 'ArcticleController@addBrowseNum');
    //用户
    Route::post('/getUserById', 'UserController@getUserById');
    Route::post('/addUser', 'UserController@addUser');
    Route::post('/changePassword', 'UserController@changePassword');
    Route::post('/editUserInfo', 'UserController@editUserInfo');
    Route::post('/modifyPwd', 'UserController@modifyPwd');
    Route::post('/findUser', 'UserController@findUser');
    Route::post('/followUser', 'UserController@followUser');
    Route::post('/removeConcerns', 'UserController@removeConcerns');
    Route::post('/getUnread', 'UserController@getUnread');
    Route::post('/getFollowList', 'UserController@getFollowList');
    Route::post('/getFollowListMessage', 'UserController@getFollowListMessage');
    
    //实名认证
    Route::post('/realAuthentication', 'UserController@realAuthentication');
    //用户登录
    Route::post('/login', 'UserController@login');
    //发布话题
    Route::post('/pushConversation', 'ConversationController@pushConversation');
    Route::post('/getConversationList', 'ConversationController@getConversationList');
    Route::post('/addBrowseNumConversation', 'ConversationController@addBrowseNum');
    Route::post('/getConversationById', 'ConversationController@getConversationById');
    //族谱
    Route::post('/getGenealogy', 'SurnameController@getGenealogyList');
    Route::post('/getGenealogyById', 'SurnameController@getGenealogy');
    Route::post('/addBrowseNumGenealogy', 'SurnameController@addBrowseNum');
    //评论 Comment 
    Route::post('/saveComment', 'CommentController@saveComment');
    Route::post('/getComment', 'CommentController@getComment');
    //点赞
    Route::post('/saveFabulous', 'FabulousController@saveFabulous');
    //收藏
    Route::post('/saveCollection', 'CollectionController@saveCollection');
    Route::post('/cancelCollection', 'CollectionController@cancelCollection');
    //宗祠
    Route::post('/getAncestral', 'AncestralController@getAncestral');
    Route::post('/applyAncestral', 'AncestralController@applyAncestral');
    Route::post('/cancelAncestral', 'AncestralController@cancelAncestral');
    Route::post('/getAncestralApp', 'AncestralController@getAncestralApp');
    Route::post('/getAlreadyAncestral', 'AncestralController@getAlreadyAncestral');
    Route::post('/getApplyAncestral', 'AncestralController@getApplyAncestral');
    Route::post('/getAncestralInfo', 'AncestralController@getAncestralInfo');
    
    //名人烈士
    Route::post('/getCelebrity', 'CelebrityController@getCelebrity');
    //私信
    Route::post('/saveChat', 'ChatController@saveChat');
    //获取私信列表
    Route::post('/getPrivateLetterList', 'ChatController@getPrivateLetterList');
    Route::post('/updateUnread', 'ChatController@updateUnread');
    Route::post('/getChatRoomList', 'ChatController@getChatRoomList');
    //族谱拓扑图
    Route::post('/getTreeChart', 'TopologicalGraphController@getTreeChart');
    //任务简介
    Route::post('/getMember', 'MemberController@getMember');
    //发起投票
    Route::post('/addVote', 'AncestralController@addVote');
    //获取投票列表
    Route::post('/getVoteList', 'AncestralController@getVoteList');
    //获取投票内容
    Route::post('/getVoteItem', 'AncestralController@getVoteItem');
    //投票
    Route::post('/activeVoteItem', 'AncestralController@activeVoteItem');
    //获取最新公告
    Route::post('/getNoticeNew', 'AncestralController@getNoticeNew');
    //公告列表
    Route::post('/getNoticeList', 'AncestralController@getNoticeList');
    //保存宗祠建议内容
    Route::post('/saveProposal', 'AncestralController@saveProposal');
    //获取宗祠建议内容
    Route::post('/getProposalList', 'AncestralController@getProposalList');
    //获取宗祠的文件列表
    Route::post('/getAncestralFileList', 'AncestralController@getAncestralFileList');
});

// Route::post('/upOssAudio', 'Controller@upOssAudio');
// Route::post('/aipSpeech', 'Controller@aipSpeechTest');
Route::post('/upEditImage', 'Controller@upEditImage');
// Route::any('/wechat', 'WeChatController@serve');
// Route::any('/getToken', 'WeChatController@getToken');
// Route::any('/createMenu', 'WeChatController@createMenu');

// IS_INTERNAL=false
// ALIOSS_CITY=北京
// ALIOSS_NETWORK_TYPE=经典网络
// ALIOSS_SERVER=http://oss-cn-beijing.aliyuncs.com
// ALIOSS_SERVERINTERNAL=http://oss-cn-beijing-internal.aliyuncs.com
// ALIOSS_KEYID=LTAIc6zdQq5DpxTv
// ALIOSS_KEYSECRET=V2KHD8jHYJZmPEDVzGOvLWTqC5CRuy
// ALIOSS_BUCKETNAME=lulinyang

Route::get('/test', 'WebSocketController@test');

Route::post('/testCron', 'CronController@test');

// Route::post('/saveChat', 'WebSocketController@saveChat');
