.class public abstract Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.super Landroid/app/DialogFragment;
.source "BaseDialogFragment.java"


# static fields
.field protected static final ALPHA:F = 1.0f

.field protected static TAG:Ljava/lang/String; = "jy_sdk"

.field public static final TYPE_CLOSE_CURRENT:I = -0x2

.field public static final TYPE_CLOSE_NORMAL:I = -0x1


# instance fields
.field private canceledOnTouchOutside:Z

.field private iFragmentDismissListener:Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;

.field public mActivity:Landroid/app/Activity;

.field private type_close:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->canceledOnTouchOutside:Z

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->type_close:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 4

    .line 112
    :try_start_0
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    const-string v1, "jy_sdk"

    const-string v2, "Fragment dismiss error"

    .line 114
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    return-void
.end method

.method public dismiss(I)V
    .registers 2

    .line 105
    iput p1, p0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->type_close:I

    .line 106
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->dismiss()V

    return-void
.end method

.method public abstract getLayoutName()Ljava/lang/String;
.end method

.method protected initData()V
    .registers 1

    return-void
.end method

.method public abstract initView(Landroid/view/View;)V
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 31
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 137
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "jy_sdk"

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 4

    .line 132
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 37
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object p3

    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->getLayoutName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljy/sdk/common/utils/misc/ResUtils;->getLayoutResByName(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->initView(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->initData()V

    .line 42
    :try_start_17
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 43
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x1

    .line 45
    invoke-virtual {p2, p3}, Landroid/view/Window;->requestFeature(I)Z

    .line 46
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    iget-boolean p3, p0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->canceledOnTouchOutside:Z

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 47
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    iget-boolean p3, p0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->canceledOnTouchOutside:Z

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3d} :catch_3e

    goto :goto_5e

    :catch_3e
    move-exception p2

    .line 51
    sget-object p3, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    if-nez p2, :cond_46

    const-string p2, "."

    goto :goto_5b

    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_5b
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .line 121
    sget-object v0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "on dismiss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->iFragmentDismissListener:Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;

    if-eqz v0, :cond_21

    .line 123
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->iFragmentDismissListener:Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;

    iget v1, p0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->type_close:I

    invoke-interface {v0, v1}, Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;->onFragmentDismiss(I)V

    .line 125
    :cond_21
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, -0x1

    .line 126
    iput p1, p0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->type_close:I

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 143
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 144
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 145
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    :cond_24
    return-void
.end method

.method public setCancelable(Z)V
    .registers 2

    .line 64
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 2

    .line 60
    iput-boolean p1, p0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->canceledOnTouchOutside:Z

    return-void
.end method

.method public setFragmentDismissListener(Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;)V
    .registers 2

    .line 92
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->iFragmentDismissListener:Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .registers 4

    .line 82
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_f

    :catch_4
    move-exception p1

    const-string p2, "jy_sdk"

    const-string v0, "Fragment show error"

    .line 84
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    return-void
.end method
