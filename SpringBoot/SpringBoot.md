# SpringBoot

环境：Java 11、SpringBoot 2.6.3、MySQL 8.0.27

## 一、整合Web

### 1、自定义异常数据

问题：异常消息没有显示内容

![](https://gitee.com/yueyazhui/images/raw/master/typora/20220202215959.png)

![](https://gitee.com/yueyazhui/images/raw/master/typora/202202022211253.png)

### 2、自定义异常视图

问题：没有这个类 ResourceProperties

![](https://gitee.com/yueyazhui/images/raw/master/typora/202202022218496.png)

![](https://gitee.com/yueyazhui/images/raw/master/typora/202202022222498.png)

解决方法：

Resources是WebProperties的内部类，WebProperties提供了getResource()方法；

![](https://gitee.com/yueyazhui/images/raw/master/typora/202202031258837.png)

![](https://gitee.com/yueyazhui/images/raw/master/typora/202202031259955.png)

## 二、整合SQL

### 1、使用内网地址链接不上MySQL

![image-20220207163437237](https://gitee.com/yueyazhui/images/raw/master/typora/202202071634336.png)

再执行`flush privileges;`刷新权限；

