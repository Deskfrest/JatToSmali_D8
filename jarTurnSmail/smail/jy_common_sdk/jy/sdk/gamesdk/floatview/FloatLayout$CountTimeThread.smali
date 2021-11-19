.class Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;
.super Ljava/lang/Thread;
.source "FloatLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/floatview/FloatLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountTimeThread"
.end annotation


# instance fields
.field private maxVisibleTime:J

.field private startVisibleTime:J

.field final synthetic this$0:Ljy/sdk/gamesdk/floatview/FloatLayout;


# direct methods
.method public constructor <init>(Ljy/sdk/gamesdk/floatview/FloatLayout;I)V
    .registers 3

    .line 588
    iput-object p1, p0, Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;->this$0:Ljy/sdk/gamesdk/floatview/FloatLayout;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    .line 589
    iput-wide p1, p0, Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;->maxVisibleTime:J

    const/4 p1, 0x1

    .line 590
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 3

    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;->startVisibleTime:J

    return-void
.end method

.method public run()V
    .registers 7

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;->startVisibleTime:J

    .line 603
    :goto_6
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->needListener:Z
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 604
    iget-wide v0, p0, Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;->startVisibleTime:J

    iget-wide v2, p0, Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;->maxVisibleTime:J

    add-long v4, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-gez v2, :cond_4a

    .line 605
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->FLOAT_STATUS:I
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$800()I

    move-result v0

    const/16 v1, 0x65

    const/16 v2, 0x64

    if-ne v0, v2, :cond_2c

    .line 606
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mHandler:Landroid/os/Handler;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_39

    .line 607
    :cond_2c
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->FLOAT_STATUS:I
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$800()I

    move-result v0

    if-ne v0, v1, :cond_39

    .line 608
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mHandler:Landroid/os/Handler;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_39
    :goto_39
    const/4 v0, 0x0

    .line 610
    # setter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->needListener:Z
    invoke-static {v0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$1102(Z)Z

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;->startVisibleTime:J

    const-string v0, "jy_sdk"

    const-string v1, "quit while2"

    .line 612
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    const-wide/16 v0, 0x3e8

    .line 617
    :try_start_4c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_6

    :catch_50
    move-exception v0

    .line 620
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_55
    return-void
.end method
