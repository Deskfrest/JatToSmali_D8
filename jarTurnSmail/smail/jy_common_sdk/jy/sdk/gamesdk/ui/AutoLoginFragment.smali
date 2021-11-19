.class public Ljy/sdk/gamesdk/ui/AutoLoginFragment;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "AutoLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final TYPE_APP_TOKEN:I = 0x1

.field public static TYPE_CLOSE_CURRENT_CHECK_PHONE:I = 0x1

.field public static final TYPE_LOGIN_ACCOUNT:I = 0x4

.field public static final TYPE_LOGIN_PHONE:I = 0x3

.field public static final TYPE_SID:I = 0x2

.field private static clickSwitch:Z = false


# instance fields
.field private autoLoginFragmentDisMissListener:Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;

.field private mPhone:Ljava/lang/String;

.field private tv_login_auto_change_account:Landroid/view/View;

.field private tv_login_auto_username:Landroid/widget/TextView;

.field private tv_login_msg:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    const-string v0, ""

    .line 67
    iput-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mPhone:Ljava/lang/String;

    .line 356
    new-instance v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$6;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment$6;-><init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment;)V

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->autoLoginFragmentDisMissListener:Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/ui/AutoLoginFragment;Z)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->switchEnable(Z)V

    return-void
.end method

.method static synthetic access$100(Ljy/sdk/gamesdk/ui/AutoLoginFragment;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mPhone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ljy/sdk/gamesdk/ui/AutoLoginFragment;)Landroid/widget/TextView;
    .registers 1

    .line 25
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->tv_login_msg:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 25
    sget-boolean v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->clickSwitch:Z

    return v0
.end method

.method static synthetic access$400(Ljy/sdk/gamesdk/ui/AutoLoginFragment;)Landroid/view/View;
    .registers 1

    .line 25
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->tv_login_auto_change_account:Landroid/view/View;

    return-object p0
.end method

.method private startAutoLoginByAppToken()V
    .registers 7

    const/4 v0, 0x0

    .line 215
    :try_start_1
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "last_sid_username"

    const-string v3, "\u6e38\u620f\u4e2d\u5fc3\u7528\u6237"

    invoke-static {v1, v2, v3}, Ljy/sdk/gamesdk/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->tv_login_auto_username:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    sput-boolean v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->clickSwitch:Z

    .line 219
    sget-object v1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->app_token_account:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 220
    aget-object v2, v1, v0

    const/4 v3, 0x1

    .line 221
    aget-object v1, v1, v3

    .line 222
    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->switchEnable(Z)V

    .line 223
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v3

    iget-object v4, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v5, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;

    invoke-direct {v5, p0, v2, v1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;-><init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v2, v1, v5}, Ljy/sdk/gamesdk/api/ApiClient;->sdkNormalLogin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljy/sdk/gamesdk/api/IApiCallBack;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_33

    goto :goto_49

    :catch_33
    move-exception v1

    .line 280
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x2

    .line 281
    invoke-virtual {p0, v1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V

    .line 282
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "error"

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "use_app_token"

    invoke-static {v1, v2, v0}, Ljy/sdk/gamesdk/utils/SpUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_49
    return-void
.end method

.method private startAutoLoginBySid()V
    .registers 5

    .line 289
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "last_sid_username"

    const-string v2, "\u8001\u670b\u53cb"

    invoke-static {v0, v1, v2}, Ljy/sdk/gamesdk/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->tv_login_auto_username:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 292
    sput-boolean v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->clickSwitch:Z

    .line 293
    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->switchEnable(Z)V

    .line 294
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    sget-object v2, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-virtual {v2}, Ljy/sdk/gamesdk/entity/UserInfo;->getSid()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;

    invoke-direct {v3, p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;-><init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Ljy/sdk/gamesdk/api/ApiClient;->sdkAutoLogin(Landroid/app/Activity;Ljava/lang/String;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    return-void
.end method

.method private startLoginByAccount()V
    .registers 6

    const/4 v0, 0x0

    .line 138
    sput-boolean v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->clickSwitch:Z

    .line 139
    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->switchEnable(Z)V

    .line 141
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "param"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    const-string v2, "&"

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 144
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->tv_login_auto_username:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v2

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v4, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;

    invoke-direct {v4, p0, v0, v1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;-><init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Ljy/sdk/gamesdk/api/ApiClient;->sdkNormalLogin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    return-void
.end method

.method private startLoginByPhone()V
    .registers 6

    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->clickSwitch:Z

    .line 70
    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->switchEnable(Z)V

    .line 72
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "param"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    .line 74
    iput-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mPhone:Ljava/lang/String;

    const-string v2, "&"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 76
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->tv_login_auto_username:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v2

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v4, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;

    invoke-direct {v4, p0, v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;-><init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Ljy/sdk/gamesdk/api/ApiClient;->sdkPhoneLogin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    return-void
.end method

.method private switchEnable(Z)V
    .registers 4

    .line 201
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljy/sdk/gamesdk/ui/AutoLoginFragment$3;

    invoke-direct {v1, p0, p1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment$3;-><init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment;Z)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_login_auto"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 44
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_login_auto_change_account"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->tv_login_auto_change_account:Landroid/view/View;

    .line 45
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->tv_login_auto_change_account:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_login_msg"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->tv_login_msg:Landroid/widget/TextView;

    .line 47
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_login_auto_username"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->tv_login_auto_username:Landroid/widget/TextView;

    .line 49
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->autoLoginFragmentDisMissListener:Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->setFragmentDismissListener(Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;)V

    .line 50
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "type"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_56

    .line 52
    sget-object p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->TAG:Ljava/lang/String;

    const-string v0, "try type sdk sid..."

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->startAutoLoginBySid()V

    goto :goto_7f

    :cond_56
    const/4 v0, 0x1

    if-ne p1, v0, :cond_64

    .line 55
    sget-object p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->TAG:Ljava/lang/String;

    const-string v0, "try type app token..."

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->startAutoLoginByAppToken()V

    goto :goto_7f

    :cond_64
    const/4 v0, 0x3

    if-ne p1, v0, :cond_72

    .line 58
    sget-object p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->TAG:Ljava/lang/String;

    const-string v0, "try type phone..."

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->startLoginByPhone()V

    goto :goto_7f

    :cond_72
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7f

    .line 61
    sget-object p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->TAG:Ljava/lang/String;

    const-string v0, "try type account..."

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->startLoginByAccount()V

    :cond_7f
    :goto_7f
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 380
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_login_auto_change_account"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_17

    const/4 p1, 0x1

    .line 382
    sput-boolean p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->clickSwitch:Z

    const/4 p1, -0x2

    .line 383
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V

    :cond_17
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public onStart()V
    .registers 3

    .line 346
    invoke-super {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->onStart()V

    .line 347
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 349
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 350
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_26
    return-void
.end method
