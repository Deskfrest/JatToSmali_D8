.class public Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "LoginMainAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;
    }
.end annotation


# instance fields
.field private cb_agree_pro_jy:Landroid/widget/CheckBox;

.field private cb_auto_login_jy:Landroid/widget/CheckBox;

.field checkHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$CheckHistoryUserListener;

.field checkedUserInfo:Ljy/sdk/gamesdk/entity/UserInfo;

.field deleteHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;

.field private et_accountlogin_account_jy:Ljy/sdk/gamesdk/widget/EditTextAccount;

.field private et_accountlogin_pw_jy:Landroid/widget/EditText;

.field private tv_forget_pw_jy:Landroid/view/View;

.field private tv_login_submit_jy:Landroid/widget/TextView;

.field private tv_protocal_jy:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    .line 153
    new-instance v0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$4;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$4;-><init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)V

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->checkHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$CheckHistoryUserListener;

    .line 161
    new-instance v0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$5;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$5;-><init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)V

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->deleteHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)Landroid/widget/EditText;
    .registers 1

    .line 39
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_pw_jy:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)Ljy/sdk/gamesdk/widget/EditTextAccount;
    .registers 1

    .line 39
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_account_jy:Ljy/sdk/gamesdk/widget/EditTextAccount;

    return-object p0
.end method

.method static synthetic access$200(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)Landroid/widget/TextView;
    .registers 1

    .line 39
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->tv_login_submit_jy:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)Landroid/view/View;
    .registers 1

    .line 39
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->tv_forget_pw_jy:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)Landroid/widget/TextView;
    .registers 1

    .line 39
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->tv_protocal_jy:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;Ljava/util/List;Landroid/app/Activity;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->loadLastGame(Ljava/util/List;Landroid/app/Activity;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;)V

    return-void
.end method

.method private initAccountStatus()V
    .registers 5

    .line 82
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_account_jy:Ljy/sdk/gamesdk/widget/EditTextAccount;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->deleteHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setDeleteHistoryUserListener(Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;)V

    .line 83
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "last_user_name"

    invoke-static {v0, v1}, Ljy/sdk/gamesdk/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "last_user_pass"

    invoke-static {v1, v2}, Ljy/sdk/gamesdk/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 86
    new-instance v2, Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-direct {v2}, Ljy/sdk/gamesdk/entity/UserInfo;-><init>()V

    .line 87
    invoke-virtual {v2, v0}, Ljy/sdk/gamesdk/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, v1}, Ljy/sdk/gamesdk/entity/UserInfo;->setPassword(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_account_jy:Ljy/sdk/gamesdk/widget/EditTextAccount;

    invoke-virtual {v3, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_pw_jy:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iput-object v2, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->checkedUserInfo:Ljy/sdk/gamesdk/entity/UserInfo;

    .line 94
    :cond_3a
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_account_jy:Ljy/sdk/gamesdk/widget/EditTextAccount;

    new-instance v1, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$1;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$1;-><init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)V

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/EditTextAccount;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_pw_jy:Landroid/widget/EditText;

    new-instance v1, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$2;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$2;-><init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_account_jy:Ljy/sdk/gamesdk/widget/EditTextAccount;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->checkHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$CheckHistoryUserListener;

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setCheckHistoryUserListener(Ljy/sdk/gamesdk/widget/EditTextAccount$CheckHistoryUserListener;)V

    .line 136
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3;-><init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)V

    invoke-virtual {p0, v0, v1}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->loadUsersInfo(Landroid/app/Activity;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;)V

    return-void
.end method

.method private loadLastGame(Ljava/util/List;Landroid/app/Activity;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljy/sdk/gamesdk/entity/UserInfo;",
            ">;",
            "Landroid/app/Activity;",
            "Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;",
            ")V"
        }
    .end annotation

    .line 358
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_55

    .line 360
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljy/sdk/gamesdk/entity/UserInfo;

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljy/sdk/gamesdk/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 364
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 365
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$8;

    invoke-direct {v2, p0, p1, p3}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$8;-><init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;Ljava/util/List;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;)V

    invoke-virtual {v1, p2, v0, v2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkGetLastGame(Landroid/content/Context;Ljava/lang/String;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    :cond_55
    return-void
.end method

.method private startLogin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 258
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;

    const/4 v1, -0x2

    .line 259
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->dismiss(I)V

    .line 261
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Ljy/sdk/gamesdk/activity/LoginActivity;

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->cb_auto_login_jy:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Ljy/sdk/gamesdk/activity/LoginActivity;->showAutoLoginFragment(ILjava/lang/String;Z)V

    return-void
.end method

.method private switchEnable(Z)V
    .registers 4

    .line 174
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$6;

    invoke-direct {v1, p0, p1}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$6;-><init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;Z)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_login_account_fragment"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 5

    .line 55
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_login_submit_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->tv_login_submit_jy:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->tv_login_submit_jy:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "cb_auto_login_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->cb_auto_login_jy:Landroid/widget/CheckBox;

    .line 59
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->cb_auto_login_jy:Landroid/widget/CheckBox;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "auto_login_check"

    invoke-static {v1, v2}, Ljy/sdk/gamesdk/utils/SpUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_autologin"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_agreepro"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "cb_agree_pro_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->cb_agree_pro_jy:Landroid/widget/CheckBox;

    .line 66
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_forget_pw_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->tv_forget_pw_jy:Landroid/view/View;

    .line 67
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->tv_forget_pw_jy:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_protocal_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->tv_protocal_jy:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->tv_protocal_jy:Landroid/widget/TextView;

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

    .line 70
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->tv_protocal_jy:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "et_accountlogin_pw_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_pw_jy:Landroid/widget/EditText;

    .line 76
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "et_accountlogin_account_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ljy/sdk/gamesdk/widget/EditTextAccount;

    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_account_jy:Ljy/sdk/gamesdk/widget/EditTextAccount;

    .line 77
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_account_jy:Ljy/sdk/gamesdk/widget/EditTextAccount;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->sdkTopicName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u8d26\u53f7/\u624b\u673a\u53f7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setHint(Ljava/lang/CharSequence;)V

    .line 78
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->initAccountStatus()V

    return-void
.end method

.method public loadUsersInfo(Landroid/app/Activity;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;)V
    .registers 5

    .line 314
    invoke-static {}, Ljy/sdk/common/utils/misc/ThreadManager;->getInstance()Ljy/sdk/common/utils/misc/ThreadManager;

    move-result-object v0

    new-instance v1, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$7;

    invoke-direct {v1, p0, p1, p2}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$7;-><init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;Landroid/app/Activity;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;)V

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ThreadManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 188
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_protocal_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-ne p1, v0, :cond_4e

    .line 191
    sget-object p1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object p1, Ljy/sdk/gamesdk/entity/InitInfo;->userpro:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 192
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u5c1a\u672a\u914d\u7f6e\u7528\u6237\u534f\u8bae~"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_25
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Ljy/sdk/gamesdk/ui/BaseDialogFragment;

    .line 197
    invoke-virtual {p1, v2}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->dismiss(I)V

    .line 199
    new-instance v0, Ljy/sdk/gamesdk/ui/ProtocalFragment;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/ProtocalFragment;-><init>()V

    .line 200
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->setCancelable(Z)V

    .line 201
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 202
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->setArguments(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v1, "LoginMainAccountFragment"

    invoke-virtual {v0, p1, v1}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_131

    .line 206
    :cond_4e
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v4, "tv_forget_pw_jy"

    invoke-virtual {v0, v4}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_76

    .line 209
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Ljy/sdk/gamesdk/ui/BaseDialogFragment;

    .line 210
    invoke-virtual {p1, v2}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->dismiss(I)V

    .line 212
    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 214
    new-instance v0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;-><init>()V

    .line 215
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->setCancelable(Z)V

    const-string v1, "LoginMainAccountFragment"

    .line 216
    invoke-virtual {v0, p1, v1}, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_131

    .line 217
    :cond_76
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_login_submit_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_100

    .line 219
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->cb_agree_pro_jy:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_aa

    .line 220
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->mActivity:Landroid/app/Activity;

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

    .line 224
    :cond_aa
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_account_jy:Ljy/sdk/gamesdk/widget/EditTextAccount;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 225
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_pw_jy:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {p1}, Ljy/sdk/gamesdk/utils/RegMsgUtil;->checkUserNameLogin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d6

    .line 228
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_d6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 233
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u5bc6\u7801\u8f93\u5165\u4e3a\u7a7a"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 238
    :cond_e4
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->checkedUserInfo:Ljy/sdk/gamesdk/entity/UserInfo;

    if-nez v1, :cond_fc

    .line 239
    invoke-static {v0}, Ljy/sdk/gamesdk/utils/RegMsgUtil;->checkPasswordLogin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f8

    .line 241
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 244
    :cond_f8
    invoke-static {v0}, Ljy/sdk/gamesdk/utils/EncTool;->encryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_fc
    invoke-direct {p0, p1, v0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->startLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_131

    .line 248
    :cond_100
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_autologin"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_119

    .line 249
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->cb_auto_login_jy:Landroid/widget/CheckBox;

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->cb_auto_login_jy:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_131

    .line 251
    :cond_119
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_agreepro"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_131

    .line 252
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->cb_agree_pro_jy:Landroid/widget/CheckBox;

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->cb_agree_pro_jy:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_131
    :goto_131
    return-void
.end method
