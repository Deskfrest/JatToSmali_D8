.class public Ljy/sdk/shell/proxy/JyPlatformLifecycle;
.super Ljava/lang/Object;
.source "JyPlatformLifecycle.java"


# static fields
.field private static volatile instance:Ljy/sdk/shell/proxy/JyPlatformLifecycle;


# instance fields
.field private activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

.field private iAppication:Ljy/sdk/shell/callback/IApplication;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 134
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 136
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 138
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 139
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_14

    .line 140
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Ljy/sdk/shell/proxy/JyPlatformLifecycle;
    .registers 2

    .line 34
    sget-object v0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->instance:Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    if-nez v0, :cond_17

    .line 35
    const-class v0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    monitor-enter v0

    .line 36
    :try_start_7
    sget-object v1, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->instance:Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    if-nez v1, :cond_12

    .line 37
    new-instance v1, Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    invoke-direct {v1}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;-><init>()V

    sput-object v1, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->instance:Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    .line 39
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 41
    :cond_17
    :goto_17
    sget-object v0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->instance:Ljy/sdk/shell/proxy/JyPlatformLifecycle;

    return-object v0
.end method

.method private setActivityLife(Ljy/sdk/shell/module/ICommonInterface;)V
    .registers 4

    .line 77
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    if-nez v0, :cond_12

    const-string v0, "jy_sdk"

    const-string v1, "setActivityLife"

    .line 78
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljy/sdk/shell/callback/ActivityCallBacks;

    invoke-direct {v0}, Ljy/sdk/shell/callback/ActivityCallBacks;-><init>()V

    iput-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    .line 82
    :cond_12
    instance-of v0, p1, Ljy/sdk/shell/callback/IActivityCallback;

    if-eqz v0, :cond_24

    .line 83
    check-cast p1, Ljy/sdk/shell/callback/IActivityCallback;

    .line 84
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    invoke-virtual {v0, p1}, Ljy/sdk/shell/callback/ActivityCallBacks;->addActivityCallBack(Ljy/sdk/shell/callback/IActivityCallback;)V

    const-string p1, "jy_sdk"

    const-string v0, "setActivityLife addActivityCallBack"

    .line 85
    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method private setAppliactionLife(Landroid/app/Application;Landroid/content/Context;Ljy/sdk/shell/module/ICommonInterface;)V
    .registers 5

    .line 90
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->iAppication:Ljy/sdk/shell/callback/IApplication;

    if-nez v0, :cond_c

    instance-of v0, p3, Ljy/sdk/shell/callback/IApplication;

    if-eqz v0, :cond_c

    .line 91
    check-cast p3, Ljy/sdk/shell/callback/IApplication;

    iput-object p3, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->iAppication:Ljy/sdk/shell/callback/IApplication;

    .line 94
    :cond_c
    iget-object p3, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->iAppication:Ljy/sdk/shell/callback/IApplication;

    if-eqz p3, :cond_15

    .line 95
    iget-object p3, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->iAppication:Ljy/sdk/shell/callback/IApplication;

    invoke-interface {p3, p1, p2}, Ljy/sdk/shell/callback/IApplication;->onAttachBaseContext(Landroid/app/Application;Landroid/content/Context;)V

    :cond_15
    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 6

    .line 153
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    if-eqz v0, :cond_9

    .line 154
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljy/sdk/shell/callback/ActivityCallBacks;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_9
    return-void
.end method

.method public onApplicationAttachBaseContext(Landroid/app/Application;Landroid/content/Context;)V
    .registers 8

    const-string v0, "jy_sdk"

    const-string v1, "Application attachBaseContext"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {p1}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Ljy/sdk/shell/module/ModuleFactory;->getInstance()Ljy/sdk/shell/module/ModuleFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljy/sdk/shell/module/ModuleFactory;->getChannelModule(Landroid/content/Context;)Ljy/sdk/shell/module/ICommonInterface;

    move-result-object v0

    if-nez v0, :cond_1c

    const-string p1, "jy_sdk"

    const-string p2, "\u6e20\u9053sdk\u5bf9\u63a5\u5b9e\u4f8b\u5316\u5931\u8d25,channelModule is null"

    .line 63
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_1c
    invoke-interface {v0}, Ljy/sdk/shell/module/ICommonInterface;->getModuleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jy_sdk"

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6e20\u9053sdk\u5bf9\u63a5\u5b9e\u4f8b\u5316\u6210\u529f,\u7c7b\u540d:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0, p1, p2, v0}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->setAppliactionLife(Landroid/app/Application;Landroid/content/Context;Ljy/sdk/shell/module/ICommonInterface;)V

    .line 70
    invoke-direct {p0, v0}, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->setActivityLife(Ljy/sdk/shell/module/ICommonInterface;)V

    return-void
.end method

.method public onApplicationConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .registers 5

    const-string v0, "jy_sdk"

    const-string v1, "Application onConfigurationChanged"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->iAppication:Ljy/sdk/shell/callback/IApplication;

    if-eqz v0, :cond_10

    .line 102
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->iAppication:Ljy/sdk/shell/callback/IApplication;

    invoke-interface {v0, p1, p2}, Ljy/sdk/shell/callback/IApplication;->onConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V

    :cond_10
    return-void
.end method

.method public onApplicationCreate(Landroid/app/Application;)V
    .registers 4

    const-string v0, "jy_sdk"

    const-string v1, "Application onCreate"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->iAppication:Ljy/sdk/shell/callback/IApplication;

    if-eqz v0, :cond_10

    .line 111
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->iAppication:Ljy/sdk/shell/callback/IApplication;

    invoke-interface {v0, p1}, Ljy/sdk/shell/callback/IApplication;->onCreate(Landroid/app/Application;)V

    .line 118
    :cond_10
    invoke-static {p1}, Ljy/sdk/common/utils/misc/ResUtils;->init(Landroid/content/Context;)V

    .line 121
    sget-boolean v0, Ljy/sdk/common/ReleasePro;->SHOW_LOG:Z

    invoke-static {v0}, Ljy/sdk/common/utils/misc/FLogger;->init(Z)V

    .line 122
    invoke-static {p1}, Ljy/sdk/common/components/ChUtil;->initDex(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .registers 3

    .line 158
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    invoke-virtual {v0, p1}, Ljy/sdk/shell/callback/ActivityCallBacks;->onBackPressed(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .registers 4

    .line 163
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    if-eqz v0, :cond_9

    .line 164
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    invoke-virtual {v0, p1, p2}, Ljy/sdk/shell/callback/ActivityCallBacks;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    :cond_9
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 3

    .line 200
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    if-eqz v0, :cond_9

    .line 201
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    invoke-virtual {v0, p1}, Ljy/sdk/shell/callback/ActivityCallBacks;->onDestroy(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 4

    .line 183
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    if-eqz v0, :cond_9

    .line 184
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    invoke-virtual {v0, p1, p2}, Ljy/sdk/shell/callback/ActivityCallBacks;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_9
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 3

    .line 173
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    if-eqz v0, :cond_9

    .line 174
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    invoke-virtual {v0, p1}, Ljy/sdk/shell/callback/ActivityCallBacks;->onPause(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .registers 6

    .line 188
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    if-eqz v0, :cond_9

    .line 189
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljy/sdk/shell/callback/ActivityCallBacks;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    :cond_9
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 3

    .line 206
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    if-eqz v0, :cond_9

    .line 207
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    invoke-virtual {v0, p1}, Ljy/sdk/shell/callback/ActivityCallBacks;->onRestart(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3

    .line 178
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    if-eqz v0, :cond_9

    .line 179
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    invoke-virtual {v0, p1}, Ljy/sdk/shell/callback/ActivityCallBacks;->onResume(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 3

    .line 168
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    invoke-virtual {v0, p1}, Ljy/sdk/shell/callback/ActivityCallBacks;->onStart(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 3

    .line 194
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    if-eqz v0, :cond_9

    .line 195
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    invoke-virtual {v0, p1}, Ljy/sdk/shell/callback/ActivityCallBacks;->onStop(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method

.method public onTerminate(Landroid/app/Application;)V
    .registers 4

    const-string v0, "jy_sdk"

    const-string v1, "Application onTerminate"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->iAppication:Ljy/sdk/shell/callback/IApplication;

    if-eqz v0, :cond_10

    .line 128
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->iAppication:Ljy/sdk/shell/callback/IApplication;

    invoke-interface {v0, p1}, Ljy/sdk/shell/callback/IApplication;->onTerminate(Landroid/app/Application;)V

    :cond_10
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .registers 4

    .line 211
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    if-eqz v0, :cond_9

    .line 212
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPlatformLifecycle;->activityCallBacks:Ljy/sdk/shell/callback/ActivityCallBacks;

    invoke-virtual {v0, p1, p2}, Ljy/sdk/shell/callback/ActivityCallBacks;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    :cond_9
    return-void
.end method
