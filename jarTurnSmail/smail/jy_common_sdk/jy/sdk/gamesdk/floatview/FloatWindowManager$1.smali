.class final Ljy/sdk/gamesdk/floatview/FloatWindowManager$1;
.super Landroid/os/Handler;
.source "FloatWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/floatview/FloatWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 38
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_7e

    goto/16 :goto_7c

    .line 65
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1b

    .line 67
    # getter for: Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->access$000()Ljy/sdk/gamesdk/floatview/FloatLayout;

    move-result-object p1

    invoke-virtual {p1}, Ljy/sdk/gamesdk/floatview/FloatLayout;->showNewtips()V

    goto :goto_7c

    .line 69
    :cond_1b
    # getter for: Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->access$000()Ljy/sdk/gamesdk/floatview/FloatLayout;

    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->closeNewtips()V

    goto :goto_7c

    .line 62
    :pswitch_22
    # getter for: Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->access$100()Landroid/view/WindowManager;

    move-result-object p1

    # getter for: Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->access$000()Ljy/sdk/gamesdk/floatview/FloatLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_7c

    .line 56
    :pswitch_2e
    # getter for: Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->access$000()Ljy/sdk/gamesdk/floatview/FloatLayout;

    move-result-object p1

    if-eqz p1, :cond_7c

    .line 57
    # getter for: Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->access$000()Ljy/sdk/gamesdk/floatview/FloatLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljy/sdk/gamesdk/floatview/FloatLayout;->setDragFlagViewVisibility(I)V

    .line 58
    # getter for: Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->access$000()Ljy/sdk/gamesdk/floatview/FloatLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljy/sdk/gamesdk/floatview/FloatLayout;->setDragFlagViewText(I)V

    goto :goto_7c

    .line 50
    :pswitch_43
    # getter for: Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->access$000()Ljy/sdk/gamesdk/floatview/FloatLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->setDragFlagViewVisibility(I)V

    .line 52
    invoke-static {v1}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->checkRedDot(I)V

    goto :goto_7c

    .line 46
    :pswitch_50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 47
    invoke-static {p1}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->checkRedDot(I)V

    goto :goto_7c

    .line 43
    :pswitch_5c
    # getter for: Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->access$100()Landroid/view/WindowManager;

    move-result-object p1

    # getter for: Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->access$000()Ljy/sdk/gamesdk/floatview/FloatLayout;

    move-result-object v0

    # getter for: Ljy/sdk/gamesdk/floatview/FloatWindowManager;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->access$200()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7c

    .line 40
    :pswitch_6c
    # getter for: Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->access$100()Landroid/view/WindowManager;

    move-result-object p1

    # getter for: Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->access$000()Ljy/sdk/gamesdk/floatview/FloatLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_77} :catch_78

    goto :goto_7c

    :catch_78
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7c
    :goto_7c
    return-void

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_5c
        :pswitch_50
        :pswitch_43
        :pswitch_2e
        :pswitch_22
        :pswitch_9
    .end packed-switch
.end method
