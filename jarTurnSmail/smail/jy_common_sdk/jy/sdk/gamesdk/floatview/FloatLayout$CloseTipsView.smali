.class Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;
.super Ljava/lang/Thread;
.source "FloatLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/floatview/FloatLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseTipsView"
.end annotation


# instance fields
.field private maxVisibleTime:J

.field private startVisibleTime:J

.field final synthetic this$0:Ljy/sdk/gamesdk/floatview/FloatLayout;


# direct methods
.method public constructor <init>(Ljy/sdk/gamesdk/floatview/FloatLayout;I)V
    .registers 3

    .line 485
    iput-object p1, p0, Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;->this$0:Ljy/sdk/gamesdk/floatview/FloatLayout;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    mul-int/lit8 p2, p2, 0x64

    int-to-long p1, p2

    .line 486
    iput-wide p1, p0, Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;->maxVisibleTime:J

    const/4 p1, 0x1

    .line 487
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 3

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;->startVisibleTime:J

    return-void
.end method

.method public run()V
    .registers 7

    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;->startVisibleTime:J

    .line 499
    :goto_6
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->closeTipsListener:Z
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 500
    iget-wide v0, p0, Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;->startVisibleTime:J

    iget-wide v2, p0, Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;->maxVisibleTime:J

    add-long v4, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-gez v2, :cond_34

    .line 501
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mHandler:Landroid/os/Handler;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$100()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;->startVisibleTime:J

    const/4 v0, 0x0

    .line 503
    # setter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->closeTipsListener:Z
    invoke-static {v0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$002(Z)Z

    const-string v0, "jy_sdk"

    const-string v1, "quit while1"

    .line 504
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    const-wide/16 v0, 0x3e8

    .line 508
    :try_start_36
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_6

    :catch_3a
    move-exception v0

    .line 511
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_3f
    return-void
.end method
