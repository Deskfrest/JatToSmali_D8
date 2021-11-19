.class public Ljy/sdk/common/components/JyWelcomeActivity;
.super Landroid/app/Activity;
.source "JyWelcomeActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private hasEnter:Z

.field private hasPic:Z

.field private proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

.field private thisActvityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "jy_sdk"

    .line 35
    iput-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->hasPic:Z

    .line 132
    iput-boolean v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->hasEnter:Z

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/common/components/JyWelcomeActivity;)Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Ljy/sdk/common/components/JyWelcomeActivity;)Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->hasPic:Z

    return p0
.end method

.method static synthetic access$200(Ljy/sdk/common/components/JyWelcomeActivity;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljy/sdk/common/components/JyWelcomeActivity;->goCpLauncherActivity()V

    return-void
.end method

.method private goCpLauncherActivity()V
    .registers 3

    .line 135
    :try_start_0
    iget-boolean v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->hasEnter:Z

    if-eqz v0, :cond_c

    .line 136
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "goCpLauncherActivity return!"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->hasEnter:Z

    .line 140
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    const-string v1, "jy_entryactivity"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/ManifestUtil;->getMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 142
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 143
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v1}, Ljy/sdk/common/components/JyWelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Ljy/sdk/common/components/JyWelcomeActivity;->finish()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_30

    :catch_2a
    move-exception v0

    .line 147
    iget-object v1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_30
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 232
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 233
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    if-eqz v0, :cond_e

    .line 234
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    iget-object v1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2, p3}, Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;->welcomeActivityOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_e
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 197
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    if-eqz v0, :cond_e

    .line 198
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    iget-object v1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;->onBackPressed(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 225
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    if-eqz v0, :cond_e

    .line 226
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    iget-object v1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;->welcomeActivityOnConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    :cond_e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Ljy/sdk/common/components/JyWelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x400000

    and-int/2addr p1, v0

    if-eqz p1, :cond_1b

    .line 52
    iget-object p1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v0, "launcher muddledness"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Ljy/sdk/common/components/JyWelcomeActivity;->finish()V

    return-void

    .line 57
    :cond_1b
    iput-object p0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    .line 58
    invoke-static {}, Ljy/sdk/shell/module/ModuleFactory;->getInstance()Ljy/sdk/shell/module/ModuleFactory;

    move-result-object p1

    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Ljy/sdk/shell/module/ModuleFactory;->getChannelModule(Landroid/content/Context;)Ljy/sdk/shell/module/ICommonInterface;

    move-result-object p1

    .line 59
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    const-string v1, "jy_splash_pic"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljy/sdk/common/utils/misc/ManifestUtil;->getMetaBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->hasPic:Z

    if-eqz p1, :cond_4e

    .line 60
    instance-of v0, p1, Ljy/sdk/common/components/IwelcomeActivityProxy;

    if-eqz v0, :cond_4e

    .line 61
    check-cast p1, Ljy/sdk/common/components/IwelcomeActivityProxy;

    if-eqz p1, :cond_4e

    .line 63
    invoke-interface {p1}, Ljy/sdk/common/components/IwelcomeActivityProxy;->getProxy()Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    .line 64
    iget-object p1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    new-instance v1, Ljy/sdk/common/components/JyWelcomeActivity$1;

    invoke-direct {v1, p0}, Ljy/sdk/common/components/JyWelcomeActivity$1;-><init>(Ljy/sdk/common/components/JyWelcomeActivity;)V

    invoke-interface {p1, v0, v1}, Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;->welcomeActivityOnCreate(Landroid/app/Activity;Ljy/sdk/shell/callback/ICommonCallBack;)V

    .line 83
    :cond_4e
    iget-boolean p1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->hasPic:Z

    if-eqz p1, :cond_b9

    .line 85
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x5dc

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    new-instance v0, Ljy/sdk/common/components/JyWelcomeActivity$2;

    invoke-direct {v0, p0}, Ljy/sdk/common/components/JyWelcomeActivity$2;-><init>(Ljy/sdk/common/components/JyWelcomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0}, Ljy/sdk/common/components/JyWelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 104
    iget-object v2, p0, Ljy/sdk/common/components/JyWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ori:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ne v1, v2, :cond_97

    .line 106
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "jy_commonsdk_welecome_land"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a4

    :cond_97
    const/4 v2, 0x1

    if-ne v1, v2, :cond_a4

    .line 108
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "jy_commonsdk_welecome"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_a4
    :goto_a4
    if-nez v0, :cond_aa

    .line 113
    invoke-direct {p0}, Ljy/sdk/common/components/JyWelcomeActivity;->goCpLauncherActivity()V

    return-void

    .line 118
    :cond_aa
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 121
    invoke-virtual {p0, v1}, Ljy/sdk/common/components/JyWelcomeActivity;->setContentView(Landroid/view/View;)V

    goto :goto_c0

    .line 124
    :cond_b9
    iget-object p1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v0, " this channel hasPic :false "

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c0
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    if-eqz v0, :cond_e

    .line 212
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    iget-object v1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;->welcomeActivityOnDestroy(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 204
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    if-eqz v0, :cond_e

    .line 205
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    iget-object v1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;->welcomeActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_e
    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 169
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    if-eqz v0, :cond_e

    .line 170
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    iget-object v1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;->welcomeActivityOnPause(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    .line 189
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 190
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    if-eqz v0, :cond_e

    .line 191
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    iget-object v1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2, p3}, Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;->welcomeActivityOnRequestPermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    :cond_e
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 183
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    if-eqz v0, :cond_e

    .line 184
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    iget-object v1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;->welcomeActivityOnRestart(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    if-eqz v0, :cond_e

    .line 163
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    iget-object v1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;->welcomeActivityOnResume(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 155
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    if-eqz v0, :cond_e

    .line 156
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    iget-object v1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;->welcomeActivityOnStart(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 176
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    if-eqz v0, :cond_e

    .line 177
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    iget-object v1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;->welcomeActivityOnStop(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 218
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    if-eqz v0, :cond_e

    .line 219
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity;->proxy:Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;

    iget-object v1, p0, Ljy/sdk/common/components/JyWelcomeActivity;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Ljy/sdk/common/components/IwelcomeActivityProxy$IwelcomeActivityLifeCycle;->welcomeActivityOnWindowFocusChanged(Landroid/app/Activity;Z)V

    :cond_e
    return-void
.end method
