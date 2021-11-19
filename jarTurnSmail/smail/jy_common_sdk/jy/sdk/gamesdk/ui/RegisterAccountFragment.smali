.class public Ljy/sdk/gamesdk/ui/RegisterAccountFragment;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "RegisterAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static TYPE_CAKK_BACK_SUC:I = 0x1


# instance fields
.field private cb_agree_pro_jy:Landroid/widget/CheckBox;

.field private et_password1:Landroid/widget/EditText;

.field private et_password2:Landroid/widget/EditText;

.field private et_username:Landroid/widget/EditText;

.field private jy_register_account_tips:Landroid/widget/TextView;

.field private rl_title_back_jy:Landroid/view/View;

.field private tv_reg_submit:Landroid/view/View;

.field private tv_verifycode:Ljy/sdk/gamesdk/widget/JyVerifyView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;)Landroid/widget/TextView;
    .registers 1

    .line 26
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->jy_register_account_tips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100()I
    .registers 1

    .line 26
    sget v0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->TYPE_CAKK_BACK_SUC:I

    return v0
.end method

.method static synthetic access$200(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;)Landroid/view/View;
    .registers 1

    .line 26
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->tv_reg_submit:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;)Landroid/view/View;
    .registers 1

    .line 26
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->rl_title_back_jy:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;Z)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->switchEnable(Z)V

    return-void
.end method

.method private checkInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 175
    invoke-static {p1}, Ljy/sdk/gamesdk/utils/RegMsgUtil;->checkUserNameReg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 177
    iget-object p2, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return v1

    .line 182
    :cond_11
    invoke-static {p2, p3}, Ljy/sdk/gamesdk/utils/RegMsgUtil;->checkPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_21

    .line 184
    iget-object p2, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return v1

    :cond_21
    const/4 p1, 0x1

    return p1
.end method

.method private startReg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 148
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;

    invoke-direct {v2, p0, p1, p2}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;-><init>(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkNormalReg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    return-void
.end method

.method private switchEnable(Z)V
    .registers 4

    .line 133
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$3;

    invoke-direct {v1, p0, p1}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$3;-><init>(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;Z)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_register_account"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 5

    .line 43
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "jy_title_name"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v2, Ljy/sdk/gamesdk/entity/InitInfo;->sdkTopicName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u8d26\u53f7\u6ce8\u518c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_verifycode"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljy/sdk/gamesdk/widget/JyVerifyView;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->tv_verifycode:Ljy/sdk/gamesdk/widget/JyVerifyView;

    .line 47
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "jy_register_account_tips"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->jy_register_account_tips:Landroid/widget/TextView;

    .line 48
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "et_username"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->et_username:Landroid/widget/EditText;

    .line 49
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "et_password1"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->et_password1:Landroid/widget/EditText;

    .line 50
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "et_password2"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->et_password2:Landroid/widget/EditText;

    .line 51
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_agreepro"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "rl_title_back_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->rl_title_back_jy:Landroid/view/View;

    .line 53
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->rl_title_back_jy:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_reg_submit"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->tv_reg_submit:Landroid/view/View;

    .line 55
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_reg_submit"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "cb_agree_pro_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->cb_agree_pro_jy:Landroid/widget/CheckBox;

    .line 58
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_protocal_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u300a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->sdkTopicName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u7528\u6237\u534f\u8bae\u300b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->et_username:Landroid/widget/EditText;

    new-instance v0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$1;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$1;-><init>(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 76
    new-instance p1, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$2;

    invoke-direct {p1, p0}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$2;-><init>(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;)V

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->setFragmentDismissListener(Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 96
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "rl_title_back_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_15

    .line 97
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->dismiss()V

    goto/16 :goto_dd

    .line 98
    :cond_15
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_protocal_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_55

    .line 100
    sget-object p1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object p1, Ljy/sdk/gamesdk/entity/InitInfo;->userpro:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 101
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u5c1a\u672a\u914d\u7f6e\u7528\u6237\u534f\u8bae~"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 104
    :cond_34
    new-instance p1, Ljy/sdk/gamesdk/ui/ProtocalFragment;

    invoke-direct {p1}, Ljy/sdk/gamesdk/ui/ProtocalFragment;-><init>()V

    .line 105
    invoke-virtual {p1, v1}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->setCancelable(Z)V

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x3

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->setArguments(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "LoginMainAccountFragment"

    invoke-virtual {p1, v0, v1}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_dd

    .line 111
    :cond_55
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v2, "tv_reg_submit"

    invoke-virtual {v0, v2}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_c4

    .line 113
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->cb_agree_pro_jy:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_89

    .line 114
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u52fe\u9009\u540c\u610f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->sdkTopicName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u7528\u6237\u534f\u8bae"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 117
    :cond_89
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->et_username:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 118
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-direct {p0, p1, v0, v2}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->checkInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 122
    invoke-direct {p0, v1}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->switchEnable(Z)V

    .line 123
    invoke-static {v2}, Ljy/sdk/gamesdk/utils/EncTool;->encryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-direct {p0, p1, v0}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->startReg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dd

    .line 126
    :cond_c4
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_agreepro"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_dd

    .line 127
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->cb_agree_pro_jy:Landroid/widget/CheckBox;

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->cb_agree_pro_jy:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_dd
    :goto_dd
    return-void
.end method
