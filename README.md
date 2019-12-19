# RSVlionAdSDK
接入说明
直接下载导入工程
pod导入添加语句   pod 'RSVlionAd'

1 SDK接入
1.1 SDK包的导入

1.1.1导入SDK依赖的包
WebKit.framework

1.2 info.plist配置
1.2.1 添加权限

在info.plist配置权限：
App Transport Security Settings
Allow Arbitrary Loads 设置为 YES

1.2.2 Targets配置
Targets -> Build Settings -> Enable Bitcode 设置为 NO

2 加载广告

2.1 加载游戏，配置mediaId，向瑞狮相关人员申请mediaId:
引入#import <VlionAd/VlionAdView.h>
VlionAdView *webView = [[VlionAdView alloc] initWithFrame:frame vmediaId:@“XX"];
[self.view addSubview:webView];
加载广告遵循<VlionAdViewDelegate>代理方法
  
2.2 加载Banner广告

2.2.1 回调中加载Banner
// adId广告位id;cover:YES是覆盖 NO是并排;position:YES是上方 NO是下方
- (void)onloadVlionBannerAdWithAdId:(NSString *)adId cover:(BOOL)cover position:(BOOL)position;

2.2.2 Banner打点
/**Banner广告点击打点*/
- (void)onBannerClicke;
/**Banner广告展示成功打点*/
- (void)onBannerShowSuccess;
/**Banner广告展示失败打点*/
- (void)onBannerShowFailed;

2.3 加载插屏广告

2.3.1 回调中加载插屏广告
// adId广告位id
- (void)onloadVlionSpotAdWithAdId:(NSString *)adId;

2.3.2 插屏打点
/**插屏广告展示失败*/
- (void)onSpotShowFailed;
/**插屏广告关闭*/
- (void)onSpotClosed;
/**插屏广告点击*/
- (void)onSpotClicked;
/**插屏广告展示成功*/
-(void)onSpotShowSuccess;

2.4 加载激励视频广告

2.4.1 回调中加载激励视频和展示激励视频
// adId广告位id,下载激励视频
- (void)onloadVlionRewardVideoAdWithAdId:(NSString *)adId;

// adId广告位id,展示激励视频
- (void)onshowVlionRewardVideoAdWithAdId:(NSString *)adId;

2.4.2 激励视频打点
/**视频广告缓存成功*/
- (void)onRewardVideoLoadVideo;
/**视频广告开始播放*/
- (void)onRewardVideoPlayStart;
/**视频广告点击*/
- (void)onRewardVideoClicked;
/**视频广告关闭*/
- (void)onRewardVideoClosed;
/**视频广告播放完成*/
- (void)onRewardVideoFinish;
/**视频广告播放失败*/
- (void)onRewardVideoPlayFailed;
/**视频广告激励完成*/
- (void)onRewardVideoVerify;

