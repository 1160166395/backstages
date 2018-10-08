import Vue from 'vue'
import Router from 'vue-router'
// import HelloWorld from '@/components/HelloWorld'
import login from '@/components/login';
import home from '@/components/home';
import goodCategory from '@/components/goodCategory';
import goodList from '@/components/goodList';
import passwordChange from '@/components/passwordChange';
import dataChange from '@/components/dataChange';
import error from '@/components/error'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'login',
      component: login,
      props: true
    },
    {
      path: '/home',
      name: 'home',
      component: home,
      props: true,
      children:[
        {
          path: '/goodCategory',
          name: 'goodCategory',
          component: goodCategory
        },
        {
          path: '/goodList',
          name: 'goodList',
          component: goodList
        },
        {
          path: '/passwordChange',
          name: 'passwordChange',
          component: passwordChange
        },
        {
          path: '/dataChange',
          name: 'dataChange',
          component: dataChange
        }
      ]
    },
    {
      path:'*',
      name:'error',
      component:error
    }
  ]
})
