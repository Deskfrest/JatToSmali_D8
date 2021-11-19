.class public Ljy/sdk/gamesdk/ui/ResetPassFragment;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "ResetPassFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private et_password1:Ljy/sdk/gamesdk/widget/EditTextPassword;

.field private et_password2:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/ui/ResetPassFragment;)Landroid/widget/EditText;
    .registers 1

    .line 22
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment;->et_password2:Landroid/widget/EditText;

    return-object p0
.end method

.method private checkInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 62
    invoke-static {p1, p2}, Ljy/sdk/gamesdk/utils/RegMsgUtil;->checkPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_11

    .line 64
    iget-object p2, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_11
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_reset_password"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 76
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "rl_title_back_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_reset_submit"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "jy_title_name"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u8bbe\u7f6e\u65b0\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "et_password1"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljy/sdk/gamesdk/widget/EditTextPassword;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment;->et_password1:Ljy/sdk/gamesdk/widget/EditTextPassword;

    .line 82
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "et_password2"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment;->et_password2:Landroid/widget/EditText;

    .line 84
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment;->et_password1:Ljy/sdk/gamesdk/widget/EditTextPassword;

    new-instance v0, Ljy/sdk/gamesdk/ui/ResetPassFragment$2;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/ui/ResetPassFragment$2;-><init>(Ljy/sdk/gamesdk/ui/ResetPassFragment;)V

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->setEyeChangeListener(Ljy/sdk/gamesdk/widget/EditTextPassword$EyeChangeListener;)V

    .line 95
    new-instance p1, Ljy/sdk/gamesdk/ui/ResetPassFragment$3;

    invoke-direct {p1, p0}, Ljy/sdk/gamesdk/ui/ResetPassFragment$3;-><init>(Ljy/sdk/gamesdk/ui/ResetPassFragment;)V

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/ResetPassFragment;->setFragmentDismissListener(Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 32
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "rl_title_back_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_14

    .line 33
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ResetPassFragment;->dismiss()V

    goto :goto_69

    .line 34
    :cond_14
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_reset_submit"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_69

    .line 35
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment;->et_password1:Ljy/sdk/gamesdk/widget/EditTextPassword;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/widget/EditTextPassword;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 36
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-direct {p0, p1, v0}, Ljy/sdk/gamesdk/ui/ResetPassFragment;->checkInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_43

    return-void

    .line 41
    :cond_43
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ResetPassFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ResetPassFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "vcode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-static {v0}, Ljy/sdk/gamesdk/utils/EncTool;->encryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v2

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment;->mActivity:Landroid/app/Activity;

    new-instance v7, Ljy/sdk/gamesdk/ui/ResetPassFragment$1;

    invoke-direct {v7, p0}, Ljy/sdk/gamesdk/ui/ResetPassFragment$1;-><init>(Ljy/sdk/gamesdk/ui/ResetPassFragment;)V

    invoke-virtual/range {v2 .. v7}, Ljy/sdk/gamesdk/api/ApiClient;->sdkFindPassReset(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    :cond_69
    :goto_69
    return-void
.end method
