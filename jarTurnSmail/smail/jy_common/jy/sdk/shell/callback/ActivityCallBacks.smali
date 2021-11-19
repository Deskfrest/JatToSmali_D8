.class public Ljy/sdk/shell/callback/ActivityCallBacks;
.super Ljava/lang/Object;
.source "ActivityCallBacks.java"

# interfaces
.implements Ljy/sdk/shell/callback/IActivityCallback;


# instance fields
.field private activityCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljy/sdk/shell/callback/IActivityCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addActivityCallBack(Ljy/sdk/shell/callback/IActivityCallback;)V
    .registers 3

    .line 32
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    .line 35
    :cond_b
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz p1, :cond_1a

    .line 36
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 8

    .line 42
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 43
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy/sdk/shell/callback/IActivityCallback;

    .line 45
    :try_start_16
    invoke-interface {v1, p1, p2, p3, p4}, Ljy/sdk/shell/callback/IActivityCallback;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v1

    const-string v2, "jy_sdk"

    .line 47
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    return-void
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .registers 5

    .line 55
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 56
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy/sdk/shell/callback/IActivityCallback;

    .line 58
    :try_start_16
    invoke-interface {v1, p1}, Ljy/sdk/shell/callback/IActivityCallback;->onBackPressed(Landroid/app/Activity;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v1

    const-string v2, "jy_sdk"

    .line 60
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .registers 6

    .line 68
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 69
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy/sdk/shell/callback/IActivityCallback;

    .line 71
    :try_start_16
    invoke-interface {v1, p1, p2}, Ljy/sdk/shell/callback/IActivityCallback;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v1

    const-string v2, "jy_sdk"

    .line 73
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 5

    .line 163
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 164
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy/sdk/shell/callback/IActivityCallback;

    .line 166
    :try_start_16
    invoke-interface {v1, p1}, Ljy/sdk/shell/callback/IActivityCallback;->onDestroy(Landroid/app/Activity;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v1

    const-string v2, "jy_sdk"

    .line 168
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 6

    .line 122
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 123
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy/sdk/shell/callback/IActivityCallback;

    .line 125
    :try_start_16
    invoke-interface {v1, p1, p2}, Ljy/sdk/shell/callback/IActivityCallback;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v1

    const-string v2, "jy_sdk"

    .line 127
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 5

    .line 96
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 97
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy/sdk/shell/callback/IActivityCallback;

    .line 99
    :try_start_16
    invoke-interface {v1, p1}, Ljy/sdk/shell/callback/IActivityCallback;->onPause(Landroid/app/Activity;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v1

    const-string v2, "jy_sdk"

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .registers 8

    .line 136
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 137
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy/sdk/shell/callback/IActivityCallback;

    .line 139
    :try_start_16
    invoke-interface {v1, p1, p2, p3, p4}, Ljy/sdk/shell/callback/IActivityCallback;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v1

    const-string v2, "jy_sdk"

    .line 141
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 5

    .line 177
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 178
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy/sdk/shell/callback/IActivityCallback;

    .line 180
    :try_start_16
    invoke-interface {v1, p1}, Ljy/sdk/shell/callback/IActivityCallback;->onRestart(Landroid/app/Activity;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v1

    const-string v2, "jy_sdk"

    .line 182
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 5

    .line 109
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 110
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy/sdk/shell/callback/IActivityCallback;

    .line 112
    :try_start_16
    invoke-interface {v1, p1}, Ljy/sdk/shell/callback/IActivityCallback;->onResume(Landroid/app/Activity;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v1

    const-string v2, "jy_sdk"

    .line 114
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 5

    .line 82
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 83
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy/sdk/shell/callback/IActivityCallback;

    .line 85
    :try_start_16
    invoke-interface {v1, p1}, Ljy/sdk/shell/callback/IActivityCallback;->onStart(Landroid/app/Activity;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v1

    const-string v2, "jy_sdk"

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 5

    .line 150
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 151
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy/sdk/shell/callback/IActivityCallback;

    .line 153
    :try_start_16
    invoke-interface {v1, p1}, Ljy/sdk/shell/callback/IActivityCallback;->onStop(Landroid/app/Activity;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v1

    const-string v2, "jy_sdk"

    .line 155
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .registers 6

    .line 190
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 191
    iget-object v0, p0, Ljy/sdk/shell/callback/ActivityCallBacks;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy/sdk/shell/callback/IActivityCallback;

    .line 193
    :try_start_16
    invoke-interface {v1, p1, p2}, Ljy/sdk/shell/callback/IActivityCallback;->onWindowFocusChanged(Landroid/app/Activity;Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v1

    const-string v2, "jy_sdk"

    .line 195
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    return-void
.end method
