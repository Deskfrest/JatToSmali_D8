.class public Ljy/sdk/gamesdk/GameService;
.super Landroid/app/Service;
.source "GameService.java"


# static fields
.field private static final HT:I = 0x110

.field private static final NOTICE_NEW:I = 0x111

.field private static final NOTICE_NONE:I = 0x113

.field private static final NOTICE_OLD:I = 0x112

.field public static context:Landroid/content/Context;

.field public static currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

.field private static handler:Landroid/os/Handler;

.field public static initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

.field public static last_NoticeUnreadNum:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 344
    new-instance v0, Ljy/sdk/gamesdk/GameService$2;

    invoke-direct {v0}, Ljy/sdk/gamesdk/GameService$2;-><init>()V

    sput-object v0, Ljy/sdk/gamesdk/GameService;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .line 43
    sget-object v0, Ljy/sdk/gamesdk/GameService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static dologinedTask(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .line 505
    new-instance v0, Ljy/sdk/gamesdk/GameService$3;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/GameService$3;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 514
    invoke-static {}, Ljy/sdk/gamesdk/GameService;->startHt()V

    .line 516
    invoke-static {p0, p1}, Ljy/sdk/gamesdk/GameService;->getRealNameStatu(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static getAppToken(Landroid/app/Activity;)Ljava/lang/String;
    .registers 8

    const-string v0, "use_app_token"

    const/4 v1, 0x1

    .line 325
    invoke-static {p0, v0, v1}, Ljy/sdk/gamesdk/utils/SpUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_13

    const-string p0, "jy_sdk"

    const-string v0, "use app token? false"

    .line 326
    invoke-static {p0, v0}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_13
    const-string v0, "jy_sdk"

    const-string v1, "use app token? true"

    .line 329
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 332
    :try_start_1c
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "content://com.jy.game.TokenProvider/tokenInfo"

    .line 333
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 335
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4c

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "token"

    .line 336
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_46} :catch_48

    move-object v0, p0

    goto :goto_4c

    :catch_48
    move-exception p0

    .line 339
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4c
    :goto_4c
    return-object v0
.end method

.method public static getInitData(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;)V
    .registers 6

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ljy/sdk/gamesdk/GameService;->context:Landroid/content/Context;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jy_app_id"

    invoke-static {p0, v1}, Ljy/sdk/common/utils/misc/ManifestUtil;->getMetaInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljy/sdk/gamesdk/Global;->APP_ID:Ljava/lang/String;

    const-string v0, "jy_appkey"

    .line 106
    invoke-static {p0, v0}, Ljy/sdk/common/utils/misc/ManifestUtil;->getMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljy/sdk/gamesdk/Global;->APP_KEY:Ljava/lang/String;

    .line 108
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Ljy/sdk/gamesdk/GameService;->getAppToken(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljy/sdk/gamesdk/GameService$1;

    invoke-direct {v3, p1, p0}, Ljy/sdk/gamesdk/GameService$1;-><init>(Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2, v3}, Ljy/sdk/gamesdk/api/ApiClient;->sdkInit(Landroid/content/Context;Ljava/lang/String;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    return-void
.end method

.method private static getRealNameStatu(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 520
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    new-instance v1, Ljy/sdk/gamesdk/GameService$4;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/GameService$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p0, p1, v1}, Ljy/sdk/gamesdk/api/ApiClient;->sdkRealName(Landroid/app/Activity;Ljava/lang/String;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    return-void
.end method

.method public static onCpDestroy(Landroid/app/Activity;)V
    .registers 3

    .line 543
    :try_start_0
    sget-object v0, Ljy/sdk/gamesdk/GameService;->handler:Landroid/os/Handler;

    const/16 v1, 0x110

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 544
    sget-object v0, Ljy/sdk/gamesdk/GameService;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 545
    sput-object v1, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    const/4 v0, 0x0

    .line 546
    sput v0, Ljy/sdk/gamesdk/GameService;->last_NoticeUnreadNum:I

    .line 547
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->hide()V

    .line 548
    invoke-static {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->remove(Landroid/app/Activity;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p0

    .line 550
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d
    return-void
.end method

.method public static onCpLogout(Landroid/app/Activity;)V
    .registers 2

    .line 556
    new-instance v0, Ljy/sdk/gamesdk/GameService$5;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/GameService$5;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startHt()V
    .registers 5

    .line 495
    sget-object v0, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget v0, Ljy/sdk/gamesdk/entity/InitInfo;->ht:I

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    if-gtz v0, :cond_d

    const v0, 0xea60

    .line 500
    :cond_d
    sget-object v1, Ljy/sdk/gamesdk/GameService;->handler:Landroid/os/Handler;

    const/16 v2, 0x110

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static syncUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    .line 66
    new-instance v0, Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-direct {v0}, Ljy/sdk/gamesdk/entity/UserInfo;-><init>()V

    .line 67
    invoke-virtual {v0, p3}, Ljy/sdk/gamesdk/entity/UserInfo;->setSid(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p1}, Ljy/sdk/gamesdk/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p2}, Ljy/sdk/gamesdk/entity/UserInfo;->setPassword(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ljy/sdk/gamesdk/db/UserDbUtils;->getInstance()Ljy/sdk/gamesdk/db/UserDbUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljy/sdk/gamesdk/db/UserDbUtils;->queryByUsername(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "jy_sdk"

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "store the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " into db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Ljy/sdk/gamesdk/db/UserDbUtils;->getInstance()Ljy/sdk/gamesdk/db/UserDbUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljy/sdk/gamesdk/db/UserDbUtils;->addUser(Ljy/sdk/gamesdk/entity/UserInfo;)V

    goto :goto_5e

    :cond_3b
    const-string v1, "jy_sdk"

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "should not store the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 79
    invoke-static {}, Ljy/sdk/gamesdk/db/UserDbUtils;->getInstance()Ljy/sdk/gamesdk/db/UserDbUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljy/sdk/gamesdk/db/UserDbUtils;->updateUserPass(Ljy/sdk/gamesdk/entity/UserInfo;)V

    .line 83
    :cond_5e
    :goto_5e
    sput-object v0, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    const-string v0, "last_user_name"

    .line 87
    invoke-static {p0, v0, p1}, Ljy/sdk/gamesdk/utils/SpUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "last_user_pass"

    .line 88
    invoke-static {p0, v0, p2}, Ljy/sdk/gamesdk/utils/SpUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_76
    if-nez p4, :cond_7c

    const-string p3, ""

    const-string p1, ""

    :cond_7c
    const-string p2, "last_sid"

    .line 97
    invoke-static {p0, p2, p3}, Ljy/sdk/gamesdk/utils/SpUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "last_sid_username"

    .line 98
    invoke-static {p0, p2, p1}, Ljy/sdk/gamesdk/utils/SpUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "auto_login_check"

    .line 99
    invoke-static {p0, p1, p4}, Ljy/sdk/gamesdk/utils/SpUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .registers 1

    .line 566
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
