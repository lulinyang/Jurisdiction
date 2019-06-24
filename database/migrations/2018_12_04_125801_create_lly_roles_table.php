<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLlyRolesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cms_roles', function (Blueprint $table) {
            $table->increments('id');
            $table->string("name",50)->comment("角色名");
            $table->string("orgroot",255)->comment("顶级机构");
            $table->string("orgrootname",255)->comment("顶级机构名称");
            $table->string("orgcode",255)->comment("机构号");
            $table->string("orgname",255)->comment("机构名");
            $table->string("description",50)->comment("角色描述");
            $table->tinyInteger("deleted")->default(0)->nullable()->comment("是否删除，0否，1是");
            $table->timestamps();
        });
        DB::statement("ALTER TABLE `cms_roles` comment '角色表'");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cms_roles');
    }
}
