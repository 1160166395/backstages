<template>
    <div class="homes">
        <header class='head'>
        <div class="left">
            <h1>后台管理系统</h1>
        </div>
        <div class="right">
            <p>欢迎{{username}}登录后台管理系统</p>
        </div>
        </header>
        <div class="bigbox">
          <el-row class="tac">
            <el-col :span="12">
              <el-menu
                default-active="2"
                class="el-menu-vertical-demo"
                @open="handleOpen"
                @close="handleClose"
                :default-openeds="openeds">
                <el-submenu index="1" >
                  <template slot="title">
                    <i class="el-icon-location"></i>
                    <span>商品管理</span>
                  </template>
                  <el-menu-item-group v-for="item,idx in good">
                    <el-menu-item :index="item.id" @click.native="goto(item.id)">{{item.title}}</el-menu-item>
                  </el-menu-item-group>
                </el-submenu>
                <el-submenu index="2">
                  <template slot="title">
                    <i class="el-icon-menu"></i>
                    <span>用户管理</span>
                  </template>
                  <el-menu-item-group v-for="item,idx in user">
                    <el-menu-item :index="item.id" @click.native="goto(item.id)">{{item.title}}</el-menu-item>
                  </el-menu-item-group>
                </el-submenu>
                <el-menu-item index="3" disabled>
                  <i class="el-icon-document"></i>
                  <span slot="title">交易管理</span>
                </el-menu-item>
              </el-menu>
            </el-col>
          </el-row>
          <router-view/>
        </div>
    </div>
</template>
<script>

    export default {
        data(){
            return {
                openeds:['1','2'],
                username:'',
                good:[{title:'商品分类',id:'goodCategory'},{title:'商品列表',id:'goodList'}],
                user:[{title:'修改密码',id:'passwordChange'},{title:'资料修改',id:'dataChange'}]
            }
        },
        methods: {
          handleOpen(key, keyPath) {
            console.log(key, keyPath);
          },
          handleClose(key, keyPath) {
            console.log(key, keyPath);
          },
          goto(id){
            this.$router.push({name:id})
          }
        },
        created(){
            var username = sessionStorage.getItem('username');
            if(username){
              this.username = username
            }else{
              this.$router.push({
                name:'login',
              });
            }
        }
    }
</script>
<style scoped>
    .head{ 
        height:50px;
        line-height:50px;
        overflow:hidden;
        border-bottom:1px solid #000;
        padding:10px 30px;
    }
    .left{
        float:left;
    }
    .right{
        float:right;
    }
    .el-menu-vertical-demo,.el-row{
        float:left;
    }
    .bigbox{
      overflow: hidden;
    }
</style>