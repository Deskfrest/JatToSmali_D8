.class public Ljy/sdk/gamesdk/update/InstallUtil;
.super Ljava/lang/Object;
.source "InstallUtil.java"


# static fields
.field private static TAG:Ljava/lang/String; = "jy_sdk"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 15
    sget-object v0, Ljy/sdk/gamesdk/update/InstallUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V
    .registers 2

    .line 15
    invoke-static {p0, p1}, Ljy/sdk/gamesdk/update/InstallUtil;->installForN(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V

    return-void
.end method

.method public static declared-synchronized callInstall(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V
    .registers 5

    const-class v0, Ljy/sdk/gamesdk/update/InstallUtil;

    monitor-enter v0

    .line 21
    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_d

    .line 23
    invoke-static {p0, p1}, Ljy/sdk/gamesdk/update/InstallUtil;->installForM(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V

    goto :goto_1a

    .line 25
    :cond_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_17

    .line 27
    invoke-static {p0, p1}, Ljy/sdk/gamesdk/update/InstallUtil;->installForN(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V

    goto :goto_1a

    .line 30
    :cond_17
    invoke-static {p0, p1}, Ljy/sdk/gamesdk/update/InstallUtil;->installForO(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    .line 32
    :goto_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    .line 20
    monitor-exit v0

    throw p0
.end method

.method private static installForM(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V
    .registers 12

    .line 86
    :try_start_0
    sget-object v0, Ljy/sdk/gamesdk/update/InstallUtil;->TAG:Ljava/lang/String;

    const-string v1, "7.0\u4ee5\u4e0b\u5b89\u88c5"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Ljy/sdk/gamesdk/update/ApkInfo;->appPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_44

    :catch_27
    move-exception v0

    .line 93
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v1

    new-instance v9, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v3, 0x2

    const/4 v4, 0x7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Ljy/sdk/gamesdk/update/ApkInfo;->resTag:Ljava/lang/String;

    iget-object v7, p1, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    iget-object v8, p1, Ljy/sdk/gamesdk/update/ApkInfo;->callMethod:Ljava/lang/String;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v9}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_44
    return-void
.end method

.method private static installForN(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V
    .registers 12

    .line 67
    sget-object v0, Ljy/sdk/gamesdk/update/InstallUtil;->TAG:Ljava/lang/String;

    const-string v1, "7.0\u548c7.1\u5b89\u88c5"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Ljy/sdk/gamesdk/update/ApkInfo;->appPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    :try_start_e
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    sget-object v2, Ljy/sdk/gamesdk/update/InstallUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jyfileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Ljy/sdk/gamesdk/update/JyFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    .line 75
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_59} :catch_5a

    goto :goto_78

    :catch_5a
    move-exception v0

    .line 78
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v1

    new-instance v9, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v3, 0x2

    const/16 v4, 0x8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Ljy/sdk/gamesdk/update/ApkInfo;->resTag:Ljava/lang/String;

    iget-object v7, p1, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    iget-object v8, p1, Ljy/sdk/gamesdk/update/ApkInfo;->callMethod:Ljava/lang/String;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v9}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_78
    return-void
.end method

.method private static installForO(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 37
    :try_start_0
    sget-object v0, Ljy/sdk/gamesdk/update/InstallUtil;->TAG:Ljava/lang/String;

    const-string v1, "8.0\u53ca\u4ee5\u4e0a\u5b89\u88c5"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    .line 39
    sget-object v1, Ljy/sdk/gamesdk/update/InstallUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u662f\u5426\u5141\u8bb8\u5b89\u88c5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2b

    .line 41
    invoke-static {p0, p1}, Ljy/sdk/gamesdk/update/InstallUtil;->installForN(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V

    goto :goto_5b

    .line 44
    :cond_2b
    new-instance v0, Ljy/sdk/gamesdk/update/InstallUtil$1;

    invoke-direct {v0, p0, p1}, Ljy/sdk/gamesdk/update/InstallUtil$1;-><init>(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V

    .line 56
    sput-object v0, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->listener:Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_5b

    :catch_3d
    move-exception v0

    .line 60
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v1

    new-instance v9, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v3, 0x2

    const/16 v4, 0x9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Ljy/sdk/gamesdk/update/ApkInfo;->resTag:Ljava/lang/String;

    iget-object v7, p1, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    iget-object v8, p1, Ljy/sdk/gamesdk/update/ApkInfo;->callMethod:Ljava/lang/String;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v9}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5b
    return-void
.end method
