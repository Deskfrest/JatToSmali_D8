.class Ljy/sdk/gamesdk/update/Spread$1;
.super Ljava/lang/Object;
.source "Spread.java"

# interfaces
.implements Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/update/Spread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/update/Spread;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/update/Spread;)V
    .registers 2

    .line 24
    iput-object p1, p0, Ljy/sdk/gamesdk/update/Spread$1;->this$0:Ljy/sdk/gamesdk/update/Spread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComp(ZLjy/sdk/gamesdk/update/ApkInfo;Ljava/lang/Exception;)V
    .registers 16

    .line 32
    # getter for: Ljy/sdk/gamesdk/update/Spread;->map:Ljava/util/HashMap;
    invoke-static {}, Ljy/sdk/gamesdk/update/Spread;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p2, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p2, Ljy/sdk/gamesdk/update/ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "\u53ea\u63d0\u4f9b\u94fe\u63a5\u4e0b\u8f7d"

    .line 35
    iput-object v0, p2, Ljy/sdk/gamesdk/update/ApkInfo;->packageName:Ljava/lang/String;

    :cond_15
    if-eqz p1, :cond_85

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 39
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object p1

    iget-object p3, p0, Ljy/sdk/gamesdk/update/Spread$1;->this$0:Ljy/sdk/gamesdk/update/Spread;

    # getter for: Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;
    invoke-static {p3}, Ljy/sdk/gamesdk/update/Spread;->access$100(Ljy/sdk/gamesdk/update/Spread;)Landroid/app/Activity;

    move-result-object p3

    new-instance v11, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v3, 0x1

    const/4 v4, 0x4

    iget-object v5, p2, Ljy/sdk/gamesdk/update/ApkInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Ljy/sdk/gamesdk/update/Spread$1;->this$0:Ljy/sdk/gamesdk/update/Spread;

    # getter for: Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;
    invoke-static {v2}, Ljy/sdk/gamesdk/update/Spread;->access$100(Ljy/sdk/gamesdk/update/Spread;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Ljy/sdk/gamesdk/update/ApkInfo;->resTag:Ljava/lang/String;

    iget-object v8, p2, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    iget-object v9, p2, Ljy/sdk/gamesdk/update/ApkInfo;->callMethod:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3, v11}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 42
    invoke-static {}, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->getInstance()Ljy/sdk/gamesdk/db/ApkAdDbUtils;

    move-result-object p1

    new-instance p3, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v4, 0x6

    iget-object v5, p2, Ljy/sdk/gamesdk/update/ApkInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Ljy/sdk/gamesdk/update/Spread$1;->this$0:Ljy/sdk/gamesdk/update/Spread;

    # getter for: Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;
    invoke-static {v2}, Ljy/sdk/gamesdk/update/Spread;->access$100(Ljy/sdk/gamesdk/update/Spread;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Ljy/sdk/gamesdk/update/ApkInfo;->resTag:Ljava/lang/String;

    iget-object v8, p2, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    iget-object v9, p2, Ljy/sdk/gamesdk/update/ApkInfo;->callMethod:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, p3

    invoke-direct/range {v2 .. v10}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->addData(Ljy/sdk/gamesdk/entity/DataInfo;)V

    goto :goto_b7

    .line 45
    :cond_85
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ljy/sdk/gamesdk/update/Spread$1;->this$0:Ljy/sdk/gamesdk/update/Spread;

    # getter for: Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;
    invoke-static {v0}, Ljy/sdk/gamesdk/update/Spread;->access$100(Ljy/sdk/gamesdk/update/Spread;)Landroid/app/Activity;

    move-result-object v0

    new-instance v10, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v2, 0x1

    const/4 v3, 0x5

    iget-object v4, p2, Ljy/sdk/gamesdk/update/ApkInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Ljy/sdk/gamesdk/update/Spread$1;->this$0:Ljy/sdk/gamesdk/update/Spread;

    # getter for: Ljy/sdk/gamesdk/update/Spread;->activity:Landroid/app/Activity;
    invoke-static {v1}, Ljy/sdk/gamesdk/update/Spread;->access$100(Ljy/sdk/gamesdk/update/Spread;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Ljy/sdk/gamesdk/update/ApkInfo;->resTag:Ljava/lang/String;

    iget-object v7, p2, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    iget-object v8, p2, Ljy/sdk/gamesdk/update/ApkInfo;->callMethod:Ljava/lang/String;

    if-nez p3, :cond_ab

    const-string p2, ""

    :goto_a9
    move-object v9, p2

    goto :goto_b0

    :cond_ab
    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_a9

    :goto_b0
    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v10}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    :goto_b7
    return-void
.end method

.method public onDownloadProgress(I)V
    .registers 2

    return-void
.end method
