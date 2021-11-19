.class public Ljy/sdk/gamesdk/update/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "jy_sdk"


# instance fields
.field private activity:Landroid/app/Activity;

.field private info:Ljy/sdk/gamesdk/update/ApkInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V
    .registers 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Ljy/sdk/gamesdk/update/UpdateManager;->activity:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Ljy/sdk/gamesdk/update/UpdateManager;->info:Ljy/sdk/gamesdk/update/ApkInfo;

    .line 31
    iget-object v0, p0, Ljy/sdk/gamesdk/update/UpdateManager;->info:Ljy/sdk/gamesdk/update/ApkInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Ljy/sdk/gamesdk/update/ApkInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Ljy/sdk/gamesdk/update/ApkInfo;->appPath:Ljava/lang/String;

    const-string p1, "jy_sdk"

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Ljy/sdk/gamesdk/update/ApkInfo;->appPath:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static checkLocalFile(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)Z
    .registers 7

    .line 45
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Ljy/sdk/gamesdk/update/ApkInfo;->appPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_9b

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_9b

    .line 51
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 52
    iget-object v1, p1, Ljy/sdk/gamesdk/update/ApkInfo;->appPath:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_2d

    const-string p0, "jy_sdk"

    const-string p1, "\u83b7\u53d6\u4e0d\u5230\u672c\u5730apk\u7684\u4fe1\u606f,\u5220\u9664\u539f\u6709,\u4e0b\u8f7d!"

    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return v2

    .line 59
    :cond_2d
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v3, p1, Ljy/sdk/gamesdk/update/ApkInfo;->versionCode:I

    if-ge v1, v3, :cond_5e

    const-string v1, "jy_sdk"

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u672c\u5730\u7248\u672c:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u7f51\u7edc\u7248\u672c: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Ljy/sdk/gamesdk/update/ApkInfo;->versionCode:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u672c\u5730apk\u7684\u7248\u672c\u6bd4\u8f83\u5c0f,\u5220\u9664\u539f\u6709,\u4e0b\u8f7d!"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return v2

    :cond_5e
    const-string v1, "jy_sdk"

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u672c\u5730\u7248\u672c:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u7f51\u7edc\u7248\u672c: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Ljy/sdk/gamesdk/update/ApkInfo;->versionCode:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u672c\u5730apk\u7684\u7248\u672c\u6bd4\u8f83\u5927\u6216\u8005\u76f8\u7b49,\u4e0d\u7528\u4e0b\u8f7d"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_85} :catch_87

    const/4 p0, 0x0

    return p0

    :catch_87
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    :try_start_8b
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_93
    const-string p0, "jy_sdk"

    const-string p1, "\u5f02\u5e38,\u5220\u9664\u539f\u6709,\u4e0b\u8f7d!"

    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9b
    :goto_9b
    const-string p0, "jy_sdk"

    const-string p1, "\u672c\u5730\u6587\u4ef6\u4e0d\u5b58\u5728,\u4e0b\u8f7d"

    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static checkLocalInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 89
    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_d

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    :catch_d
    move-exception p0

    const-string p1, "jy_sdk"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLocalInstalledApp :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public showUpdateDialogFragment()V
    .registers 5

    .line 35
    new-instance v0, Ljy/sdk/gamesdk/ui/UpdateFragment1;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/UpdateFragment1;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "apkInfo"

    .line 37
    iget-object v3, p0, Ljy/sdk/gamesdk/update/UpdateManager;->info:Ljy/sdk/gamesdk/update/ApkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 38
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/UpdateFragment1;->setArguments(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/UpdateFragment1;->setCancelable(Z)V

    .line 40
    iget-object v1, p0, Ljy/sdk/gamesdk/update/UpdateManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "UpdateManager"

    invoke-virtual {v0, v1, v2}, Ljy/sdk/gamesdk/ui/UpdateFragment1;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
