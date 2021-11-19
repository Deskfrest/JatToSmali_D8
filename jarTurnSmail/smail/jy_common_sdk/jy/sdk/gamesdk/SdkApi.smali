.class public Ljy/sdk/gamesdk/SdkApi;
.super Ljava/lang/Object;
.source "SdkApi.java"

# interfaces
.implements Ljy/sdk/gamesdk/ISdkApi;


# static fields
.field private static instance:Ljy/sdk/gamesdk/SdkApi;


# instance fields
.field private impl:Ljy/sdk/gamesdk/SdkApiImpl;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljy/sdk/gamesdk/SdkApiImpl;

    invoke-direct {v0}, Ljy/sdk/gamesdk/SdkApiImpl;-><init>()V

    iput-object v0, p0, Ljy/sdk/gamesdk/SdkApi;->impl:Ljy/sdk/gamesdk/SdkApiImpl;

    return-void
.end method

.method public static getInstance()Ljy/sdk/gamesdk/SdkApi;
    .registers 2

    .line 20
    sget-object v0, Ljy/sdk/gamesdk/SdkApi;->instance:Ljy/sdk/gamesdk/SdkApi;

    if-nez v0, :cond_17

    .line 21
    const-class v0, Ljy/sdk/gamesdk/SdkApi;

    monitor-enter v0

    .line 22
    :try_start_7
    sget-object v1, Ljy/sdk/gamesdk/SdkApi;->instance:Ljy/sdk/gamesdk/SdkApi;

    if-nez v1, :cond_12

    .line 23
    new-instance v1, Ljy/sdk/gamesdk/SdkApi;

    invoke-direct {v1}, Ljy/sdk/gamesdk/SdkApi;-><init>()V

    sput-object v1, Ljy/sdk/gamesdk/SdkApi;->instance:Ljy/sdk/gamesdk/SdkApi;

    .line 25
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 27
    :cond_17
    :goto_17
    sget-object v0, Ljy/sdk/gamesdk/SdkApi;->instance:Ljy/sdk/gamesdk/SdkApi;

    return-object v0
.end method


# virtual methods
.method public exit(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IDialogListener;)V
    .registers 4

    .line 53
    iget-object v0, p0, Ljy/sdk/gamesdk/SdkApi;->impl:Ljy/sdk/gamesdk/SdkApiImpl;

    invoke-virtual {v0, p1, p2}, Ljy/sdk/gamesdk/SdkApiImpl;->exit(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IDialogListener;)V

    return-void
.end method

.method public initInApplication(Landroid/app/Application;)V
    .registers 3

    .line 58
    iget-object v0, p0, Ljy/sdk/gamesdk/SdkApi;->impl:Ljy/sdk/gamesdk/SdkApiImpl;

    invoke-virtual {v0, p1}, Ljy/sdk/gamesdk/SdkApiImpl;->initInApplication(Landroid/app/Application;)V

    return-void
.end method

.method public initSdk(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;)V
    .registers 4

    .line 32
    iget-object v0, p0, Ljy/sdk/gamesdk/SdkApi;->impl:Ljy/sdk/gamesdk/SdkApiImpl;

    invoke-virtual {v0, p1, p2}, Ljy/sdk/gamesdk/SdkApiImpl;->initSdk(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;)V

    return-void
.end method

.method public login(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;)V
    .registers 4

    .line 63
    iget-object v0, p0, Ljy/sdk/gamesdk/SdkApi;->impl:Ljy/sdk/gamesdk/SdkApiImpl;

    invoke-virtual {v0, p1, p2}, Ljy/sdk/gamesdk/SdkApiImpl;->login(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;)V

    return-void
.end method

.method public logout(Landroid/app/Activity;Z)V
    .registers 4

    .line 38
    iget-object v0, p0, Ljy/sdk/gamesdk/SdkApi;->impl:Ljy/sdk/gamesdk/SdkApiImpl;

    invoke-virtual {v0, p1, p2}, Ljy/sdk/gamesdk/SdkApiImpl;->logout(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 3

    .line 75
    iget-object v0, p0, Ljy/sdk/gamesdk/SdkApi;->impl:Ljy/sdk/gamesdk/SdkApiImpl;

    invoke-virtual {v0, p1}, Ljy/sdk/gamesdk/SdkApiImpl;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 3

    .line 71
    iget-object v0, p0, Ljy/sdk/gamesdk/SdkApi;->impl:Ljy/sdk/gamesdk/SdkApiImpl;

    invoke-virtual {v0, p1}, Ljy/sdk/gamesdk/SdkApiImpl;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3

    .line 67
    iget-object v0, p0, Ljy/sdk/gamesdk/SdkApi;->impl:Ljy/sdk/gamesdk/SdkApiImpl;

    invoke-virtual {v0, p1}, Ljy/sdk/gamesdk/SdkApiImpl;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public pay(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;)V
    .registers 5

    .line 48
    iget-object v0, p0, Ljy/sdk/gamesdk/SdkApi;->impl:Ljy/sdk/gamesdk/SdkApiImpl;

    invoke-virtual {v0, p1, p2, p3}, Ljy/sdk/gamesdk/SdkApiImpl;->pay(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;)V

    return-void
.end method

.method public submitData(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyUserExtraData;)V
    .registers 4

    .line 43
    iget-object v0, p0, Ljy/sdk/gamesdk/SdkApi;->impl:Ljy/sdk/gamesdk/SdkApiImpl;

    invoke-virtual {v0, p1, p2}, Ljy/sdk/gamesdk/SdkApiImpl;->submitData(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyUserExtraData;)V

    return-void
.end method
