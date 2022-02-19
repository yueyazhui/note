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

[Vue官网文档](https://cn.vuejs.org/v2/api/#mixins)

> * 混入必须是一个对象；`Array<Object>`
> * 当使用混入时，相同的内容都会合并；
> * 数据对象如果有相同的，则以被混入对象中data数据为准；

栗子：

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
    mixins: [mixin],
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

混入实例的方法名前面加  ***$_***

### 2、path.resolver() （路径解析）

[Node官网文档](http://nodejs.cn/api/path.html#pathresolvepaths)

`path.resolve()`方法可以将多个路径片段解析为一个规范化的绝对路径；其处理方式类似于对这些路径片段逐一进行cd操作。

栗子：

```javascript
path.resolve('/foo/bar', './baz') 
// 输出结果为 (cd /foo/bar)(cd ./baz)
'/foo/bar/baz' 
path.resolve('/foo/bar', '/tmp/file/') 
// 输出结果为 (cd /foo/bar)(cd /tmp/file/)
'/tmp/file' 
path.resolve('wwwroot', 'static_files/png/', '../gif/avatar.gif') 
// 当前的工作路径是 /home/yue/node，则输出结果为 (cd wwwroot)(cd static_files/png/)(cd ../gif/avatar.gif)
'/home/yue/node/wwwroot/static_files/gif/avatar.gif'
```

### 3、@click.stop与@click.prevent

@click.stop 阻止事件冒泡

@click.prevent 阻止事件的默认行为

### 4、path-to-regexp（组件）

```javascript
// ? 不会玩
pathToRegexp.compile(path)
```

### 5、aria-hidden="true"

现代的辅助技术能够识别并朗读由 CSS 生成的内容和特定的 Unicode 字符。

为了避免屏幕识读设备抓取非故意的和可能产生混淆的输出内容（尤其是当图标纯粹作为装饰用途时），我们为这些图标设置了 `aria-hidden=“true”` 属性。

简而言之：让这个元素对浏览器隐藏。

### 6、v-bind="$attrs" v-on="$listeners"

[vue中使用v-bind="$attrs"和v-on="$listeners"进行多层组件监听](https://www.cnblogs.com/jin-zhe/p/13099416.html)

### 7、require.context()

[require.context(‘./svg‘, false, /\.svg$/)](https://blog.csdn.net/dangpugui/article/details/113863727)

### 8、fuse（组件）

[fuse官网](https://fusejs.io/)

### 9、this.$nextTick()

https://zhuanlan.zhihu.com/p/211260473

https://blog.csdn.net/a654540233/article/details/107245152/

