.class public Ljy/sdk/gamesdk/activity/PayActivity;
.super Landroid/app/Activity;
.source "PayActivity.java"


# static fields
.field public static ipayListener:Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static showPayView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;)V
    .registers 5

    .line 49
    sput-object p3, Ljy/sdk/gamesdk/activity/PayActivity;->ipayListener:Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;

    .line 50
    new-instance p3, Landroid/content/Intent;

    const-class v0, Ljy/sdk/gamesdk/activity/PayActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "url"

    .line 51
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "jyOrderId"

    .line 52
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showPayWebView()V
    .registers 4

    .line 31
    new-instance v0, Ljy/sdk/gamesdk/ui/PayFragment;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/PayFragment;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljy/sdk/gamesdk/activity/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/PayFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/PayFragment;->setCancelable(Z)V

    .line 34
    invoke-virtual {p0}, Ljy/sdk/gamesdk/activity/PayActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "PayActivity"

    invoke-virtual {v0, v1, v2}, Ljy/sdk/gamesdk/ui/PayFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljy/sdk/gamesdk/activity/PayActivity$1;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/activity/PayActivity$1;-><init>(Ljy/sdk/gamesdk/activity/PayActivity;)V

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/PayFragment;->setFragmentDismissListener(Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Ljy/sdk/gamesdk/activity/PayActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-gt p1, v0, :cond_16

    .line 24
    :cond_11
    sget p1, Ljy/sdk/gamesdk/Global;->GAME_ORITATION:I

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/activity/PayActivity;->setRequestedOrientation(I)V

    .line 26
    :cond_16
    invoke-direct {p0}, Ljy/sdk/gamesdk/activity/PayActivity;->showPayWebView()V

    const-string p1, "jy_sdk"

    const-string v0, "onCreate"

    .line 27
    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
