.class public Ljy/sdk/channel/jy/Jy;
.super Ljy/sdk/common/abs/AbsChannelSdk;
.source "Jy.java"

# interfaces
.implements Ljy/sdk/shell/callback/IActivityCallback;
.implements Ljy/sdk/shell/callback/IApplication;
.implements Ljy/sdk/common/components/IwelcomeActivityProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/channel/jy/Jy$PayQuery;
    }
.end annotation


# static fields
.field private static final QUERY:I = 0x111


# instance fields
.field private iJyInitListener:Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;

.field private isInitJYSDK:Z

.field isInitToutiao:Z

.field private isTestMode:Z

.field private mHandler:Landroid/os/Handler;

.field private permissionCode:I

.field setToutiaoChannelInfo:Z

.field setToutiaoStartInit:Z

.field startToutiao:Z

.field private toutiaoAppId:Ljava/lang/String;

.field private toutiaoAppName:Ljava/lang/String;

.field private toutiaoChannel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljy/sdk/common/abs/AbsChannelSdk;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    .line 55
    iput-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->isInitToutiao:Z

    .line 58
    iput-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->setToutiaoChannelInfo:Z

    .line 59
    iput-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->setToutiaoStartInit:Z

    const/16 v1, 0x7b

    .line 68
    iput v1, p0, Ljy/sdk/channel/jy/Jy;->permissionCode:I

    .line 71
    iput-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->isInitJYSDK:Z

    .line 72
    iput-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->isTestMode:Z

    .line 340
    new-instance v0, Ljy/sdk/channel/jy/Jy$4;

    invoke-direct {v0, p0}, Ljy/sdk/channel/jy/Jy$4;-><init>(Ljy/sdk/channel/jy/Jy;)V

    iput-object v0, p0, Ljy/sdk/channel/jy/Jy;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Ljy/sdk/channel/jy/Jy;)Landroid/os/Handler;
    .registers 1

    .line 51
    iget-object p0, p0, Ljy/sdk/channel/jy/Jy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkIsOpenTouTiao(Landroid/app/Application;)V
    .registers 6

    .line 551
    iget-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->isTestMode:Z

    if-eqz v0, :cond_7

    const-string p1, "jytoutiao_qydemo_10003_258992"

    goto :goto_d

    :cond_7
    const-string v0, "META-INF/jytoutiao"

    .line 554
    invoke-virtual {p0, p1, v0}, Ljy/sdk/channel/jy/Jy;->getMetaParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 556
    :goto_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 557
    sget-object p1, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    const-string v0, "\u672a\u5f00\u542f\u5934\u6761SDK\u4e0a\u62a5"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iput-boolean v1, p0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    return-void

    .line 563
    :cond_1e
    :try_start_1e
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u542f\u5934\u6761SDK\u4e0a\u62a5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "_"

    .line 564
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 565
    array-length v2, v0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_57

    .line 566
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u542f\u5934\u6761SDK\u4e0a\u62a5\uff0c\u4f46\u662f\u53c2\u6570\u9519\u8bef\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iput-boolean v1, p0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    return-void

    :cond_57
    const/4 p1, 0x1

    .line 570
    aget-object v2, v0, p1

    iput-object v2, p0, Ljy/sdk/channel/jy/Jy;->toutiaoAppName:Ljava/lang/String;

    const/4 v2, 0x2

    .line 571
    aget-object v2, v0, v2

    iput-object v2, p0, Ljy/sdk/channel/jy/Jy;->toutiaoChannel:Ljava/lang/String;

    const/4 v2, 0x3

    .line 572
    aget-object v0, v0, v2

    iput-object v0, p0, Ljy/sdk/channel/jy/Jy;->toutiaoAppId:Ljava/lang/String;

    .line 573
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljy/sdk/channel/jy/Jy;->toutiaoAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljy/sdk/channel/jy/Jy;->toutiaoChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljy/sdk/channel/jy/Jy;->toutiaoAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iput-boolean p1, p0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_8f} :catch_90

    goto :goto_96

    :catch_90
    move-exception p1

    .line 576
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    iput-boolean v1, p0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    :goto_96
    return-void
.end method

.method private getChannelByTouTiao(Landroid/app/Activity;)V
    .registers 7

    .line 150
    invoke-static {}, Ljy/sdk/common/utils/misc/INFChannel;->getCustomChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 154
    :cond_b
    invoke-static {p1}, Lcom/bytedance/hume/readapk/HumeSDK;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 156
    sget-object v1, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u5230\u7684\u5934\u6761\u5206\u5305\u6e20\u9053\u53f7\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "platformChannel"

    .line 159
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platformName"

    const-string v3, "toutiao"

    .line 160
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appId"

    .line 161
    invoke-virtual {p0}, Ljy/sdk/channel/jy/Jy;->getJy_AppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "channel"

    .line 162
    invoke-virtual {p0}, Ljy/sdk/channel/jy/Jy;->getJy_channelId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "subChannel"

    .line 163
    invoke-virtual {p0}, Ljy/sdk/channel/jy/Jy;->getJy_subChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platformAppId"

    .line 164
    iget-object v3, p0, Ljy/sdk/channel/jy/Jy;->toutiaoAppId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platformAppName"

    .line 165
    iget-object v3, p0, Ljy/sdk/channel/jy/Jy;->toutiaoAppName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :try_start_65
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v2

    invoke-static {}, Ljy/sdk/gamesdk/api/ApiConstants;->getChannelByOtherPlatformUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljy/sdk/channel/jy/Jy$2;

    invoke-direct {v4, p0, v0}, Ljy/sdk/channel/jy/Jy$2;-><init>(Ljy/sdk/channel/jy/Jy;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3, v1, v4}, Ljy/sdk/gamesdk/api/ApiClient;->commonHttp(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Ljy/sdk/gamesdk/api/IApiCallBack;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_75} :catch_76

    goto :goto_79

    :catch_76
    const/4 p1, 0x1

    .line 184
    iput-boolean p1, p0, Ljy/sdk/channel/jy/Jy;->setToutiaoStartInit:Z

    .line 186
    :goto_79
    iget-boolean p1, p0, Ljy/sdk/channel/jy/Jy;->setToutiaoStartInit:Z

    if-nez p1, :cond_85

    goto :goto_79

    .line 189
    :cond_7e
    sget-object p1, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    const-string v0, "\u65e0\u9700\u8f6c\u6362\u5934\u6761\u5206\u5305\u6e20\u9053\u53f7"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    return-void
.end method

.method private initJYSDK(Landroid/app/Activity;)V
    .registers 4

    .line 131
    iget-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->isInitJYSDK:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->isInitJYSDK:Z

    .line 135
    iget-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz v0, :cond_30

    .line 136
    invoke-direct {p0, p1}, Ljy/sdk/channel/jy/Jy;->initToutiao(Landroid/app/Activity;)V

    .line 138
    :cond_f
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 139
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 140
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getIid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 144
    :cond_2d
    invoke-direct {p0}, Ljy/sdk/channel/jy/Jy;->setTTOtherInfo()V

    .line 146
    :cond_30
    invoke-static {}, Ljy/sdk/gamesdk/SdkApi;->getInstance()Ljy/sdk/gamesdk/SdkApi;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/channel/jy/Jy;->iJyInitListener:Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;

    invoke-virtual {v0, p1, v1}, Ljy/sdk/gamesdk/SdkApi;->initSdk(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;)V

    return-void
.end method

.method private initToutiao(Landroid/app/Activity;)V
    .registers 5

    .line 621
    iget-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-nez v0, :cond_c

    .line 622
    sget-object p1, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    const-string v0, "\u672a\u5f00\u542f\u5934\u6761SDK\u4e0a\u62a5"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 626
    :cond_c
    iget-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->isInitToutiao:Z

    if-eqz v0, :cond_18

    .line 627
    sget-object p1, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    const-string v0, "\u5df2\u7ecf\u521d\u59cb\u5316\u8fc7\u5934\u6761\uff0c\u65e0\u9700\u518d\u6b21\u521d\u59cb\u5316"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 631
    :cond_18
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    const-string v1, "\u5934\u6761\u521d\u59cb\u5316\u4e8b\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v0, Lcom/bytedance/applog/InitConfig;

    iget-object v1, p0, Ljy/sdk/channel/jy/Jy;->toutiaoAppId:Ljava/lang/String;

    iget-object v2, p0, Ljy/sdk/channel/jy/Jy;->toutiaoChannel:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/applog/InitConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 633
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/InitConfig;->setUriConfig(I)Lcom/bytedance/applog/InitConfig;

    const/4 v1, 0x1

    .line 634
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/InitConfig;->setEnablePlay(Z)Lcom/bytedance/applog/InitConfig;

    .line 635
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/InitConfig;->setAbEnable(Z)V

    .line 636
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/InitConfig;->setAutoStart(Z)Lcom/bytedance/applog/InitConfig;

    .line 637
    iget-boolean v2, p0, Ljy/sdk/channel/jy/Jy;->isTestMode:Z

    if-eqz v2, :cond_3f

    .line 638
    sget-object v2, Ljy/sdk/channel/jy/-$$Lambda$Jy$naicseSaJ4viqtv_AB_g3bopee8;->INSTANCE:Ljy/sdk/channel/jy/-$$Lambda$Jy$naicseSaJ4viqtv_AB_g3bopee8;

    invoke-virtual {v0, v2}, Lcom/bytedance/applog/InitConfig;->setLogger(Lcom/bytedance/applog/ILogger;)Lcom/bytedance/applog/InitConfig;

    .line 640
    :cond_3f
    invoke-static {p1, v0}, Lcom/bytedance/applog/AppLog;->init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V

    .line 641
    iput-boolean v1, p0, Ljy/sdk/channel/jy/Jy;->isInitToutiao:Z

    .line 643
    iget-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->setToutiaoChannelInfo:Z

    if-nez v0, :cond_4d

    .line 644
    iput-boolean v1, p0, Ljy/sdk/channel/jy/Jy;->setToutiaoChannelInfo:Z

    .line 645
    invoke-direct {p0, p1}, Ljy/sdk/channel/jy/Jy;->getChannelByTouTiao(Landroid/app/Activity;)V

    :cond_4d
    return-void
.end method

.method static synthetic lambda$initToutiao$0(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 638
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private setTTOtherInfo()V
    .registers 13

    .line 194
    iget-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-nez v0, :cond_5

    return-void

    .line 197
    :cond_5
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getSsid()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDid()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getIid()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAid()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAbSdkVersion()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getClientUdid()Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getOpenUdid()Ljava/lang/String;

    move-result-object v6

    .line 204
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getUdid()Ljava/lang/String;

    move-result-object v7

    .line 205
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getUserID()Ljava/lang/String;

    move-result-object v8

    .line 206
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getUserUniqueID()Ljava/lang/String;

    move-result-object v9

    .line 212
    :try_start_2d
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "ssid"

    .line 213
    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "did"

    .line 214
    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "iid"

    .line 215
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "aid"

    .line 216
    invoke-virtual {v10, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "abSdkVersion"

    .line 217
    invoke-virtual {v10, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "clientUdid"

    .line 218
    invoke-virtual {v10, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "openUdid"

    .line 219
    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "udid"

    .line 220
    invoke-virtual {v10, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "userId"

    .line 221
    invoke-virtual {v10, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "userUniqueId"

    .line 222
    invoke-virtual {v10, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljy/sdk/common/utils/misc/INFChannel;->setOtherSubServerInfo(Ljava/lang/String;)V

    .line 224
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5230\u7684\u5934\u6761\u5bf9\u8d26\u53c2\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_85} :catch_85

    :catch_85
    return-void
.end method


# virtual methods
.method protected exitChannel(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IDialogListener;)Z
    .registers 4

    .line 450
    invoke-static {}, Ljy/sdk/gamesdk/SdkApi;->getInstance()Ljy/sdk/gamesdk/SdkApi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljy/sdk/gamesdk/SdkApi;->exit(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IDialogListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected getChannelVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "3.0.8"

    return-object v0
.end method

.method public getJy_AppId()Ljava/lang/String;
    .registers 2

    .line 81
    invoke-super {p0}, Ljy/sdk/common/abs/AbsChannelSdk;->getJy_AppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJy_channelId()Ljava/lang/String;
    .registers 2

    .line 76
    invoke-super {p0}, Ljy/sdk/common/abs/AbsChannelSdk;->getJy_channelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJy_subChannelId()Ljava/lang/String;
    .registers 2

    .line 86
    invoke-super {p0}, Ljy/sdk/common/abs/AbsChannelSdk;->getJy_subChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMetaParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 582
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 583
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v0, ""

    const/4 v1, 0x0

    .line 587
    :try_start_9
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_47
    .catchall {:try_start_9 .. :try_end_e} :catchall_44

    .line 588
    :try_start_e
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 590
    :goto_12
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 591
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 592
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "../"

    .line 593
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_34

    .line 596
    :cond_2b
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2f} :catch_41
    .catchall {:try_start_e .. :try_end_2f} :catchall_3f

    if-nez v3, :cond_32

    goto :goto_12

    :cond_32
    move-object v0, v1

    goto :goto_12

    :cond_34
    :goto_34
    if-eqz v2, :cond_50

    .line 606
    :try_start_36
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_50

    :catch_3a
    move-exception p1

    .line 608
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    :catchall_3f
    move-exception p1

    goto :goto_51

    :catch_41
    move-exception p1

    move-object v1, v2

    goto :goto_48

    :catchall_44
    move-exception p1

    move-object v2, v1

    goto :goto_51

    :catch_47
    move-exception p1

    .line 602
    :goto_48
    :try_start_48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_44

    if-eqz v1, :cond_50

    .line 606
    :try_start_4d
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_3a

    :cond_50
    :goto_50
    return-object v0

    :goto_51
    if-eqz v2, :cond_5b

    :try_start_53
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception p2

    .line 608
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 611
    :cond_5b
    :goto_5b
    throw p1
.end method

.method public getProxy()Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;
    .registers 2

    .line 675
    new-instance v0, Ljy/sdk/channel/jy/Jy$6;

    invoke-direct {v0, p0}, Ljy/sdk/channel/jy/Jy$6;-><init>(Ljy/sdk/channel/jy/Jy;)V

    return-object v0
.end method

.method protected initChannel(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IinitListener;)V
    .registers 6

    .line 91
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK\u7248\u672c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljy/sdk/channel/jy/Jy;->getChannelVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Ljy/sdk/channel/jy/Jy$1;

    invoke-direct {v0, p0, p2, p1}, Ljy/sdk/channel/jy/Jy$1;-><init>(Ljy/sdk/channel/jy/Jy;Ljy/sdk/common/abs/innercallbacks/IinitListener;Landroid/app/Activity;)V

    iput-object v0, p0, Ljy/sdk/channel/jy/Jy;->iJyInitListener:Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;

    .line 111
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_5d

    const/4 p2, 0x1

    .line 112
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, p2, v0

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 113
    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_42

    .line 114
    sget-object p2, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    const-string v0, "\u5df2\u7ecf\u83b7\u5f97READ_PHONE_STATE\u6210\u529f"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0, p1}, Ljy/sdk/channel/jy/Jy;->initJYSDK(Landroid/app/Activity;)V

    goto :goto_60

    .line 117
    :cond_42
    iget v0, p0, Ljy/sdk/channel/jy/Jy;->permissionCode:I

    invoke-static {p1, p2, v0}, Ljy/sdk/common/utils/misc/PermissionUtils;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 119
    sget-object p1, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    const-string p2, "\u7533\u8bf7READ_PHONE_STATE\u6210\u529f\uff0c\u4e0d\u786e\u5b9a\u7ed3\u679c\uff0c\u7b49\u5f85\u6743\u9650\u56de\u8c03\u901a\u77e5"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 121
    :cond_52
    sget-object p2, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    const-string v0, "\u7533\u8bf7READ_PHONE_STATE\u5931\u8d25\uff0c\u4e0d\u786e\u5b9a\u7ed3\u679c"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0, p1}, Ljy/sdk/channel/jy/Jy;->initJYSDK(Landroid/app/Activity;)V

    goto :goto_60

    .line 126
    :cond_5d
    invoke-direct {p0, p1}, Ljy/sdk/channel/jy/Jy;->initJYSDK(Landroid/app/Activity;)V

    :goto_60
    return-void
.end method

.method protected loginChannel(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IloginStateListener;)V
    .registers 5

    .line 232
    invoke-static {}, Ljy/sdk/gamesdk/SdkApi;->getInstance()Ljy/sdk/gamesdk/SdkApi;

    move-result-object v0

    new-instance v1, Ljy/sdk/channel/jy/Jy$3;

    invoke-direct {v1, p0, p2, p1}, Ljy/sdk/channel/jy/Jy$3;-><init>(Ljy/sdk/channel/jy/Jy;Ljy/sdk/common/abs/innercallbacks/IloginStateListener;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1}, Ljy/sdk/gamesdk/SdkApi;->login(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;)V

    return-void
.end method

.method protected logoutChannel(Landroid/app/Activity;Z)V
    .registers 4

    .line 305
    invoke-static {}, Ljy/sdk/gamesdk/SdkApi;->getInstance()Ljy/sdk/gamesdk/SdkApi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljy/sdk/gamesdk/SdkApi;->logout(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 5

    return-void
.end method

.method public onAttachBaseContext(Landroid/app/Application;Landroid/content/Context;)V
    .registers 3

    return-void
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .registers 3

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .registers 3

    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .registers 3

    .line 540
    invoke-direct {p0, p1}, Ljy/sdk/channel/jy/Jy;->checkIsOpenTouTiao(Landroid/app/Application;)V

    .line 541
    invoke-static {}, Ljy/sdk/gamesdk/SdkApi;->getInstance()Ljy/sdk/gamesdk/SdkApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/gamesdk/SdkApi;->initInApplication(Landroid/app/Application;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 3

    .line 488
    invoke-static {}, Ljy/sdk/gamesdk/SdkApi;->getInstance()Ljy/sdk/gamesdk/SdkApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/gamesdk/SdkApi;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "jy_sdk"

    const-string v1, "onPause"

    .line 472
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-static {}, Ljy/sdk/gamesdk/SdkApi;->getInstance()Ljy/sdk/gamesdk/SdkApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/gamesdk/SdkApi;->onPause(Landroid/app/Activity;)V

    .line 474
    iget-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz v0, :cond_1c

    .line 475
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    const-string v1, "\u5934\u6761onPause\u4e8b\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->onPause(Landroid/content/Context;)V

    :cond_1c
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .registers 5

    const-string p2, "android.permission.READ_PHONE_STATE"

    .line 524
    invoke-virtual {p1, p2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_10

    .line 525
    sget-object p2, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    const-string p3, "\u5df2\u7ecf\u83b7\u5f97READ_PHONE_STATE\u6210\u529f\uff0c\u7528\u6237\u540c\u610f"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 527
    :cond_10
    sget-object p2, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    const-string p3, "\u672a\u83b7\u5f97READ_PHONE_STATE\uff0c\u7528\u6237\u4e0d\u540c\u610f"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_17
    invoke-direct {p0, p1}, Ljy/sdk/channel/jy/Jy;->initJYSDK(Landroid/app/Activity;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "jy_sdk"

    const-string v1, "onResume"

    .line 462
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-static {}, Ljy/sdk/gamesdk/SdkApi;->getInstance()Ljy/sdk/gamesdk/SdkApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/gamesdk/SdkApi;->onResume(Landroid/app/Activity;)V

    .line 464
    iget-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz v0, :cond_1c

    .line 465
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    const-string v1, "\u5934\u6761onResume\u4e8b\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->onResume(Landroid/content/Context;)V

    :cond_1c
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onTerminate(Landroid/app/Application;)V
    .registers 2

    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .registers 3

    return-void
.end method

.method protected payChannel(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;Ljy/sdk/common/abs/innercallbacks/IpayListener;)V
    .registers 6

    .line 426
    invoke-static {}, Ljy/sdk/gamesdk/SdkApi;->getInstance()Ljy/sdk/gamesdk/SdkApi;

    move-result-object v0

    new-instance v1, Ljy/sdk/channel/jy/Jy$5;

    invoke-direct {v1, p0, p3, p2}, Ljy/sdk/channel/jy/Jy$5;-><init>(Ljy/sdk/channel/jy/Jy;Ljy/sdk/common/abs/innercallbacks/IpayListener;Ljy/sdk/shell/proxy/JyPayParams;)V

    invoke-virtual {v0, p1, p2, v1}, Ljy/sdk/gamesdk/SdkApi;->pay(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;)V

    return-void
.end method

.method protected submitChannelData(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyUserExtraData;)V
    .registers 7

    .line 310
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getDataType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    .line 311
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getDataType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    goto :goto_29

    .line 327
    :cond_f
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getDataType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7f

    .line 328
    iget-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz v0, :cond_7f

    .line 329
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    const-string v1, "\u5934\u6761\u89d2\u8272\u5347\u7ea7\u4e8b\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getRoleLevel()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/applog/GameReportHelper;->onEventUpdateLevel(I)V

    goto :goto_7f

    .line 312
    :cond_29
    :goto_29
    iget-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz v0, :cond_7f

    .line 313
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    const-string v1, "\u5934\u6761\u521b\u5efa\u89d2\u8272\u4e8b\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getRoleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/applog/GameReportHelper;->onEventCreateGameRole(Ljava/lang/String;)V

    .line 315
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_40
    const-string v1, "roleName"

    .line 317
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getRoleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "roleId"

    .line 318
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getRoleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serverId"

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serverName"

    .line 320
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_75} :catch_76

    goto :goto_7a

    :catch_76
    move-exception v1

    .line 322
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7a
    const-string v1, "roleInfo"

    .line 324
    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 333
    :cond_7f
    :goto_7f
    iget-boolean v0, p0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz v0, :cond_9d

    .line 334
    sget-object v0, Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7528\u6237ID(2)\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getJyUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_9d
    invoke-static {}, Ljy/sdk/gamesdk/SdkApi;->getInstance()Ljy/sdk/gamesdk/SdkApi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljy/sdk/gamesdk/SdkApi;->submitData(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyUserExtraData;)V

    return-void
.end method
