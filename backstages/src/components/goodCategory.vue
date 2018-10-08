<template>
    <div class="home">
        <header>
            <p>主页>商品管理>商品分类</p>
            <el-button type="primary" @click.native="add()">添加</el-button>
            <el-input v-model="input" placeholder="请输入添加内容"></el-input>
        </header>
        <template>
          <el-table
            :data="tableData"
            style="width: 100%"
            align='left'
            :default-sort = "{prop: 'date', order: 'descending'}">
            <el-table-column
              type="index">
            </el-table-column>
            <el-table-column
              label="ID"
              sortable
              :sort-method="changesort"
              width="180">
              <template slot-scope="scope">
                <span>{{ scope.row.id }}</span>
              </template>
            </el-table-column>
            <el-table-column
              label="分类名"
              width="180">
              <template slot-scope="{$index, row}">
                <input class="edit-cell" v-if="showEdit[$index]"    v-model="row.type">
                <span v-if="!showEdit[$index]">{{row.type}}</span>
              </template>
            </el-table-column>
            <el-table-column label="操作" width="180">
              <template slot-scope="{$index, row}">
                <el-button
                  size="mini"
                  v-if="!showBtn[$index]"
                  @click.native="handleEdit($index, row)">编辑</el-button>
                <el-button
                  size="mini"
                  v-if="showBtn[$index]"
                  @click.native="handleUpdate($index, row)">更新</el-button>
                <el-button
                  size="mini"
                  type="danger"
                  @click.native="handleDelete($index, row)">删除</el-button>
              </template>
            </el-table-column>
          </el-table>
        </template>
    </div>
</template>
<script>

    export default {
        data(){
            return {
                 tableData:[],
                 input: '',
                 showEdit: [], //显示编辑框
                 showBtn: [],
                 showBtnOrdinary: true
            }
        },
        methods: {
          handleEdit(index, row) {
            console.log(index, row);
            this.$set(this.showEdit,index,true)
            this.$set(this.showBtn,index,true);
            
          },
          handleUpdate(index, row) {
            this.$set(this.showEdit,index,false)
            this.$set(this.showBtn,index,false);
            this.$axios.get('/api/a/change',{
                params:{
                    id:row.id,
                    type:row.type
                }
            })
          },
          handleDelete(index, row) {
            this.tableData.splice(index,1);
            this.$axios.get('/api/a/del',{
                params:{
                    type:row.type
                }
            })
          },
          changesort(a,b){
            return a-b
          },
          getData(){
            this.$axios.get('/api/a/type',{

            }).then(res=>{
                this.tableData = res.data;
            })
          },
          add(){
            if(this.input != ''){
                this.$axios.get('/api/a/add',{
                    params:{
                        con:this.input
                    }
                }).then(res=>{
                    this.tableData = res.data;
                    this.input = '';
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
    header{height:120px;text-align:left;padding-left:20px;}
    header p {margin:20px 0}
    .el-input{
        width:200px;
        padding:10px 20px 10px 10px;
    }
</style>