.class public Ljy/sdk/gamesdk/update/Spread;
.super Ljava/lang/Object;
.source "Spread.java"


# static fields
.field private static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljy/sdk/gamesdk/update/ApkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activity:Landroid/app/Activity;

.field private downloadStateListener:Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljy/sdk/gamesdk/update/Spread;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljy/sdk/gamesdk/update/Spread$1;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/update/Spread$1;-><init>(Ljy/sdk/gamesdk/update/Spread;)V

    iput-object v0, p0, Ljy/sdk/gamesdk/update/Spread;->downloadStateListener:Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;

    .line 55
    iput-object p1, p0, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    .line 19
    sget-object v0, Ljy/sdk/gamesdk/update/Spread;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Ljy/sdk/gamesdk/update/Spread;)Landroid/app/Activity;
    .registers 1

    .line 19
    iget-object p0, p0, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public spreadAppByApkInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ""

    const-string v4, ""

    :try_start_8
    const-string v5, "jy_sdk"

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "installApp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v2, Ljy/sdk/gamesdk/update/ApkInfo;

    invoke-direct {v2}, Ljy/sdk/gamesdk/update/ApkInfo;-><init>()V

    const-string v6, "url"

    .line 67
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    .line 68
    iget-object v6, v2, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_32} :catch_141

    :try_start_32
    const-string v3, "packageName"

    .line 69
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljy/sdk/gamesdk/update/ApkInfo;->packageName:Ljava/lang/String;

    .line 70
    iget-object v3, v2, Ljy/sdk/gamesdk/update/ApkInfo;->packageName:Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3c} :catch_138

    :try_start_3c
    const-string v4, "versionCode"

    .line 71
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Ljy/sdk/gamesdk/update/ApkInfo;->versionCode:I

    .line 72
    iget-object v4, v2, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    invoke-static {v4}, Ljy/sdk/common/utils/encode/MD5Provider;->md5string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljy/sdk/gamesdk/update/ApkInfo;->appName:Ljava/lang/String;

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    const-string v7, "upload"

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Ljy/sdk/gamesdk/update/ApkInfo;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljy/sdk/gamesdk/update/ApkInfo;->appPath:Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_75} :catch_12c

    move-object/from16 v5, p2

    .line 75
    :try_start_77
    iput-object v5, v2, Ljy/sdk/gamesdk/update/ApkInfo;->resTag:Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_79} :catch_12a

    move-object/from16 v15, p3

    .line 76
    :try_start_7b
    iput-object v15, v2, Ljy/sdk/gamesdk/update/ApkInfo;->callMethod:Ljava/lang/String;

    .line 77
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v4

    iget-object v14, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    new-instance v13, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget-object v10, v2, Ljy/sdk/gamesdk/update/ApkInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_91} :catch_128

    move-object v7, v13

    move-object/from16 v16, v12

    move-object v12, v5

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    move-object/from16 v18, v3

    move-object v3, v14

    move-object v14, v15

    :try_start_9d
    invoke-direct/range {v7 .. v14}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v17

    invoke-virtual {v4, v3, v7}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 79
    sget-object v3, Ljy/sdk/gamesdk/update/Spread;->map:Ljava/util/HashMap;

    iget-object v4, v2, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    const-string v2, "jy_sdk"

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d\u4e2d..."

    .line 80
    invoke-static {v2, v3}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d\u4e2d..."

    invoke-static {v2, v3}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 84
    :cond_be
    iget-object v3, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    invoke-static {v3, v2}, Ljy/sdk/gamesdk/update/UpdateManager;->checkLocalFile(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 86
    new-instance v3, Ljy/sdk/gamesdk/update/DownloadManager;

    iget-object v4, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    iget-object v7, v1, Ljy/sdk/gamesdk/update/Spread;->downloadStateListener:Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;

    const/4 v8, 0x0

    invoke-direct {v3, v4, v2, v7, v8}, Ljy/sdk/gamesdk/update/DownloadManager;-><init>(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;Z)V

    .line 87
    invoke-virtual {v3}, Ljy/sdk/gamesdk/update/DownloadManager;->start()V

    .line 88
    iget-object v3, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    const-string v4, "\u5f00\u59cb\u4e0b\u8f7d~"

    invoke-static {v3, v4}, Ljy/sdk/common/utils/misc/UIUtil;->toastOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 89
    sget-object v3, Ljy/sdk/gamesdk/update/Spread;->map:Ljava/util/HashMap;

    iget-object v4, v2, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v3

    iget-object v4, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    new-instance v14, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v8, 0x1

    const/4 v9, 0x2

    iget-object v10, v2, Ljy/sdk/gamesdk/update/ApkInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v2, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    move-object v7, v14

    move-object v12, v5

    move-object v2, v14

    move-object v14, v15

    invoke-direct/range {v7 .. v14}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    goto/16 :goto_185

    .line 94
    :cond_101
    iget-object v3, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    invoke-static {v3, v2}, Ljy/sdk/gamesdk/update/InstallUtil;->callInstall(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V

    .line 95
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v3

    iget-object v4, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    new-instance v14, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v8, 0x1

    const/4 v9, 0x3

    iget-object v10, v2, Ljy/sdk/gamesdk/update/ApkInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v2, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    move-object v7, v14

    move-object v12, v5

    move-object v2, v14

    move-object v14, v15

    invoke-direct/range {v7 .. v14}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_124} :catch_126

    goto/16 :goto_185

    :catch_126
    move-exception v0

    goto :goto_133

    :catch_128
    move-exception v0

    goto :goto_131

    :catch_12a
    move-exception v0

    goto :goto_12f

    :catch_12c
    move-exception v0

    move-object/from16 v5, p2

    :goto_12f
    move-object/from16 v15, p3

    :goto_131
    move-object/from16 v18, v3

    :goto_133
    move-object v2, v0

    move-object v13, v6

    move-object/from16 v10, v18

    goto :goto_149

    :catch_138
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    move-object v2, v0

    move-object v10, v4

    move-object v13, v6

    goto :goto_149

    :catch_141
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    move-object v2, v0

    move-object v13, v3

    move-object v10, v4

    .line 99
    :goto_149
    iget-object v3, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0b\u8f7d\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v3

    iget-object v4, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    new-instance v6, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v8, 0x1

    const/4 v9, 0x5

    iget-object v7, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v7, v6

    move-object v12, v5

    move-object v14, v15

    move-object/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v6}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 101
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_185
    return-void
.end method

.method public spreadAppOnlyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    .line 109
    :try_start_4
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 110
    iget-object v2, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    const-string v3, "\u94fe\u63a5\u4e3a\u7a7a"

    invoke-static {v2, v3}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_12
    const-string v2, ".apk"

    .line 113
    invoke-virtual {v10, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 114
    iget-object v2, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    const-string v3, "\u94fe\u63a5\u4e0d\u662f\u4ee5apk\u7ed3\u5c3e"

    invoke-static {v2, v3}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 117
    :cond_22
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v11

    iget-object v12, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    new-instance v13, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "\u53ea\u63d0\u4f9b\u94fe\u63a5\u4e0b\u8f7d"

    iget-object v2, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v13

    move-object/from16 v7, p2

    move-object v8, v10

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 118
    sget-object v2, Ljy/sdk/gamesdk/update/Spread;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string v2, "jy_sdk"

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d\u4e2d..."

    .line 119
    invoke-static {v2, v3}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d\u4e2d..."

    invoke-static {v2, v3}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_57
    new-instance v2, Ljy/sdk/gamesdk/update/ApkInfo;

    invoke-direct {v2}, Ljy/sdk/gamesdk/update/ApkInfo;-><init>()V

    .line 125
    iput-object v10, v2, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    const v3, 0x7fffffff

    .line 126
    iput v3, v2, Ljy/sdk/gamesdk/update/ApkInfo;->versionCode:I

    .line 127
    invoke-static/range {p1 .. p1}, Ljy/sdk/common/utils/encode/MD5Provider;->md5string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljy/sdk/gamesdk/update/ApkInfo;->appName:Ljava/lang/String;

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    const-string v5, "upload"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Ljy/sdk/gamesdk/update/ApkInfo;->appName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljy/sdk/gamesdk/update/ApkInfo;->appPath:Ljava/lang/String;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_92} :catch_dc

    move-object/from16 v11, p2

    .line 130
    :try_start_94
    iput-object v11, v2, Ljy/sdk/gamesdk/update/ApkInfo;->resTag:Ljava/lang/String;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_96} :catch_da

    move-object/from16 v12, p3

    .line 131
    :try_start_98
    iput-object v12, v2, Ljy/sdk/gamesdk/update/ApkInfo;->callMethod:Ljava/lang/String;

    .line 134
    iget-object v3, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    invoke-static {v3, v2}, Ljy/sdk/gamesdk/update/UpdateManager;->checkLocalFile(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 135
    new-instance v3, Ljy/sdk/gamesdk/update/DownloadManager;

    iget-object v4, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    iget-object v5, v1, Ljy/sdk/gamesdk/update/Spread;->downloadStateListener:Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Ljy/sdk/gamesdk/update/DownloadManager;-><init>(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;Z)V

    .line 136
    invoke-virtual {v3}, Ljy/sdk/gamesdk/update/DownloadManager;->start()V

    .line 137
    iget-object v3, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    const-string v4, "\u5f00\u59cb\u4e0b\u8f7d~"

    invoke-static {v3, v4}, Ljy/sdk/common/utils/misc/UIUtil;->toastOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 138
    sget-object v3, Ljy/sdk/gamesdk/update/Spread;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v13

    iget-object v14, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    new-instance v15, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "\u53ea\u63d0\u4f9b\u94fe\u63a5\u4e0b\u8f7d"

    iget-object v2, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v15

    move-object v7, v11

    move-object v8, v10

    move-object v9, v12

    invoke-direct/range {v2 .. v9}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14, v15}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_d7} :catch_d8

    goto :goto_121

    :catch_d8
    move-exception v0

    goto :goto_e1

    :catch_da
    move-exception v0

    goto :goto_df

    :catch_dc
    move-exception v0

    move-object/from16 v11, p2

    :goto_df
    move-object/from16 v12, p3

    :goto_e1
    move-object v2, v0

    .line 143
    iget-object v3, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0b\u8f7d\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v13

    iget-object v14, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    new-instance v15, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v3, 0x1

    const/4 v4, 0x5

    const-string v5, "\u53ea\u63d0\u4f9b\u94fe\u63a5\u4e0b\u8f7d"

    iget-object v6, v1, Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v2, v15

    move-object v7, v11

    move-object v8, v10

    move-object v9, v12

    move-object/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14, v15}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    :cond_121
    :goto_121
    return-void
.end method
