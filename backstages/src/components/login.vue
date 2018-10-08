<template>
    <div class="login demo-input-suffix">
        <h1>
            <img src="../img/2.jpg" alt="">
        </h1>
        <h2>
            db后台管理系统
        </h2>
        <el-input
            placeholder="请输入账号"
            prefix-icon="el-icon-mobile-phone"
            v-model="input21">
        </el-input>
        <el-input
            type="password"
            placeholder="请输入密码"
            prefix-icon="el-icon-question"
            v-model="input22">
        </el-input>
        <el-row>
            <el-button type="primary" plain @click="getMysql">登录</el-button>
        </el-row>
        <el-radio-group v-model="radio2">
            <el-checkbox v-model="checked">记住密码</el-checkbox>
        </el-radio-group>
        <div class="mima">忘记密码？</div>
    </div>
</template>
<script>

    export default {
        data(){
            return {
                items:[],
                keyword:'',
                checked: false,
                input21: '',
                input22: '',
                radio2: ''
            }
        },
        methods: {
            getMysql(){
                
				this.$axios.post('/api/c/wlogin',{
                    username : this.input21,
                    password : this.input22
                    

				}).then(res=>{
                    
                    let data = res.data;
                    console.log(data)
                    if(data[0] != null){
                        let username = data[0].username;
                        console.log(JSON.stringify(data))
                        this.$router.push({
                            name:'home',
                            params:{username}
                        });
                        sessionStorage.setItem("username", username);
                    }else{
                        alert("用户名或密码错误,请从新输入")
                    }

                });
                
			}
        },
        created(){
            
        }
    }
</script>
<style scoped>
    .login{
        width: 735px;
        height: 430px;
        margin: auto;
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        text-align:center;
    }
    .login h1 img{
        width: 100px;
        height: 100px;
        border-radius: 50%;
        margin-bottom: 10px;
    }
    .login h2 {
        color: rgb(86, 31, 117);
    }
    .el-input{
        margin: 20px auto;
        width: 300px;
        display: block;
    }
    .el-button{
        width: 300px;   
    }
    .el-radio-group{
       line-height: 3;
       width: 100px;
       height: 40px;
       margin-left: -150px;
    }
    .login .mima{
        display: inline-block;
        width: 70px;
        height: 30px;
        margin-right: -140px;
        font-size: 12px;
        color: blue;
        margin-left: 50px;
    }
</style>