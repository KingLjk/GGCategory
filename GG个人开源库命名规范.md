## GG个人开源库命名规范
### 方法命名规范
1. 所有方法名前添加 gg_ 
<pre><code>
形如：普通方法
\+ (UIColor *)<mark>gg\_</mark>colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
</code></pre>
<pre><code>
形如：带block参数方法
\- (void)<mark>gg\_</mark>configWithButtonBlock:(void(^)(UIButton *button))block;
</code></pre>
<pre><code>
形如：链式编程
\- (UITextField * (^) (UIFont *))<mark>gg_set</mark>Font;
</code></pre>

###  宏命名规范
1. 所有宏前添加 kGG 
<pre><code>
形如：
 #define <mark>kGG</mark>ScreenSize [UIScreen mainScreen].bounds.size
</code></pre>


