.class final Ljy/sdk/gamesdk/floatview/FloatLayout$1;
.super Landroid/os/Handler;
.source "FloatLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/floatview/FloatLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 529
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 531
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_d8

    const/16 v0, 0x64

    packed-switch p1, :pswitch_data_dc

    goto/16 :goto_db

    :pswitch_d
    const/16 p1, 0x65

    .line 550
    # setter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->FLOAT_STATUS:I
    invoke-static {p1}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$802(I)I

    const/4 p1, 0x1

    .line 551
    # setter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->isHiding:Z
    invoke-static {p1}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$902(Z)Z

    .line 552
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$200()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 553
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->isLeft:Z
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$300()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 554
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$400()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$200()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_7e

    .line 556
    :cond_35
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$400()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mScreenWidth:I
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$500()I

    move-result v0

    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$200()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 557
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$1000()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "99+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 558
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$400()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mScreenWidth:I
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$500()I

    move-result v0

    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$200()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 559
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$1000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 564
    :cond_7e
    :goto_7e
    :try_start_7e
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$700()Landroid/view/WindowManager;

    move-result-object p1

    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$600()Ljy/sdk/gamesdk/floatview/FloatLayout;

    move-result-object v0

    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$400()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8d} :catch_8e

    goto :goto_db

    :catch_8e
    move-exception p1

    .line 566
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_db

    .line 533
    :pswitch_93
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$200()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v1, 0xff

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 534
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->isLeft:Z
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$300()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_aa

    .line 535
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$400()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_bd

    .line 537
    :cond_aa
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$400()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mScreenWidth:I
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$500()I

    move-result v2

    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$200()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 540
    :goto_bd
    :try_start_bd
    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$700()Landroid/view/WindowManager;

    move-result-object p1

    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$600()Ljy/sdk/gamesdk/floatview/FloatLayout;

    move-result-object v2

    # getter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$400()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_cc} :catch_cd

    goto :goto_d1

    :catch_cd
    move-exception p1

    .line 542
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 544
    :goto_d1
    # setter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->FLOAT_STATUS:I
    invoke-static {v0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$802(I)I

    .line 545
    # setter for: Ljy/sdk/gamesdk/floatview/FloatLayout;->isHiding:Z
    invoke-static {v1}, Ljy/sdk/gamesdk/floatview/FloatLayout;->access$902(Z)Z

    goto :goto_db

    .line 575
    :cond_d8
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->closeNewtips()V

    :goto_db
    :pswitch_db
    return-void

    :pswitch_data_dc
    .packed-switch 0x64
        :pswitch_93
        :pswitch_d
        :pswitch_db
    .end packed-switch
.end method
