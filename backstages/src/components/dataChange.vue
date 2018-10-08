<template>
    <div class="home">
        <header>设置我的资料</header>
        <div class="content">
            <span>我的角色</span>
            <el-select v-model="value" placeholder="请选择">
                <el-option
                  v-for="item in options"
                  :key="item.value"
                  :label="item.label"
                  :value="item.value">
                </el-option>
            </el-select>
            <br>
            <span>用户名</span>
            <el-input
                v-model="username"
                :disabled="true">
            </el-input>
            <br>
            <span>昵称</span>
            <el-input v-model="nickname" placeholder="请输入昵称"></el-input>
            <br>
            <span>性别</span>
            <el-radio v-model="radio" label="1">男</el-radio>
            <el-radio v-model="radio" label="2">女</el-radio>
            <br>
            <span>头像</span>
            <el-upload
                class="avatar-uploader"
                action="https://jsonplaceholder.typicode.com/posts/"
                :show-file-list="false"
                :on-success="handleAvatarSuccess"
                :before-upload="beforeAvatarUpload">
                <img v-if="imageUrl" :src="imageUrl" class="avatar">
                <i v-else class="el-icon-plus avatar-uploader-icon"></i>
            </el-upload>
            <br>
            <span>手机</span>
            <el-input v-model="phone" placeholder="请输入手机号码" v-on:change="checkPhone()"></el-input>
            <span class="warning">{{cphone}}</span>
            <br>
            <span>邮箱</span>
            <el-input v-model="email" placeholder="请输入邮箱" v-on:change="checkEmail()"></el-input>
            <span class="warning">{{cemail}}</span>
            <br>
            <span class="comment">备注</span>
            <el-input
                type="textarea"
                :rows="4"
                placeholder="请输入内容"
                v-model="textarea">
            </el-input>
            <br>
            <el-row>
                <el-button type="primary" v-on:click="setData()">确认修改</el-button>
                <el-button v-on:click="getData()">重新填写</el-button>
        </el-row>
        </div>
    </div>
</template>
<script>

    export default {
        data(){
            return {
                options: [{
                  value: '0',
                  label: '管理员'
                }, {
                  value: '1',
                  label: '成员'
                }, {
                  value: '2',
                  label: '游客'
                }],
                value: '',
                identity: '',
                username: '',
                nickname: '',
                phone: '',
                email: '',
                radio: '2',
                imageUrl: '',
                textarea: '',
                cphone: '',
                cemail: ''
            }
        },
        methods: {
            handleAvatarSuccess(res, file) {
                this.imageUrl = URL.createObjectURL(file.raw);
            },
            beforeAvatarUpload(file) {
                const isJPG = file.type === 'image/jpeg';
                const isLt2M = file.size / 1024 / 1024 < 2;

                if (!isJPG) {
                    this.$message.error('上传头像图片只能是 JPG 格式!');
                }
                if (!isLt2M) {
                    this.$message.error('上传头像图片大小不能超过 2MB!');
                }
                return isJPG && isLt2M;
            },
            getData(){
                var username = sessionStorage.getItem('username');
                this.$axios.get('/api/b/psw', {
                    params:{
                        username:username
                    }
                }).then(res=>{
                    let msgs = res.data;
                    this.username = msgs[0].username;
                    this.nickname = msgs[0].nickname;
                    this.radio = msgs[0].gender.toString();
                    this.phone = msgs[0].phone;
                    this.email = msgs[0].email;
                    this.textarea = msgs[0].text;
                })
            },
            checkPhone(){
                let r = /^1(3|4|5|7|8)\d{9}$/;
                if (!r.test(this.phone)) {
                    this.cphone = '手机号码格式错误';
                } else {
                    this.cphone = '';
                }
            },
            checkEmail(){
                let r = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
                if (!r.test(this.email)) {
                    this.cemail = '邮箱格式错误';
                } else {
                    this.cemail = '';
                }
            },
            setData(){
                var username = sessionStorage.getItem('username');
                if (this.cemail === '' && this.cphone === '') {
                    this.$axios.get('/api/b/data',{
                        params:{
                            username:username,
                            gender:this.radio,
                            nickname:this.nickname,
                            phone:this.phone,
                            email:this.email,
                            text:this.textarea
                        }
                    }).then(res=>{
                    })
                }
            }
        },
        created(){
            this.getData();
        }
    }
</script>
<style scoped>
    .home {text-align: left;width: 80%;}
    header {line-height: 60px;padding-left: 15px;border-bottom: 1px solid #ccc;margin-bottom: 15px;}
    /*用户头像上传*/
     .avatar-uploader .el-upload {
        border: 1px dashed #d9d9d9;
        border-radius: 6px;
        cursor: pointer;
        position: relative;
        overflow: hidden;
    }
    .avatar-uploader .el-upload:hover {
        border-color: #409EFF;
    }
    .avatar-uploader-icon {
        border: 1px dashed #ccc;
        font-size: 28px;
        color: #8c939d;
        width: 178px;
        height: 178px;
        line-height: 178px;
        text-align: center;
        margin-left: 100px;
    }
    .avatar {
        width: 178px;
        height: 178px;
        display: block;
        margin-left: 100px;
    }
    span {width: 80px;display: inline-block;text-align: right;margin-right: 10px;}
    .warning {width: 140px;text-align: left;color: #f00;}
    .el-input {width: 200px;margin: 10px;margin-left: 0;}
    .el-select {margin-bottom: 10px;}
    .el-radio {margin-bottom: 10px;}
    .el-row {margin-left: 100px;margin-top: 10px;}
    .comment {line-height: 100px;}
    .el-textarea {width: 300px;height: 100px;}
</style>