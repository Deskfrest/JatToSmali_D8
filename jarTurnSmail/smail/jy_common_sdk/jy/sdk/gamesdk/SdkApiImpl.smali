.class public Ljy/sdk/gamesdk/SdkApiImpl;
.super Ljava/lang/Object;
.source "SdkApiImpl.java"

# interfaces
.implements Ljy/sdk/gamesdk/ISdkApi;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkManifest(Landroid/app/Activity;)Ljava/lang/String;
    .registers 10

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    :try_start_5
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 62
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.liulishuo.okdownload.OkDownloadProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 63
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jy.sdk.gamesdk.update.JyFileProvider"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    const-string v3, "jy_sdk"

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u83b7\u53d6\u7684\u5305\u540d\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_47

    const/4 v7, 0x1

    goto :goto_48

    :cond_47
    const/4 v7, 0x0

    :goto_48
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_53

    const/4 v5, 0x1

    :cond_53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_60

    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_62

    :cond_60
    const-string v5, "okDownloadProvider.authority"

    :goto_62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6f

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_71

    :cond_6f
    const-string v5, "jyFileProvider.authority"

    :goto_71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-static {v3, v4}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".com.liulishuo.okdownload"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    const-string v2, "|AndroidManifest\u4e2dcom.liulishuo.okdownload.OkDownloadProvider\u7684android:authorities\u914d\u7f6e\u9519\u8bef|"

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :cond_9d
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jyfileprovider"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fc

    const-string p1, "|AndroidManifest\u4e2djy.sdk.gamesdk.update.JyFileProvider\u7684android:authorities\u914d\u7f6e\u9519\u8bef|"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_bf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_bf} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_bf} :catch_c0

    goto :goto_fc

    :catch_c0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "jy_sdk"

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fc

    :catch_d2
    move-exception p1

    .line 78
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OkDownloadProvider"

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e5

    const-string p1, "|AndroidManifest\u672a\u914d\u7f6ecom.liulishuo.okdownload.OkDownloadProvider|"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_fc

    :cond_e5
    const-string v2, "JyFileProvider"

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f3

    const-string p1, "|AndroidManifest\u672a\u914d\u7f6ejy.sdk.gamesdk.update.JyFileProvider|"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_fc

    :cond_f3
    const-string v1, "jy_sdk"

    .line 84
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_fc
    :goto_fc
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public exit(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IDialogListener;)V
    .registers 4

    .line 137
    new-instance v0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/ExitDialogFragment;-><init>()V

    .line 138
    invoke-virtual {v0, p2}, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->setDialogListener(Ljy/sdk/common/abs/innercallbacks/IDialogListener;)V

    const/4 p2, 0x1

    .line 139
    invoke-virtual {v0, p2}, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->setCanceledOnTouchOutside(Z)V

    .line 140
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "SdkApiImpl"

    invoke-virtual {v0, p1, p2}, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public initInApplication(Landroid/app/Application;)V
    .registers 2

    .line 148
    invoke-static {p1}, Ljy/sdk/gamesdk/utils/ApkAdChecker;->init(Landroid/content/Context;)V

    .line 149
    invoke-static {}, Ljy/sdk/gamesdk/utils/ApkAdChecker;->getInstance()Ljy/sdk/gamesdk/utils/ApkAdChecker;

    move-result-object p1

    invoke-virtual {p1}, Ljy/sdk/gamesdk/utils/ApkAdChecker;->startTask()V

    return-void
.end method

.method public initSdk(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/SdkApiImpl;->checkManifest(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 37
    invoke-interface {p2, v0}, Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;->initFailed(Ljava/lang/String;)V

    return-void

    .line 40
    :cond_e
    invoke-static {p1}, Ljy/sdk/gamesdk/db/UserDbUtils;->init(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljy/sdk/gamesdk/GameService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    invoke-static {p1, p2}, Ljy/sdk/gamesdk/GameService;->getInitData(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;)V

    const/4 p2, 0x1

    .line 44
    :try_start_1f
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    sput v0, Ljy/sdk/gamesdk/Global;->GAME_ORITATION:I

    const-string v0, "jy_sdk"

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ori:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Ljy/sdk/gamesdk/Global;->GAME_ORITATION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_47} :catch_48

    goto :goto_5f

    :catch_48
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "jy_sdk"

    const-string v1, "ori error"

    .line 48
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Ljy/sdk/common/utils/misc/UIUtil;->isOritationVertical(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 50
    sput p2, Ljy/sdk/gamesdk/Global;->GAME_ORITATION:I

    goto :goto_5f

    :cond_5c
    const/4 p1, 0x0

    .line 52
    sput p1, Ljy/sdk/gamesdk/Global;->GAME_ORITATION:I

    :goto_5f
    return-void
.end method

.method public login(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;)V
    .registers 3

    .line 98
    invoke-static {p1, p2}, Ljy/sdk/gamesdk/activity/LoginActivity;->showLoginView(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;)V

    return-void
.end method

.method public logout(Landroid/app/Activity;Z)V
    .registers 3

    .line 104
    invoke-static {p2}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLogout(Z)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 4

    .line 163
    invoke-static {p1}, Ljy/sdk/gamesdk/GameService;->onCpDestroy(Landroid/app/Activity;)V

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljy/sdk/gamesdk/GameService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public pay(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;)V
    .registers 6

    .line 122
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyPayParams;->getJyOrder()Ljy/sdk/common/bean/JyOrder;

    move-result-object v0

    invoke-virtual {v0}, Ljy/sdk/common/bean/JyOrder;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 123
    sget-object v1, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    if-nez v1, :cond_14

    const-string p1, "jy_sdk"

    const-string p2, "currentUser is null"

    .line 124
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_14
    sget-object v1, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-virtual {v1}, Ljy/sdk/gamesdk/entity/UserInfo;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_33

    .line 131
    :cond_27
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkGetOrderUrl(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0, p3}, Ljy/sdk/gamesdk/activity/PayActivity;->showPayView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;)V

    return-void

    :cond_33
    :goto_33
    const-string p1, "jy_sdk"

    const-string p2, "sid or jyOrder is empty"

    .line 128
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public submitData(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyUserExtraData;)V
    .registers 5

    .line 110
    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getDataType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getDataType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    invoke-virtual {p2}, Ljy/sdk/shell/proxy/JyUserExtraData;->getDataType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 111
    :cond_15
    sget-object v0, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    if-eqz v0, :cond_1e

    .line 112
    sget-object v0, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-virtual {v0, p2}, Ljy/sdk/gamesdk/entity/UserInfo;->setExtraData(Ljy/sdk/shell/proxy/JyUserExtraData;)V

    .line 114
    :cond_1e
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ljy/sdk/gamesdk/api/ApiClient;->sdkRecordRoleInfo(Landroid/content/Context;Ljy/sdk/shell/proxy/JyUserExtraData;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    :cond_2a
    return-void
.end method
