.class public Ljy/sdk/shell/proxy/JyCommonSdk;
.super Ljava/lang/Object;
.source "JyCommonSdk.java"


# static fields
.field private static channelModule:Ljy/sdk/shell/module/ICommonInterface;

.field private static volatile instance:Ljy/sdk/shell/proxy/JyCommonSdk;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljy/sdk/shell/proxy/JyCommonSdk;
    .registers 2

    .line 25
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->instance:Ljy/sdk/shell/proxy/JyCommonSdk;

    if-nez v0, :cond_17

    .line 26
    const-class v0, Ljy/sdk/shell/proxy/JyCommonSdk;

    monitor-enter v0

    .line 27
    :try_start_7
    sget-object v1, Ljy/sdk/shell/proxy/JyCommonSdk;->instance:Ljy/sdk/shell/proxy/JyCommonSdk;

    if-nez v1, :cond_12

    .line 28
    new-instance v1, Ljy/sdk/shell/proxy/JyCommonSdk;

    invoke-direct {v1}, Ljy/sdk/shell/proxy/JyCommonSdk;-><init>()V

    sput-object v1, Ljy/sdk/shell/proxy/JyCommonSdk;->instance:Ljy/sdk/shell/proxy/JyCommonSdk;

    .line 30
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 32
    :cond_17
    :goto_17
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->instance:Ljy/sdk/shell/proxy/JyCommonSdk;

    return-object v0
.end method


# virtual methods
.method public jyExit(Landroid/app/Activity;)V
    .registers 3

    .line 60
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    if-nez v0, :cond_c

    const-string p1, "jy_sdk"

    const-string v0, "jyCommonsdk -> jyExit,channelModule == null"

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 64
    :cond_c
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    invoke-interface {v0, p1}, Ljy/sdk/shell/module/ICommonInterface;->exit(Landroid/app/Activity;)V

    return-void
.end method

.method public jyInit(Landroid/app/Activity;Ljy/sdk/shell/callback/ISdkListener;)V
    .registers 4

    if-nez p1, :cond_a

    const-string p1, "jy_sdk"

    const-string p2, "jyCommonsdk -> jyInit, activity \u53c2\u6570\u4e3a\u7a7a!"

    .line 44
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    if-nez p2, :cond_14

    const-string p1, "jy_sdk"

    const-string p2, "jyCommonsdk -> jyInit listener \u53c2\u6570\u4e3a\u7a7a!"

    .line 48
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_14
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    if-nez v0, :cond_1e

    const-string p1, "\u62c9\u8d77 \u6e20\u9053sdk\u5931\u8d25"

    .line 53
    invoke-interface {p2, p1}, Ljy/sdk/shell/callback/ISdkListener;->initFailed(Ljava/lang/String;)V

    return-void

    .line 56
    :cond_1e
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    invoke-interface {v0, p1, p2}, Ljy/sdk/shell/module/ICommonInterface;->initModule(Landroid/app/Activity;Ljy/sdk/shell/callback/ISdkListener;)V

    return-void
.end method

.method public jyLogin(Landroid/app/Activity;)V
    .registers 3

    .line 68
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    if-nez v0, :cond_c

    const-string p1, "jy_sdk"

    const-string v0, "jyCommonsdk -> jyLogin,channelModule == null"

    .line 69
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_c
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    invoke-interface {v0, p1}, Ljy/sdk/shell/module/ICommonInterface;->login(Landroid/app/Activity;)V

    return-void
.end method

.method public jyLogout(Landroid/app/Activity;Z)V
    .registers 4

    .line 76
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    if-nez v0, :cond_c

    const-string p1, "jy_sdk"

    const-string p2, "jyCommonsdk -> jyLogout,channelModule == null"

    .line 77
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_c
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    invoke-interface {v0, p1, p2}, Ljy/sdk/shell/module/ICommonInterface;->logout(Landroid/app/Activity;Z)V

    return-void
.end method

.method public jyPay(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;)V
    .registers 4

    if-nez p2, :cond_a

    const-string p1, "jy_sdk"

    const-string p2, "jyCommonsdk -> jyPay,\u53c2\u6570\u4e3a\u7a7a!"

    .line 99
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_a
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    if-nez v0, :cond_16

    const-string p1, "jy_sdk"

    const-string p2, "jyCommonsdk -> jyPay,channelModule == null"

    .line 103
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_16
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    invoke-interface {v0, p1, p2}, Ljy/sdk/shell/module/ICommonInterface;->pay(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;)V

    return-void
.end method

.method public jySubmitData(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyUserExtraData;)V
    .registers 4

    if-nez p2, :cond_a

    const-string p1, "jy_sdk"

    const-string p2, "jyCommonsdk -> jySubmitData,\u53c2\u6570\u4e3a\u7a7a!"

    .line 86
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_a
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    if-nez v0, :cond_16

    const-string p1, "jy_sdk"

    const-string p2, "jyCommonsdk -> jySubmitData,channelModule == null"

    .line 90
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 94
    :cond_16
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    invoke-interface {v0, p1, p2}, Ljy/sdk/shell/module/ICommonInterface;->submitData(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyUserExtraData;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 6

    .line 139
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onApplicationAttachBaseContextInApplication(Landroid/app/Application;Landroid/content/Context;)V
    .registers 4

    .line 116
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onApplicationAttachBaseContext(Landroid/app/Application;Landroid/content/Context;)V

    return-void
.end method

.method public onApplicationConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .registers 4

    .line 126
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onApplicationConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onApplicationCreate(Landroid/app/Application;)V
    .registers 3

    .line 120
    invoke-static {}, Ljy/sdk/shell/module/ModuleFactory;->getInstance()Ljy/sdk/shell/module/ModuleFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/shell/module/ModuleFactory;->getChannelModule(Landroid/content/Context;)Ljy/sdk/shell/module/ICommonInterface;

    move-result-object v0

    sput-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    .line 121
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onApplicationCreate(Landroid/app/Application;)V

    return-void
.end method

.method public onApplicationTerminate(Landroid/app/Application;)V
    .registers 3

    .line 131
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onTerminate(Landroid/app/Application;)V

    return-void
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .registers 3

    .line 143
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onBackPressed(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .registers 4

    .line 147
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 3

    .line 176
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 4

    .line 164
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 3

    .line 155
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .registers 6

    .line 168
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 3

    .line 180
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onRestart(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3

    .line 160
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 3

    .line 151
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 3

    .line 172
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onStop(Landroid/app/Activity;)V

    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .registers 4

    .line 184
    invoke-static {}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    return-void
.end method

.method public optcApi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 190
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    if-eqz v0, :cond_31

    .line 192
    :try_start_4
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    invoke-interface {v0}, Ljy/sdk/shell/module/ICommonInterface;->getModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 193
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 194
    sget-object v0, Ljy/sdk/shell/proxy/JyCommonSdk;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_24

    goto :goto_31

    :catch_24
    move-exception p1

    const-string p2, "jy_sdk"

    const-string v0, "\u6267\u884c\u6e20\u9053\u7279\u6b8aapi\u5f02\u5e38"

    .line 196
    invoke-static {p2, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "jy_sdk"

    .line 197
    invoke-static {p2, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    return-void
.end method
