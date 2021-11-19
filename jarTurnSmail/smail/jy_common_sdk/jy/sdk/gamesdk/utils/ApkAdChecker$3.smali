.class final Ljy/sdk/gamesdk/utils/ApkAdChecker$3;
.super Ljava/lang/Object;
.source "ApkAdChecker.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/utils/ApkAdChecker;->checkLocalInstalledApp(Ljy/sdk/gamesdk/entity/DataInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dataInfo:Ljy/sdk/gamesdk/entity/DataInfo;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/entity/DataInfo;)V
    .registers 2

    .line 139
    iput-object p1, p0, Ljy/sdk/gamesdk/utils/ApkAdChecker$3;->val$dataInfo:Ljy/sdk/gamesdk/entity/DataInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "0"

    const-string v1, "code"

    .line 143
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    const-string p1, "jy_sdk"

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljy/sdk/gamesdk/utils/ApkAdChecker$3;->val$dataInfo:Ljy/sdk/gamesdk/entity/DataInfo;

    invoke-virtual {v1}, Ljy/sdk/gamesdk/entity/DataInfo;->getModuleId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/gamesdk/utils/ApkAdChecker$3;->val$dataInfo:Ljy/sdk/gamesdk/entity/DataInfo;

    invoke-virtual {v1}, Ljy/sdk/gamesdk/entity/DataInfo;->getOptCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " upload suc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->getInstance()Ljy/sdk/gamesdk/db/ApkAdDbUtils;

    move-result-object p1

    iget-object v0, p0, Ljy/sdk/gamesdk/utils/ApkAdChecker$3;->val$dataInfo:Ljy/sdk/gamesdk/entity/DataInfo;

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->delete(Ljy/sdk/gamesdk/entity/DataInfo;)V

    goto :goto_6c

    :cond_42
    const-string p1, "jy_sdk"

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljy/sdk/gamesdk/utils/ApkAdChecker$3;->val$dataInfo:Ljy/sdk/gamesdk/entity/DataInfo;

    invoke-virtual {v1}, Ljy/sdk/gamesdk/entity/DataInfo;->getModuleId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/gamesdk/utils/ApkAdChecker$3;->val$dataInfo:Ljy/sdk/gamesdk/entity/DataInfo;

    invoke-virtual {v1}, Ljy/sdk/gamesdk/entity/DataInfo;->getOptCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " upload fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6c
    return-void
.end method
