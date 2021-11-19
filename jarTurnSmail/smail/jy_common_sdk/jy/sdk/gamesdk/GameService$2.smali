.class final Ljy/sdk/gamesdk/GameService$2;
.super Landroid/os/Handler;
.source "GameService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/GameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 344
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private ht()V
    .registers 3

    .line 370
    sget-object v0, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    if-eqz v0, :cond_1e

    sget-object v0, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/entity/UserInfo;->getSid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1e

    .line 375
    :cond_11
    invoke-static {}, Ljy/sdk/common/utils/misc/ThreadManager;->getInstance()Ljy/sdk/common/utils/misc/ThreadManager;

    move-result-object v0

    new-instance v1, Ljy/sdk/gamesdk/GameService$2$1;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/GameService$2$1;-><init>(Ljy/sdk/gamesdk/GameService$2;)V

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ThreadManager;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1e
    :goto_1e
    const-string v0, "jy_sdk"

    const-string v1, "current is not login ht stop!"

    .line 371
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 346
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x110

    if-ne v0, v1, :cond_a

    .line 347
    invoke-direct {p0}, Ljy/sdk/gamesdk/GameService$2;->ht()V

    goto :goto_42

    .line 348
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x111

    const/4 v2, 0x1

    if-ne v0, v1, :cond_20

    .line 350
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->hasShowFloatView()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 351
    invoke-static {v2}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->showNewsTips(I)V

    .line 352
    sget p1, Ljy/sdk/gamesdk/GameService;->last_NoticeUnreadNum:I

    invoke-static {v2, p1}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->checkRedDot(II)V

    goto :goto_42

    .line 356
    :cond_20
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x113

    if-ne v0, v1, :cond_31

    .line 357
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->hasShowFloatView()Z

    move-result p1

    if-eqz p1, :cond_42

    const/4 p1, -0x1

    .line 358
    invoke-static {p1}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->checkRedDot(I)V

    goto :goto_42

    .line 360
    :cond_31
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x112

    if-ne p1, v0, :cond_42

    .line 361
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->hasShowFloatView()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 362
    sget p1, Ljy/sdk/gamesdk/GameService;->last_NoticeUnreadNum:I

    invoke-static {v2, p1}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->checkRedDot(II)V

    :cond_42
    :goto_42
    return-void
.end method
