.class public Ljy/sdk/gamesdk/activity/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# static fields
.field public static final ID_CONTENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "jy_sdk"

.field public static cpActivity:Landroid/app/Activity;

.field private static jyloginListener:Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;


# instance fields
.field private autoLoginFragment:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

.field private containerView:Landroid/widget/FrameLayout;

.field private context:Landroid/content/Context;

.field private loginMainFragment:Ljy/sdk/gamesdk/ui/LoginMainFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initContentBack()V
    .registers 3

    .line 47
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->containerView:Landroid/widget/FrameLayout;

    .line 48
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/activity/LoginActivity;->setContentView(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->containerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 50
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 51
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->containerView:Landroid/widget/FrameLayout;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private initContentView()V
    .registers 4

    .line 56
    sget-object v0, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    sget-object v0, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/entity/UserInfo;->getSid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_19

    :cond_12
    const/4 v0, 0x2

    const-string v2, ""

    .line 67
    invoke-virtual {p0, v0, v2, v1}, Ljy/sdk/gamesdk/activity/LoginActivity;->showAutoLoginFragment(ILjava/lang/String;Z)V

    goto :goto_3d

    .line 58
    :cond_19
    :goto_19
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->context:Landroid/content/Context;

    const-string v2, "use_app_token"

    invoke-static {v0, v2, v1}, Ljy/sdk/gamesdk/utils/SpUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v0, Ljy/sdk/gamesdk/entity/InitInfo;->app_token_account:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, ""

    .line 60
    invoke-virtual {p0, v1, v0, v1}, Ljy/sdk/gamesdk/activity/LoginActivity;->showAutoLoginFragment(ILjava/lang/String;Z)V

    goto :goto_3d

    .line 63
    :cond_33
    sget-object v0, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget v0, Ljy/sdk/gamesdk/entity/InitInfo;->defaultCheck:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljy/sdk/gamesdk/activity/LoginActivity;->showLoginMainFragment(I[Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method public static onLoginFailed(Ljava/lang/String;)V
    .registers 2

    .line 126
    sget-object v0, Ljy/sdk/gamesdk/activity/LoginActivity;->jyloginListener:Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;

    invoke-interface {v0, p0}, Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;->onLoginFailed(Ljava/lang/String;)V

    return-void
.end method

.method public static onLoginSuc(Ljava/lang/String;)V
    .registers 2

    .line 120
    sget-object v0, Ljy/sdk/gamesdk/activity/LoginActivity;->jyloginListener:Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;

    invoke-interface {v0, p0}, Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;->onLoginSuc(Ljava/lang/String;)V

    .line 121
    sget-object v0, Ljy/sdk/gamesdk/activity/LoginActivity;->cpActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Ljy/sdk/gamesdk/GameService;->dologinedTask(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static onLogout(Z)V
    .registers 2

    .line 130
    sget-object v0, Ljy/sdk/gamesdk/activity/LoginActivity;->cpActivity:Landroid/app/Activity;

    invoke-static {v0}, Ljy/sdk/gamesdk/GameService;->onCpLogout(Landroid/app/Activity;)V

    .line 131
    sget-object v0, Ljy/sdk/gamesdk/activity/LoginActivity;->jyloginListener:Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;

    invoke-interface {v0, p0}, Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;->onLogout(Z)V

    return-void
.end method

.method public static onReg(Ljava/lang/String;)V
    .registers 2

    .line 135
    sget-object v0, Ljy/sdk/gamesdk/activity/LoginActivity;->jyloginListener:Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;

    invoke-interface {v0, p0}, Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;->onReg(Ljava/lang/String;)V

    return-void
.end method

.method public static showLoginView(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;)V
    .registers 3

    .line 147
    sput-object p0, Ljy/sdk/gamesdk/activity/LoginActivity;->cpActivity:Landroid/app/Activity;

    .line 148
    sput-object p1, Ljy/sdk/gamesdk/activity/LoginActivity;->jyloginListener:Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;

    .line 149
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ljy/sdk/gamesdk/activity/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Ljy/sdk/gamesdk/activity/LoginActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-gt p1, v0, :cond_16

    .line 39
    :cond_11
    sget p1, Ljy/sdk/gamesdk/Global;->GAME_ORITATION:I

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/activity/LoginActivity;->setRequestedOrientation(I)V

    .line 41
    :cond_16
    iput-object p0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->context:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljy/sdk/gamesdk/activity/LoginActivity;->initContentBack()V

    .line 43
    invoke-direct {p0}, Ljy/sdk/gamesdk/activity/LoginActivity;->initContentView()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "jy_sdk"

    const-string v1, "onDestroy"

    .line 156
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :try_start_a
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->loginMainFragment:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->loginMainFragment:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 159
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->loginMainFragment:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->dismiss()V

    .line 160
    iput-object v1, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->loginMainFragment:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    .line 162
    :cond_1e
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->autoLoginFragment:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->autoLoginFragment:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 163
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->autoLoginFragment:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss()V

    .line 164
    iput-object v1, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->autoLoginFragment:Ljy/sdk/gamesdk/ui/AutoLoginFragment;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_31} :catch_32

    goto :goto_3b

    :catch_32
    move-exception v0

    const-string v1, "jy_sdk"

    .line 167
    invoke-static {v1, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public showAutoLoginFragment(ILjava/lang/String;Z)V
    .registers 6

    .line 78
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->autoLoginFragment:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->autoLoginFragment:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_13

    .line 79
    :cond_c
    new-instance v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;-><init>()V

    iput-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->autoLoginFragment:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    .line 81
    :cond_13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 82
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "param"

    .line 83
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nextAuto"

    .line 84
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->autoLoginFragment:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->autoLoginFragment:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->setCancelable(Z)V

    .line 87
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->autoLoginFragment:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_58

    invoke-virtual {p0}, Ljy/sdk/gamesdk/activity/LoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "LoginActivity"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 88
    invoke-virtual {p0}, Ljy/sdk/gamesdk/activity/LoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->autoLoginFragment:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {p1, p2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_6b

    .line 90
    :cond_58
    invoke-virtual {p0}, Ljy/sdk/gamesdk/activity/LoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->autoLoginFragment:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    const-string p3, "LoginActivity"

    invoke-virtual {p1, p2, p3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_6b
    return-void
.end method

.method public varargs showLoginMainFragment(I[Ljava/lang/String;)V
    .registers 5

    const-string v0, "jy_sdk"

    const-string v1, "try type sdk main..."

    .line 96
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->loginMainFragment:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->loginMainFragment:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 98
    :cond_13
    new-instance v0, Ljy/sdk/gamesdk/ui/LoginMainFragment;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;-><init>()V

    iput-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->loginMainFragment:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    .line 100
    :cond_1a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "checkType"

    .line 101
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_2e

    .line 102
    array-length p1, p2

    if-lez p1, :cond_2e

    const-string p1, "accountParam"

    .line 103
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 104
    :cond_2e
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->loginMainFragment:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->setArguments(Landroid/os/Bundle;)V

    .line 105
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->loginMainFragment:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->setCanceledOnTouchOutside(Z)V

    .line 106
    invoke-virtual {p0}, Ljy/sdk/gamesdk/activity/LoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 108
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->loginMainFragment:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "LoginActivity"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 109
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->loginMainFragment:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    invoke-virtual {p2, p1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_66

    .line 111
    :cond_5b
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/LoginActivity;->loginMainFragment:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    const-string v0, "LoginActivity"

    invoke-virtual {p2, p1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_66
    return-void
.end method
