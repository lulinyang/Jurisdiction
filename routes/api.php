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
});

Route::post('/upImage', 'Controller@upImage');
Route::post('/upOssImage', 'Controller@upOssImage');

// IS_INTERNAL=false
// ALIOSS_CITY=北京
// ALIOSS_NETWORK_TYPE=经典网络
// ALIOSS_SERVER=http://oss-cn-beijing.aliyuncs.com
// ALIOSS_SERVERINTERNAL=http://oss-cn-beijing-internal.aliyuncs.com
// ALIOSS_KEYID=LTAIc6zdQq5DpxTv
// ALIOSS_KEYSECRET=V2KHD8jHYJZmPEDVzGOvLWTqC5CRuy
// ALIOSS_BUCKETNAME=lulinyang
