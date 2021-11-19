.class public abstract Ljy/sdk/common/abs/AbsChannelSdk;
.super Ljava/lang/Object;
.source "AbsChannelSdk.java"

# interfaces
.implements Ljy/sdk/shell/module/ICommonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;
    }
.end annotation


# static fields
.field protected static TAG:Ljava/lang/String; = "jy_sdk"

.field protected static final TYPE_CHA_PAY:I = 0xc8

.field private static final TYPE_PAY_CHANNEL:I = 0x12c


# instance fields
.field private activity:Landroid/app/Activity;

.field protected app_id:Ljava/lang/String;

.field protected appkey:Ljava/lang/String;

.field protected channelId:Ljava/lang/String;

.field protected channelInfo:Ljava/lang/String;

.field protected channel_version:Ljava/lang/String;

.field private globalListener:Ljy/sdk/shell/callback/ISdkListener;

.field private hasInit:Z

.field private hasLogin:Z

.field private iloginStateListener:Ljy/sdk/common/abs/innercallbacks/IloginStateListener;

.field private initListener:Ljy/sdk/common/abs/innercallbacks/IinitListener;

.field private mHandler:Landroid/os/Handler;

.field private moduleName:Ljava/lang/String;

.field protected subChannelId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->hasInit:Z

    .line 87
    new-instance v1, Ljy/sdk/common/abs/AbsChannelSdk$1;

    invoke-direct {v1, p0}, Ljy/sdk/common/abs/AbsChannelSdk$1;-><init>(Ljy/sdk/common/abs/AbsChannelSdk;)V

    iput-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk;->initListener:Ljy/sdk/common/abs/innercallbacks/IinitListener;

    .line 125
    iput-boolean v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->hasLogin:Z

    .line 142
    new-instance v0, Ljy/sdk/common/abs/AbsChannelSdk$2;

    invoke-direct {v0, p0}, Ljy/sdk/common/abs/AbsChannelSdk$2;-><init>(Ljy/sdk/common/abs/AbsChannelSdk;)V

    iput-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->iloginStateListener:Ljy/sdk/common/abs/innercallbacks/IloginStateListener;

    .line 272
    new-instance v0, Ljy/sdk/common/abs/AbsChannelSdk$3;

    invoke-direct {v0, p0}, Ljy/sdk/common/abs/AbsChannelSdk$3;-><init>(Ljy/sdk/common/abs/AbsChannelSdk;)V

    iput-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Ljy/sdk/common/abs/AbsChannelSdk;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Ljy/sdk/common/abs/AbsChannelSdk;->hasInit:Z

    return p1
.end method

.method static synthetic access$100(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/app/Activity;
    .registers 1

    .line 32
    iget-object p0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Ljy/sdk/common/abs/AbsChannelSdk;)Ljy/sdk/shell/callback/ISdkListener;
    .registers 1

    .line 32
    iget-object p0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->globalListener:Ljy/sdk/shell/callback/ISdkListener;

    return-object p0
.end method

.method static synthetic access$302(Ljy/sdk/common/abs/AbsChannelSdk;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Ljy/sdk/common/abs/AbsChannelSdk;->hasLogin:Z

    return p1
.end method

.method static synthetic access$400(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/os/Handler;
    .registers 1

    .line 32
    iget-object p0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initParam()V
    .registers 4

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;

    const-string v2, "jy_app_id"

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/ManifestUtil;->getMetaInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->app_id:Ljava/lang/String;

    .line 536
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;

    const-string v1, "jy_appkey"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/ManifestUtil;->getMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->appkey:Ljava/lang/String;

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;

    const-string v2, "jy_channelId"

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/ManifestUtil;->getMetaInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->channelId:Ljava/lang/String;

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;

    const-string v2, "jy_subChannelId"

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/ManifestUtil;->getMetaInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->subChannelId:Ljava/lang/String;

    .line 539
    invoke-virtual {p0}, Ljy/sdk/common/abs/AbsChannelSdk;->getChannelVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->channel_version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final exit(Landroid/app/Activity;)V
    .registers 9

    .line 481
    new-instance v5, Ljy/sdk/common/abs/AbsChannelSdk$5;

    invoke-direct {v5, p0, p1}, Ljy/sdk/common/abs/AbsChannelSdk$5;-><init>(Ljy/sdk/common/abs/AbsChannelSdk;Landroid/app/Activity;)V

    .line 506
    iget-boolean v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->hasInit:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1, v5}, Ljy/sdk/common/abs/AbsChannelSdk;->exitChannel(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IDialogListener;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 507
    :cond_f
    new-instance v6, Ljy/sdk/common/ui/NoticeDialog;

    const-string v2, "\u786e\u8ba4\u9000\u51fa"

    const-string v3, "\u7ee7\u7eed\u6e38\u620f"

    const-string v4, "\u9000\u51fa\u6e38\u620f"

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljy/sdk/common/ui/NoticeDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljy/sdk/common/abs/innercallbacks/IDialogListener;)V

    const/4 p1, 0x3

    invoke-virtual {v6, p1}, Ljy/sdk/common/ui/NoticeDialog;->show(I)V

    :cond_20
    return-void
.end method

.method protected abstract exitChannel(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IDialogListener;)Z
.end method

.method protected getChannelOrderSpecialParam(Ljy/sdk/shell/proxy/JyPayParams;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljy/sdk/shell/proxy/JyPayParams;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getChannelVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "1.0.0"

    return-object v0
.end method

.method public getJy_AppId()Ljava/lang/String;
    .registers 2

    .line 552
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getJy_channelId()Ljava/lang/String;
    .registers 2

    .line 548
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getJy_subChannelId()Ljava/lang/String;
    .registers 2

    .line 556
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->subChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .registers 2

    .line 526
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract initChannel(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IinitListener;)V
.end method

.method public initModule(Landroid/app/Activity;Ljy/sdk/shell/callback/ISdkListener;)V
    .registers 6

    .line 71
    :try_start_0
    iput-object p2, p0, Ljy/sdk/common/abs/AbsChannelSdk;->globalListener:Ljy/sdk/shell/callback/ISdkListener;

    .line 72
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;

    .line 73
    invoke-direct {p0}, Ljy/sdk/common/abs/AbsChannelSdk;->initParam()V

    .line 74
    iget-object p2, p0, Ljy/sdk/common/abs/AbsChannelSdk;->initListener:Ljy/sdk/common/abs/innercallbacks/IinitListener;

    invoke-virtual {p0, p1, p2}, Ljy/sdk/common/abs/AbsChannelSdk;->initChannel(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IinitListener;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_45

    :catch_d
    move-exception p2

    .line 76
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " init error... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u521d\u59cb\u5316\u5f02\u5e38."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_45
    return-void
.end method

.method public final login(Landroid/app/Activity;)V
    .registers 4

    .line 130
    iget-boolean v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->hasInit:Z

    if-nez v0, :cond_a

    const-string v0, "\u521d\u59cb\u5316\u672a\u5b8c\u6210..."

    .line 131
    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 134
    :cond_a
    iget-boolean v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->hasLogin:Z

    if-eqz v0, :cond_16

    .line 135
    sget-object p1, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v0, "\u5df2\u5904\u4e8e\u767b\u5f55\u72b6\u6001..."

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_16
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "start loginChannel!"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->iloginStateListener:Ljy/sdk/common/abs/innercallbacks/IloginStateListener;

    invoke-virtual {p0, p1, v0}, Ljy/sdk/common/abs/AbsChannelSdk;->loginChannel(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IloginStateListener;)V

    return-void
.end method

.method protected abstract loginChannel(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IloginStateListener;)V
.end method

.method public final logout(Landroid/app/Activity;Z)V
    .registers 5

    .line 221
    iget-boolean v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->hasLogin:Z

    if-nez v0, :cond_c

    .line 222
    sget-object p1, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string p2, "\u8fd8\u672a\u767b\u5f55!"

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 225
    :cond_c
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "\u5f00\u59cb\u6e20\u9053sdk\u767b\u51fa..."

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, p1, p2}, Ljy/sdk/common/abs/AbsChannelSdk;->logoutChannel(Landroid/app/Activity;Z)V

    return-void
.end method

.method protected abstract logoutChannel(Landroid/app/Activity;Z)V
.end method

.method public final pay(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;)V
    .registers 5

    .line 304
    iget-boolean v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->hasInit:Z

    if-nez v0, :cond_11

    const-string p2, "\u672a\u521d\u59cb\u5316\u6210\u529f\uff0c\u505c\u6b62\u652f\u4ed8!"

    .line 305
    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 306
    sget-object p1, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string p2, "\u672a\u521d\u59cb\u5316\u6210\u529f,\u505c\u6b62\u652f\u4ed8!"

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 309
    :cond_11
    iget-boolean v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->hasLogin:Z

    if-nez v0, :cond_22

    const-string p2, "\u672a\u767b\u5f55\u6210\u529f\uff0c\u505c\u6b62\u652f\u4ed8!"

    .line 310
    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 311
    sget-object p1, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string p2, "\u672a\u767b\u5f55\u6210\u529f,\u505c\u6b62\u652f\u4ed8!"

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 314
    :cond_22
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->channelInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 315
    sget-object p1, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string p2, "channelInfo is null !"

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 319
    :cond_32
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyPayParams;->getJyUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 320
    sget-object p1, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string p2, "uid is empty !"

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 324
    :cond_44
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyPayParams;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 325
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "extension is empty !"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_55
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyPayParams;->getProductName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 328
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "productName is empty !"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyPayParams;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 332
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "serverName is empty !"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_88
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyPayParams;->getRoleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 335
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "roleId is empty !"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_99
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyPayParams;->getRoleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 338
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "roleName is empty !"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_aa
    invoke-static {}, Ljy/sdk/common/utils/misc/ThreadManager;->getInstance()Ljy/sdk/common/utils/misc/ThreadManager;

    move-result-object v0

    new-instance v1, Ljy/sdk/common/abs/AbsChannelSdk$4;

    invoke-direct {v1, p0, p2, p1}, Ljy/sdk/common/abs/AbsChannelSdk$4;-><init>(Ljy/sdk/common/abs/AbsChannelSdk;Ljy/sdk/shell/proxy/JyPayParams;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ThreadManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract payChannel(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;Ljy/sdk/common/abs/innercallbacks/IpayListener;)V
.end method

.method public setModuleName(Ljava/lang/String;)V
    .registers 2

    .line 531
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk;->moduleName:Ljava/lang/String;

    return-void
.end method

.method protected abstract submitChannelData(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyUserExtraData;)V
.end method

.method public final submitData(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyUserExtraData;)V
    .registers 5

    .line 239
    iget-boolean v0, p0, Ljy/sdk/common/abs/AbsChannelSdk;->hasInit:Z

    if-nez v0, :cond_c

    .line 240
    sget-object p1, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string p2, "has not init "

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 243
    :cond_c
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getJyUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 244
    sget-object p1, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string p2, "uid is empty !"

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 248
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 249
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "serverName is empty !"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_40
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getRoleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 252
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "roleId is empty !"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_51
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getRoleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 255
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "roleName is empty !"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_62
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "start submitChannelData!"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, p1, p2}, Ljy/sdk/common/abs/AbsChannelSdk;->submitChannelData(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyUserExtraData;)V

    return-void
.end method
