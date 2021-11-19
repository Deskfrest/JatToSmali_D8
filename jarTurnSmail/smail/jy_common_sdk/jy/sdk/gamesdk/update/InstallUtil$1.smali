.class final Ljy/sdk/gamesdk/update/InstallUtil$1;
.super Ljava/lang/Object;
.source "InstallUtil.java"

# interfaces
.implements Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/update/InstallUtil;->installForO(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$info:Ljy/sdk/gamesdk/update/ApkInfo;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V
    .registers 3

    .line 44
    iput-object p1, p0, Ljy/sdk/gamesdk/update/InstallUtil$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Ljy/sdk/gamesdk/update/InstallUtil$1;->val$info:Ljy/sdk/gamesdk/update/ApkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public permissionFail()V
    .registers 3

    .line 53
    # getter for: Ljy/sdk/gamesdk/update/InstallUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/gamesdk/update/InstallUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6388\u6743\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public permissionSuccess()V
    .registers 3

    .line 47
    # getter for: Ljy/sdk/gamesdk/update/InstallUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/gamesdk/update/InstallUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6388\u6743\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Ljy/sdk/gamesdk/update/InstallUtil$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Ljy/sdk/gamesdk/update/InstallUtil$1;->val$info:Ljy/sdk/gamesdk/update/ApkInfo;

    # invokes: Ljy/sdk/gamesdk/update/InstallUtil;->installForN(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V
    invoke-static {v0, v1}, Ljy/sdk/gamesdk/update/InstallUtil;->access$100(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V

    return-void
.end method
