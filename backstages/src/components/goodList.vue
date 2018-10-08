<template>
    <div class="home">
        <header>
            <label for="good">关键字</label>
            <el-input v-model="input" placeholder="请输入商品名称" id.native="good"></el-input>
            <span>商品分类</span>
            <el-select v-model="value" placeholder="请选择">
                <el-option
                  v-for="item in options"
                  :key="item.id"
                  :label="item.type"
                  :value="item.type">
                </el-option>
            </el-select>
            <el-button type="primary" icon="el-icon-search" plain @click.native="getPage"></el-button>
        </header>
        <div class='box'>
          <el-button type="primary" @click="addpage">添加</el-button>
          <el-button type="primary" @click="delgoods">删除</el-button>
          <template>
            <el-table
              :data="tableData"
              style="width: 1000px"
              height="400"
              v-loading="loading"
              align='left'
              @selection-change="handleSelectionChange"
              ref="multipleTable"
              :default-sort = "{prop: 'date', order: 'descending'}">
              <el-table-column
                type="selection"
                width="55"
                fixed>
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
                <template slot-scope="scope">
                  <span>{{ scope.row.type }}</span>
                </template>
              </el-table-column>
              <el-table-column
                label="商品名称"
                width="180">
                <template slot-scope="scope">
                  <span>{{ scope.row.name }}</span>
                </template>
              </el-table-column>
              <el-table-column
                label="价格"
                width="180">
                <template slot-scope="{$index, row}">
                  <input class="edit-cell" v-if="showEdit[$index]"    v-model="row.sale">
                  <span v-if="!showEdit[$index]">{{row.sale}}</span>
                </template>
              </el-table-column>
              <el-table-column
                label="上传时间"
                sortable
                :sort-method="changesort"
                width="180">
                <template slot-scope="scope">
                  <span>{{ scope.row.time }}</span>
                </template>
              </el-table-column>
              <el-table-column
                label="发布状态"
                width="180">
                <template slot-scope="{$index, row}">
                  <el-button type="primary" v-if="row.state" @click.native="release($index,row)">已发布</el-button>
                  <el-button v-if="!row.state" @click.native="release($index,row)">未发布</el-button>
                </template>
              </el-table-column>
              <el-table-column label="操作" width="180" fixed="right">
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
          <div class="block">
              <el-pagination
                @size-change="handleSizeChange"
                @current-change="handleCurrentChange"
                :page-sizes="[10, 20, 30, 40]"
                :page-size=qty
                layout="total, sizes, prev, pager, next, jumper"
                :total=total>
              </el-pagination>
          </div>
          <div class="addpage" v-if="add" >
            <label for="type">类别</label>
            <el-input v-model="type" placeholder="请输入类别" id.native="type"></el-input><br>
            <label for="name">名称</label>
            <el-input v-model="name" placeholder="请输入名称" id.native="name"></el-input><br>
            <label for="price">价格</label>
            <el-input v-model="price" placeholder="请输入价格" id.native="price"></el-input><br>
            <el-button type="primary" @click.native="addgood" >提交</el-button>
          </div>
        </div>
        <div class="mu" v-if="add"></div>
    </div>
</template>
<script>

    export default {
        data(){
            return {
                input:'',
                options: [],
                value: '',
                tableData: [],
                total:400,
                qty:10,
                page:1,
                showEdit: [], //显示编辑框
                showBtn: [],
                multipleSelection: [],
                loading: true,
                add:false,
                type:'',
                name:'',
                price:''
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
            this.$axios.get('/api/a/changesale',{
                params:{
                    sale:row.sale,
                    id:row.id
                }
            })
          },
          //单个删除
          handleDelete(index, row) {
            this.$axios.get('/api/a/delgood',{
                params:{
                    id:row.id
                }
            }).then(res=>{
              this.getPage()
            })
          },
          //多个删除
          delgoods() {
            var all = this.multipleSelection.map(item=>{
              return item.id
            });
            all = all.join(',');
            this.$axios.get('/api/a/delgoods',{
                params:{
                    all:all
                }
            }).then(res=>{
              this.getPage()
            })
          },
          release(index,row){
            this.$axios.get('/api/a/release',{
              params:{
                id:row.id,
                state:row.state
              }
            }).then(res=>{
              this.getPage();
            })
          },
          handleSizeChange(val) {
            this.qty = val;
            this.getPage();

          },
          handleCurrentChange(val) {
            this.page = val;
            this.getPage();
          },
          changesort(a,b){
            return a-b
          },
          getData(){
            this.$axios.get('/api/a/type',{

            }).then(res=>{
                this.options = res.data;
            });
          },
          getPage(){
            this.loading=true;
            this.$axios.get('/api/a/goods',{
              params:{
                qty:this.qty,
                page:this.page,
                name:this.input,
                type:this.value
              }
            }).then(res=>{
              this.tableData = res.data[0];
              this.total = res.data[1];
              this.input = '';
              this.value = '';
              this.loading=false;
            })
          },
          //选中添加
          handleSelectionChange(val) {
            this.multipleSelection = val;
          },
          //显示添加窗口
          addpage(){
            this.add = true;console.log(this.add)
          },
          //提交添加内容
          addgood(){
            this.$axios.get('/api/a/addgood',{
              params:{
                type:this.type,
                name:this.name,
                price:this.price
              }
            }).then(res=>{
              this.getPage();
              this.add=false;
            })
          }
        },
        created(){
          this.getData();
          this.getPage();
        }
    }
</script>
<style scoped>
    header{
        padding:20px 40px;
        border-bottom:1px solid #ccc;
        margin:0 10px 20px 10px;
        width:100%;
    }
    .el-input{
        width:200px;
        padding:10px 20px 10px 10px;
    }
    .el-select{
        padding:10px;
    }
    .box{
        padding-left:20px;
    }
    .home{
      position: relative;
    }
    .addpage{
      position:absolute;
      left:50%;
      top:50%;
      transform: translate(-50%,-50%);
      background: #fff;
      padding: 20px;
      z-index: 1001;
      text-align:center;
    }
    .mu{
      width: 100%;
      height: 100%;
      position: absolute;
      background:rgba(0, 0,0, 0.3); 
      left:0;
      top:0;
      z-index:1000;
    }
</style>