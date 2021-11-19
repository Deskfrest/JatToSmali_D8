.class public Ljy/sdk/gamesdk/ui/ExitDialogFragment;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "ExitDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private iDialogListener:Ljy/sdk/common/abs/innercallbacks/IDialogListener;

.field private iv_ad:Landroid/widget/ImageView;

.field private jumpLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/ui/ExitDialogFragment;)Landroid/widget/ImageView;
    .registers 1

    .line 19
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->iv_ad:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$102(Ljy/sdk/gamesdk/ui/ExitDialogFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 19
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->jumpLink:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_exit_dialog"

    return-object v0
.end method

.method protected initData()V
    .registers 4

    .line 52
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljy/sdk/gamesdk/ui/ExitDialogFragment$1;

    invoke-direct {v2, p0}, Ljy/sdk/gamesdk/ui/ExitDialogFragment$1;-><init>(Ljy/sdk/gamesdk/ui/ExitDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkExit(Landroid/content/Context;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 6

    .line 36
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "iv_close"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "iv_exit_logo"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Ljy/sdk/gamesdk/utils/JyImageUtil;->build(Landroid/content/Context;)Ljy/sdk/gamesdk/utils/JyImageUtil;

    move-result-object v1

    sget-object v2, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v2, Ljy/sdk/gamesdk/entity/InitInfo;->logoUrl:Ljava/lang/String;

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Ljy/sdk/gamesdk/utils/JyImageUtil;->bindBitmap(Ljava/lang/String;Landroid/widget/ImageView;Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;)V

    .line 40
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "iv_ad"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->iv_ad:Landroid/widget/ImageView;

    .line 41
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->iv_ad:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_gift"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_introduction"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_exit"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_exit_title"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->sdkTopicName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6e38\u620f\u4e2d\u5fc3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 75
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "iv_close"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_15

    .line 76
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->dismiss()V

    goto/16 :goto_ca

    .line 77
    :cond_15
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "iv_ad"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_4d

    .line 78
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->jumpLink:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    return-void

    .line 81
    :cond_2a
    sget-object p1, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    if-nez p1, :cond_36

    .line 82
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_36
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x6

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->jumpLink:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ljy/sdk/gamesdk/api/ApiClient;->sdkGetBuoyCenterUrl(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/gamesdk/activity/AccountActivity;->showAccountActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->dismiss()V

    goto/16 :goto_ca

    .line 87
    :cond_4d
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_gift"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7f

    .line 88
    sget-object p1, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    if-nez p1, :cond_5f

    return-void

    .line 91
    :cond_5f
    sget-object p1, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    if-nez p1, :cond_6b

    .line 92
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_6b
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljy/sdk/gamesdk/api/ApiClient;->sdkGetBuoyCenterUrl(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/gamesdk/activity/AccountActivity;->showAccountActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->dismiss()V

    goto :goto_ca

    .line 97
    :cond_7f
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v2, "tv_introduction"

    invoke-virtual {v0, v2}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_b0

    .line 98
    sget-object p1, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    if-nez p1, :cond_90

    return-void

    .line 101
    :cond_90
    sget-object p1, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    if-nez p1, :cond_9c

    .line 102
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_9c
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljy/sdk/gamesdk/api/ApiClient;->sdkGetBuoyCenterUrl(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/gamesdk/activity/AccountActivity;->showAccountActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->dismiss()V

    goto :goto_ca

    .line 108
    :cond_b0
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_exit"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_ca

    .line 110
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->iDialogListener:Ljy/sdk/common/abs/innercallbacks/IDialogListener;

    if-eqz p1, :cond_c5

    .line 111
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->iDialogListener:Ljy/sdk/common/abs/innercallbacks/IDialogListener;

    invoke-interface {p1}, Ljy/sdk/common/abs/innercallbacks/IDialogListener;->clickConfirm()V

    .line 113
    :cond_c5
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Ljy/sdk/gamesdk/GameService;->onCpDestroy(Landroid/app/Activity;)V

    :cond_ca
    :goto_ca
    return-void
.end method

.method public setDialogListener(Ljy/sdk/common/abs/innercallbacks/IDialogListener;)V
    .registers 2

    .line 31
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->iDialogListener:Ljy/sdk/common/abs/innercallbacks/IDialogListener;

    return-void
.end method
