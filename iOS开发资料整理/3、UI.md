#### UI
##### 1、UIWebView
- 常用的加载资源的方法	- (void)loadRequest:(NSURLRequest *)request;- 常用属性方法

```
重新加载（刷新）- (void)reload;停止加载- (void)stopLoading;回退- (void)goBack;前进- (void)goForward;需要进行检测的数据类型@property(nonatomic) UIDataDetectorTypes dataDetectorTypes

是否能回退@property(nonatomic,readonly,getter=canGoBack) BOOL canGoBack;是否能前进@property(nonatomic,readonly,getter=canGoForward) BOOL canGoForward;是否正在加载中@property(nonatomic,readonly,getter=isLoading) BOOL loading;是否伸缩内容至适应屏幕当前尺寸@property(nonatomic) BOOL scalesPageToFit;
```
- 代理（监听UIWebView的加载过程）
	 - 成为UIWebView的代理，遵守UIWebViewDelegate协议，就能监听UIWebView的加载过程
	 ```
开始发送请求（加载数据）时调用这个方法- (void)webViewDidStartLoad:(UIWebView *)webView;请求完毕（加载数据完毕）时调用这个方法- (void)webViewDidFinishLoad:(UIWebView *)webView;请求错误时调用这个方法- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;

UIWebView在发送请求之前，都会调用这个方法，如果返回NO，代表停止加载请求，返回YES，代表允许加载请求- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;
```
- 如何在OC中调用JavaScript代码	- 使用UIWebView的stringByEvaluatingJavaScriptFromString方法即可
	
##### 2、WKWebView
