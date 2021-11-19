.class public Ljy/sdk/common/components/JyProActivity;
.super Landroid/app/Activity;
.source "JyProActivity.java"


# static fields
.field public static final TYPE_DEX:I = 0x1

.field public static final TYPE_LOCAL:I = 0x2

.field private static onErrorLisenter:Ljy/sdk/common/components/ChUtil$OnErrorLisenter;


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private mContentView:Landroid/widget/FrameLayout;

.field private mContentViewId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "jy_sdk"

    .line 17
    iput-object v0, p0, Ljy/sdk/common/components/JyProActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Ljy/sdk/common/components/JyProActivity;->mContentViewId:I

    return-void
.end method

.method private initContentView()V
    .registers 3

    .line 36
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Ljy/sdk/common/components/JyProActivity;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljy/sdk/common/components/JyProActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 37
    iget-object v0, p0, Ljy/sdk/common/components/JyProActivity;->mContentView:Landroid/widget/FrameLayout;

    iget v1, p0, Ljy/sdk/common/components/JyProActivity;->mContentViewId:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 38
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 39
    iget-object v1, p0, Ljy/sdk/common/components/JyProActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Ljy/sdk/common/components/JyProActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initPlugin()V
    .registers 7

    .line 44
    invoke-virtual {p0}, Ljy/sdk/common/components/JyProActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pluginType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 45
    invoke-virtual {p0}, Ljy/sdk/common/components/JyProActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pluginName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_22

    .line 47
    iget-object v0, p0, Ljy/sdk/common/components/JyProActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u4e0d\u652f\u6301\u7684\u542f\u52a8\u65b9\u5f0f"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Ljy/sdk/common/components/JyProActivity;->finish()V

    return-void

    :cond_22
    const/4 v2, 0x2

    if-ne v0, v2, :cond_81

    .line 52
    :try_start_25
    iget-object v0, p0, Ljy/sdk/common/components/JyProActivity;->TAG:Ljava/lang/String;

    const-string v2, "\u5185\u90e8\u542f\u52a8"

    invoke-static {v0, v2}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 55
    check-cast v0, Landroid/app/Fragment;

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pluginKeyId"

    .line 57
    invoke-virtual {p0}, Ljy/sdk/common/components/JyProActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pluginKeyId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pluginParam"

    .line 58
    invoke-virtual {p0}, Ljy/sdk/common/components/JyProActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pluginParam"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Ljy/sdk/common/components/JyProActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget v2, p0, Ljy/sdk/common/components/JyProActivity;->mContentViewId:I

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_6d} :catch_6f

    goto/16 :goto_fb

    :catch_6f
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    invoke-virtual {p0}, Ljy/sdk/common/components/JyProActivity;->finish()V

    .line 65
    sget-object v0, Ljy/sdk/common/components/JyProActivity;->onErrorLisenter:Ljy/sdk/common/components/ChUtil$OnErrorLisenter;

    if-eqz v0, :cond_fb

    .line 67
    sget-object v0, Ljy/sdk/common/components/JyProActivity;->onErrorLisenter:Ljy/sdk/common/components/ChUtil$OnErrorLisenter;

    invoke-interface {v0}, Ljy/sdk/common/components/ChUtil$OnErrorLisenter;->onError()V

    goto/16 :goto_fb

    :cond_81
    const/4 v2, 0x1

    if-ne v0, v2, :cond_fb

    .line 72
    iget-object v0, p0, Ljy/sdk/common/components/JyProActivity;->TAG:Ljava/lang/String;

    const-string v2, "\u5916\u90e8\u52a8\u6001\u52a0\u8f7d"

    invoke-static {v0, v2}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Ljy/sdk/common/components/JyProActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "dexPath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Ljy/sdk/common/components/JyProActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "dexDir"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    :try_start_9f
    new-instance v3, Ldalvik/system/DexClassLoader;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljy/sdk/common/components/JyProActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v0, v2, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 78
    invoke-virtual {v3, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 81
    check-cast v0, Landroid/app/Fragment;

    .line 82
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pluginKeyId"

    .line 83
    invoke-virtual {p0}, Ljy/sdk/common/components/JyProActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pluginKeyId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pluginParam"

    .line 84
    invoke-virtual {p0}, Ljy/sdk/common/components/JyProActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pluginParam"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Ljy/sdk/common/components/JyProActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget v2, p0, Ljy/sdk/common/components/JyProActivity;->mContentViewId:I

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_ea} :catch_eb

    goto :goto_fb

    :catch_eb
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    invoke-virtual {p0}, Ljy/sdk/common/components/JyProActivity;->finish()V

    .line 90
    sget-object v0, Ljy/sdk/common/components/JyProActivity;->onErrorLisenter:Ljy/sdk/common/components/ChUtil$OnErrorLisenter;

    if-eqz v0, :cond_fb

    .line 92
    sget-object v0, Ljy/sdk/common/components/JyProActivity;->onErrorLisenter:Ljy/sdk/common/components/ChUtil$OnErrorLisenter;

    invoke-interface {v0}, Ljy/sdk/common/components/ChUtil$OnErrorLisenter;->onError()V

    :cond_fb
    :goto_fb
    return-void
.end method

.method public static showJyPro(Landroid/app/Activity;Landroid/content/Intent;Ljy/sdk/common/components/ChUtil$OnErrorLisenter;)V
    .registers 3

    .line 101
    sput-object p2, Ljy/sdk/common/components/JyProActivity;->onErrorLisenter:Ljy/sdk/common/components/ChUtil$OnErrorLisenter;

    .line 102
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 108
    iget-object v0, p0, Ljy/sdk/common/components/JyProActivity;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iput-object p0, p0, Ljy/sdk/common/components/JyProActivity;->context:Landroid/app/Activity;

    .line 30
    invoke-direct {p0}, Ljy/sdk/common/components/JyProActivity;->initContentView()V

    .line 31
    invoke-direct {p0}, Ljy/sdk/common/components/JyProActivity;->initPlugin()V

    .line 32
    iget-object p1, p0, Ljy/sdk/common/components/JyProActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 114
    iget-object v0, p0, Ljy/sdk/common/components/JyProActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
