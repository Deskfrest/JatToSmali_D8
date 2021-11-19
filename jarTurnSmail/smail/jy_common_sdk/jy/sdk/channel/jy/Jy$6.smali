.class Ljy/sdk/channel/jy/Jy$6;
.super Ljava/lang/Object;
.source "Jy.java"

# interfaces
.implements Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/channel/jy/Jy;->getProxy()Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/channel/jy/Jy;


# direct methods
.method constructor <init>(Ljy/sdk/channel/jy/Jy;)V
    .registers 2

    .line 675
    iput-object p1, p0, Ljy/sdk/channel/jy/Jy$6;->this$0:Ljy/sdk/channel/jy/Jy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public welcomeActivityOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 5

    return-void
.end method

.method public welcomeActivityOnConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .registers 3

    return-void
.end method

.method public welcomeActivityOnCreate(Landroid/app/Activity;Ljy/sdk/shell/callback/ICommonCallBack;)V
    .registers 3

    return-void
.end method

.method public welcomeActivityOnDestroy(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public welcomeActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3

    return-void
.end method

.method public welcomeActivityOnPause(Landroid/app/Activity;)V
    .registers 4

    .line 718
    iget-object v0, p0, Ljy/sdk/channel/jy/Jy$6;->this$0:Ljy/sdk/channel/jy/Jy;

    iget-boolean v0, v0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz v0, :cond_12

    .line 719
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5934\u6761onPause\u4e8b\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->onPause(Landroid/content/Context;)V

    :cond_12
    return-void
.end method

.method public welcomeActivityOnRequestPermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .registers 5

    return-void
.end method

.method public welcomeActivityOnRestart(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public welcomeActivityOnResume(Landroid/app/Activity;)V
    .registers 4

    .line 697
    iget-object v0, p0, Ljy/sdk/channel/jy/Jy$6;->this$0:Ljy/sdk/channel/jy/Jy;

    iget-boolean v0, v0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz v0, :cond_12

    .line 698
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$1700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5934\u6761onResume\u4e8b\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->onResume(Landroid/content/Context;)V

    :cond_12
    return-void
.end method

.method public welcomeActivityOnStart(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public welcomeActivityOnStop(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public welcomeActivityOnWindowFocusChanged(Landroid/app/Activity;Z)V
    .registers 3

    return-void
.end method
