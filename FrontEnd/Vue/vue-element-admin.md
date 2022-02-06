# vue-element-admin

## 一、App.vue

### 1、router-view

当在构建 SPA (单页应用) 时，为了方便渲染你指定路由对应的组件，你可以使用 router-view 当做是一个容器，它渲染的组件是你使用 vue-router 指定的。

栗子：
视图层：

```vue
<div id="app">
  <router-view></router-view>
</div>
```

路由定义：

```vue
router.map({
  '/foo': {
    // 路由匹配到/foo时，会渲染一个Foo组件
    component: Foo
  }
})
```

初始化实例：

```vue
// start app
var App = Vue.extend({})
router.start(App, '#app')
```

当你访问 /foo 时，router-view 就被 Foo 组件替换了

## 二、Layout（布局）

### 1、mixins

[官网](https://cn.vuejs.org/v2/api/#mixins)

> * 混入必须是一个对象；`Array<Object>`
> * 当使用混入时，相同的内容都会合并；
> * 数据对象如果有相同的，则以被混入对象中data数据为准；

混入实例：

```vue
<script>
  var mixin = {
    el: "mixin",
    data() {
      return {
        name: '月牙坠',
        age: 18,
        sex: '男'
      }
    },
    mounted: function () {
      this.age++
      console.log(this.age) // 28
    },
    computed: {
      say: function () {
        return '被混入的实例(say)'
      }
    },
    methods: {
      $_print: function () {
        return '被混入的实例(print)'
      }
    }
  }
</script>
```

被混入实例：

```vue
<template>
  <div>{{name}}:{{age}},{{sex}},{{say}},{{$_print()}}</div>
</template>

<script>
  export default {
    data() {
      return {
        age: 27
      }
    },
    mounted: function () {
      this.age += 2
      console.log(this.age) // 30
      this.name = '月牙'
    },
    computed: {
      say: function () {
        return '混入的实例(say)'
      }
    },
    methods: {
      print: function () {
        return '混入的实例(print)'
      }
    }
  }
</script>
```

结果：

月牙:30,男,混入的实例(say),被混入的实例(print)

<em>混入实例的方法名前面加 $_</em>

