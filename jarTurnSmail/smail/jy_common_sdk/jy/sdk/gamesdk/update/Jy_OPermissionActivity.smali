.class public Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;
.super Landroid/app/Activity;
.source "Jy_OPermissionActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;
    }
.end annotation


# static fields
.field public static final INSTALL_PACKAGES_REQUESTCODE:I = 0x1

.field public static listener:Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;)Landroid/app/AlertDialog;
    .registers 1

    .line 22
    iget-object p0, p0, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private showDialog()V
    .registers 4

    .line 70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    .line 72
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x103023a

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_1a

    .line 74
    :cond_14
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_1a
    const-string v1, "\u5b89\u88c5\u63d0\u793a"

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u4e3a\u4e86\u6b63\u5e38\u5b89\u88c5\u6b64app,\u8bf7\u70b9\u51fb\u8bbe\u7f6e\u6309\u94ae,\u5141\u8bb8\u5b89\u88c5\u672a\u77e5\u6765\u6e90\u5e94\u7528"

    .line 77
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u8bbe\u7f6e"

    .line 78
    new-instance v2, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$1;

    invoke-direct {v2, p0}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$1;-><init>(Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    .line 85
    new-instance v2, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$2;

    invoke-direct {v2, p0}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$2;-><init>(Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 96
    iget-object v0, p0, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_13

    const/4 p1, -0x1

    if-ne p2, p1, :cond_13

    .line 111
    sget-object p1, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->listener:Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;

    if-eqz p1, :cond_1c

    .line 112
    sget-object p1, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->listener:Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;

    invoke-interface {p1}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;->permissionSuccess()V

    goto :goto_1c

    .line 116
    :cond_13
    sget-object p1, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->listener:Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;

    if-eqz p1, :cond_1c

    .line 117
    sget-object p1, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->listener:Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;

    invoke-interface {p1}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;->permissionFail()V

    .line 120
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_15

    const/4 p1, 0x1

    .line 36
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.REQUEST_INSTALL_PACKAGES"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0, p1}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_18

    .line 39
    :cond_15
    invoke-virtual {p0}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->finish()V

    :goto_18
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    goto :goto_2d

    .line 50
    :cond_7
    array-length p1, p3

    if-lez p1, :cond_23

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_23

    const-string p1, "jy_sdk"

    const-string p2, "\u52a8\u6001\u7533\u8bf7\u6210\u529f"

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object p1, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->listener:Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;

    if-eqz p1, :cond_2d

    .line 53
    sget-object p1, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->listener:Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;

    invoke-interface {p1}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;->permissionSuccess()V

    .line 54
    invoke-virtual {p0}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->finish()V

    goto :goto_2d

    :cond_23
    const-string p1, "jy_sdk"

    const-string p2, "\u52a8\u6001\u7533\u8bf7\u5931\u8d25,\u5f39\u5bf9\u8bdd\u6846"

    .line 57
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->showDialog()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public startInstallPermissionSettingActivity()V
    .registers 5

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x1

    .line 103
    invoke-virtual {p0, v0, v1}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
