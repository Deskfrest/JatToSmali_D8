.class final Ljy/sdk/gamesdk/utils/ApkAdChecker$1;
.super Ljava/lang/Object;
.source "ApkAdChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/utils/ApkAdChecker;->collectionLocal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 73
    :try_start_0
    invoke-static {}, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->getInstance()Ljy/sdk/gamesdk/db/ApkAdDbUtils;

    move-result-object v0

    invoke-virtual {v0}, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->queryData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_6f

    :cond_11
    const-wide/32 v1, 0x240c8400

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljy/sdk/gamesdk/entity/DataInfo;

    .line 82
    invoke-virtual {v3}, Ljy/sdk/gamesdk/entity/DataInfo;->getModuleId()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2c

    goto :goto_18

    .line 86
    :cond_2c
    invoke-virtual {v3}, Ljy/sdk/gamesdk/entity/DataInfo;->getOptCode()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_34

    goto :goto_18

    .line 89
    :cond_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 90
    invoke-virtual {v3}, Ljy/sdk/gamesdk/entity/DataInfo;->getExtend6()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long v8, v4, v6

    cmp-long v4, v8, v1

    if-lez v4, :cond_67

    .line 93
    # getter for: Ljy/sdk/gamesdk/utils/ApkAdChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/gamesdk/utils/ApkAdChecker;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "abandon the overdue dataInfo"

    invoke-static {v4, v5}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->getInstance()Ljy/sdk/gamesdk/db/ApkAdDbUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->delete(Ljy/sdk/gamesdk/entity/DataInfo;)V

    const/4 v4, 0x7

    .line 95
    invoke-virtual {v3, v4}, Ljy/sdk/gamesdk/entity/DataInfo;->setOptCode(I)V

    .line 96
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v4

    # getter for: Ljy/sdk/gamesdk/utils/ApkAdChecker;->context:Landroid/content/Context;
    invoke-static {}, Ljy/sdk/gamesdk/utils/ApkAdChecker;->access$100()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    goto :goto_18

    .line 99
    :cond_67
    # getter for: Ljy/sdk/gamesdk/utils/ApkAdChecker;->uploadQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {}, Ljy/sdk/gamesdk/utils/ApkAdChecker;->access$200()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_18

    .line 75
    :cond_6f
    :goto_6f
    # getter for: Ljy/sdk/gamesdk/utils/ApkAdChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/gamesdk/utils/ApkAdChecker;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hasDownloadedInfo is null"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_79

    return-void

    :catch_79
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7d
    return-void
.end method
