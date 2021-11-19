.class public Ljy/sdk/gamesdk/ui/ProgressLoading;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "ProgressLoading.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_loading"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/ProgressLoading;->setCancelable(Z)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_5

    return p1

    :cond_5
    return p1
.end method

.method public onStart()V
    .registers 2

    .line 22
    invoke-super {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->onStart()V

    .line 23
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ProgressLoading;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ProgressLoading;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 24
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ProgressLoading;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1a
    return-void
.end method
