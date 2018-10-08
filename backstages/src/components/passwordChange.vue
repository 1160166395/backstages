<template>
    <div class="home">
        <header>修改密码</header>
        <label>当前密码<el-input v-model="keyword" type="password" placeholder="当前密码" v-on:change="checkOldPsw()"></el-input></label><span class="warn">{{warning1}}</span><br>
        <label>新密码<el-input v-model="newPsw" type="password" placeholder="新密码"></el-input></label><br>
        <label>确认新密码<el-input v-model="newPsws" type="password" placeholder="确认新密码" v-on:change="checkNewPsw()"></el-input></label><span class="warn">{{warning2}}</span>
        <el-row>
          <el-button type="primary" v-on:click="affirm()">确认修改</el-button>
        </el-row>
    </div>
</template>
<script>

    export default {
        data(){
            return {
                keyword:'',
                newPsw:'',
                newPsws:'',
                warning1:'',
                warning2:''
            }
        },
        methods: {
            checkNewPsw(){
                if (this.newPsw !== this.newPsws) {
                    this.warning2 = '新密码不一致';
                } else {
                    this.warning2 = '';
                }
            },
            checkOldPsw() {
                var username = sessionStorage.getItem('username');
                this.$axios.get('/api/b/psw', {
                    params:{
                        username:username
                    }
                }).then(res=>{
                    let msgs = res.data;
                    if (this.keyword !== msgs[0].password) {
                        this.warning1 = '密码错误';
                    } else {
                        this.warning1 = '';
                    }
                })
            },
            affirm() {
                var username = sessionStorage.getItem('username');
                if (this.warning1 === '' && this.warning2 === '') {
                    this.$axios.get('/api/b/newPsw',{
                        params:{
                            psw:this.newPsw,
                            username:username
                        }
                    }).then(res=>{
                    })
                    this.keyword = '';
                    this.newPsws = '';
                    this.newPsw = '';
                }
            }
        },
        created(){
            
        }
    }
</script>
<style scoped>
    .home {text-align: left;width: 80%;}
    header {line-height: 60px;padding-left: 15px;border-bottom: 1px solid #ccc;}
    label {margin: 25px 0 0 25px;display: inline-block;width: 320px;overflow: hidden;line-height: 40px;}
    .el-input {width: 200px;float: right;}
    .el-row {margin: 25px 0 0 25px;}
    .warn {padding-left: 20px;color: #f00;position: relative;bottom: 15px;}
</style>