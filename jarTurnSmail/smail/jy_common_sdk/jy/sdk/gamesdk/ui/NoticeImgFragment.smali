.class public Ljy/sdk/gamesdk/ui/NoticeImgFragment;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "NoticeImgFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private iv_ad:Landroid/widget/ImageView;

.field private notice:Ljy/sdk/gamesdk/entity/Notice;

.field private tv_close:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_login_img_ad"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 6

    .line 42
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "iv_ad"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->iv_ad:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->iv_ad:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "notice"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljy/sdk/gamesdk/entity/Notice;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->notice:Ljy/sdk/gamesdk/entity/Notice;

    .line 47
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->notice:Ljy/sdk/gamesdk/entity/Notice;

    if-nez v0, :cond_2d

    .line 48
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->dismiss()V

    return-void

    .line 51
    :cond_2d
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Ljy/sdk/gamesdk/utils/JyImageUtil;->build(Landroid/content/Context;)Ljy/sdk/gamesdk/utils/JyImageUtil;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->notice:Ljy/sdk/gamesdk/entity/Notice;

    iget-object v1, v1, Ljy/sdk/gamesdk/entity/Notice;->content:Ljava/lang/String;

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->iv_ad:Landroid/widget/ImageView;

    new-instance v3, Ljy/sdk/gamesdk/ui/NoticeImgFragment$1;

    invoke-direct {v3, p0}, Ljy/sdk/gamesdk/ui/NoticeImgFragment$1;-><init>(Ljy/sdk/gamesdk/ui/NoticeImgFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Ljy/sdk/gamesdk/utils/JyImageUtil;->bindBitmap(Ljava/lang/String;Landroid/widget/ImageView;Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;)V

    .line 58
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_close"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->tv_close:Landroid/view/View;

    .line 59
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->tv_close:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 68
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "iv_ad"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_35

    .line 69
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->notice:Ljy/sdk/gamesdk/entity/Notice;

    iget p1, p1, Ljy/sdk/gamesdk/entity/Notice;->jumpAction:I

    if-eqz p1, :cond_44

    .line 70
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x6

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->notice:Ljy/sdk/gamesdk/entity/Notice;

    iget-object v3, v3, Ljy/sdk/gamesdk/entity/Notice;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ljy/sdk/gamesdk/api/ApiClient;->sdkGetBuoyCenterUrl(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/gamesdk/activity/AccountActivity;->showAccountActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->notice:Ljy/sdk/gamesdk/entity/Notice;

    invoke-static {p1, v0}, Ljy/sdk/gamesdk/NoticeManager;->notifyServer(Landroid/content/Context;Ljy/sdk/gamesdk/entity/Notice;)V

    .line 72
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->dismiss()V

    goto :goto_44

    .line 74
    :cond_35
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_close"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_44

    .line 75
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->dismiss()V

    :cond_44
    :goto_44
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 36
    invoke-super {p0, p1}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 80
    invoke-super {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->onStart()V

    .line 81
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 82
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x437c0000    # 252.0f

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 83
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x43e00000    # 448.0f

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 84
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Ljy/sdk/common/utils/misc/UIUtil;->isOritationVertical(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 85
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_42

    .line 87
    :cond_37
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_42
    :goto_42
    return-void
.end method
