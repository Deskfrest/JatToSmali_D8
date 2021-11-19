.class public Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "LoginMainPhoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btn_countdown_jy:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

.field private cb_agree_pro_jy:Landroid/widget/CheckBox;

.field private cb_auto_login_jy:Landroid/widget/CheckBox;

.field private defPhone:Ljava/lang/String;

.field private et_jy_login_phone:Landroid/widget/EditText;

.field private et_jy_login_vercode:Landroid/widget/EditText;

.field private tv_forget_pw_jy:Landroid/widget/TextView;

.field private tv_login_submit_jy:Landroid/widget/TextView;

.field private tv_protocal_jy:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->defPhone:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;)Landroid/widget/TextView;
    .registers 1

    .line 25
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->tv_login_submit_jy:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;)Landroid/widget/TextView;
    .registers 1

    .line 25
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->tv_protocal_jy:Landroid/widget/TextView;

    return-object p0
.end method

.method private startRegOrLogin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;

    const/4 v1, -0x2

    .line 168
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->dismiss(I)V

    .line 170
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Ljy/sdk/gamesdk/activity/LoginActivity;

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->cb_auto_login_jy:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Ljy/sdk/gamesdk/activity/LoginActivity;->showAutoLoginFragment(ILjava/lang/String;Z)V

    return-void
.end method

.method private switchEnable(Z)V
    .registers 4

    .line 152
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment$2;

    invoke-direct {v1, p0, p1}, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment$2;-><init>(Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;Z)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_login_phone_fragment"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 5

    .line 52
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "btn_countdown_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->btn_countdown_jy:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    .line 53
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->btn_countdown_jy:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    invoke-virtual {v0, p0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_login_submit_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->tv_login_submit_jy:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->tv_login_submit_jy:Landroid/widget/TextView;

    const-string v1, "\u767b\u5f55&\u6ce8\u518c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->tv_login_submit_jy:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_autologin"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_agreepro"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "cb_auto_login_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->cb_auto_login_jy:Landroid/widget/CheckBox;

    .line 61
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->cb_auto_login_jy:Landroid/widget/CheckBox;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "auto_login_check"

    invoke-static {v1, v2}, Ljy/sdk/gamesdk/utils/SpUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "cb_agree_pro_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->cb_agree_pro_jy:Landroid/widget/CheckBox;

    .line 65
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_protocal_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->tv_protocal_jy:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->tv_protocal_jy:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u300a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v2, Ljy/sdk/gamesdk/entity/InitInfo;->sdkTopicName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u7528\u6237\u534f\u8bae\u300b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->tv_protocal_jy:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "et_jy_login_vercode"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->et_jy_login_vercode:Landroid/widget/EditText;

    .line 70
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "et_jy_login_phone"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->et_jy_login_phone:Landroid/widget/EditText;

    .line 71
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->et_jy_login_phone:Landroid/widget/EditText;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->defPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_forget_pw_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->tv_forget_pw_jy:Landroid/widget/TextView;

    .line 74
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->tv_forget_pw_jy:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 84
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "btn_countdown_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_49

    .line 86
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->et_jy_login_phone:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p1}, Ljy/sdk/gamesdk/utils/RegMsgUtil;->checkPhone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 88
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u624b\u673a\u53f7\u683c\u5f0f\u9519\u8bef!"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_2e
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->btn_countdown_jy:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->startTimeDown()V

    .line 92
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->mActivity:Landroid/app/Activity;

    sget-object v4, Ljy/sdk/gamesdk/api/ApiClient$Vtype;->PHONE_LOGIN:Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    new-instance v5, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment$1;

    invoke-direct {v5, p0}, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment$1;-><init>(Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;)V

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v4, v5, v2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkGetVerify(Landroid/app/Activity;Ljy/sdk/gamesdk/api/ApiClient$Vtype;Ljy/sdk/gamesdk/api/IApiCallBack;[Ljava/lang/String;)V

    goto/16 :goto_127

    .line 108
    :cond_49
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v3, "tv_login_submit_jy"

    invoke-virtual {v0, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_ae

    .line 110
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->cb_agree_pro_jy:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_7d

    .line 111
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u52fe\u9009\u540c\u610f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->sdkTopicName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u7528\u6237\u534f\u8bae~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_7d
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->et_jy_login_phone:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 116
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->et_jy_login_vercode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {p1, v0}, Ljy/sdk/gamesdk/utils/RegMsgUtil;->checkPhoneVcode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 120
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_a9
    invoke-direct {p0, p1, v0}, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->startRegOrLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_127

    .line 126
    :cond_ae
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v3, "tv_protocal_jy"

    invoke-virtual {v0, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_f6

    .line 127
    sget-object p1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object p1, Ljy/sdk/gamesdk/entity/InitInfo;->userpro:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 128
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u5c1a\u672a\u914d\u7f6e\u7528\u6237\u534f\u8bae~"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_cc
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Ljy/sdk/gamesdk/ui/BaseDialogFragment;

    const/4 v0, -0x2

    .line 134
    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->dismiss(I)V

    .line 136
    new-instance v0, Ljy/sdk/gamesdk/ui/ProtocalFragment;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/ProtocalFragment;-><init>()V

    .line 137
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->setCancelable(Z)V

    .line 138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    const/4 v3, 0x2

    .line 139
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->setArguments(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v1, "LoginMainPhoneFragment"

    invoke-virtual {v0, p1, v1}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_127

    .line 142
    :cond_f6
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_autologin"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_10f

    .line 143
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->cb_auto_login_jy:Landroid/widget/CheckBox;

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->cb_auto_login_jy:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_127

    .line 145
    :cond_10f
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_agreepro"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_127

    .line 146
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->cb_agree_pro_jy:Landroid/widget/CheckBox;

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->cb_agree_pro_jy:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_127
    :goto_127
    return-void
.end method

.method public setDefPhone(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->defPhone:Ljava/lang/String;

    return-void
.end method
