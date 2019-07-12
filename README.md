# flutter_animation(Flutter动画)


## 动画分类
+ 补间(Tween)动画
+ 路由过渡动画
+ Hero动画
+ 交错动画

### 补间动画
定义了开始点和结束点、时间线以及定义转换时间和速度的曲线，然后由框架计算如何从开始点过渡到结束点的动画。

<img src="https://github.com/hation/flutter_animation/blob/master/gif/tween_animation.gif"/>

### 路由过渡动画
Material库中提供了一个MaterialPageRoute，它可以使用和平台风格一致的路由切换动画，如在iOS上会左右滑动切换，而在Android上会上下滑动切换。

<img src="https://github.com/hation/flutter_animation/blob/master/gif/route_animation.gif"/>

### Hero动画
Hero指的是可以在路由(页面)之间“飞行”的widget，简单来说Hero动画就是在路由切换时，有一个共享的Widget可以在新旧路由间切换，由于共享的Widget在新旧路由页面上的位置、外观可能有所差异，所以在路由切换时会逐渐过渡，这样就会产生一个Hero动画。

<img src="https://github.com/hation/flutter_animation/blob/master/gif/hero_animation.gif">

### 交错动画
一系列重叠或者动画序列组成的动画。通过各动画不同的执行时间来达到交错动画的目的。

<img src="https://github.com/hation/flutter_animation/blob/master/gif/stagger_animation.gif">

## 参考资料

[Flutter官网](https://flutter.dev/docs/development/ui/animations/tutorial)

[Flutter实战-动画](https://book.flutterchina.club/chapter9/stagger_animation.html)
