.class Ljy/sdk/gamesdk/api/ApiClient$2;
.super Ljava/lang/Object;
.source "ApiClient.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/api/ApiClient;->sdkNormalReg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljy/sdk/gamesdk/api/IApiCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/api/ApiClient;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$apiCallBack:Ljy/sdk/gamesdk/api/IApiCallBack;

.field final synthetic val$baseParam:Ljava/util/Map;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/api/ApiClient;Ljy/sdk/gamesdk/api/IApiCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 7

    .line 259
    iput-object p1, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->this$0:Ljy/sdk/gamesdk/api/ApiClient;

    iput-object p2, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$apiCallBack:Ljy/sdk/gamesdk/api/IApiCallBack;

    iput-object p3, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    iput-object p4, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$username:Ljava/lang/String;

    iput-object p5, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$password:Ljava/lang/String;

    iput-object p6, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "uid"

    .line 264
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 265
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_11
    const-string v0, "msg"

    const-string v1, "\u751f\u6210uid\u5931\u8d25~"

    .line 267
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    .line 269
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 271
    :goto_1d
    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$apiCallBack:Ljy/sdk/gamesdk/api/IApiCallBack;

    invoke-interface {v0, p1}, Ljy/sdk/gamesdk/api/IApiCallBack;->onFinish(Lorg/json/JSONObject;)V

    return-void

    .line 275
    :cond_23
    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v1, "uid"

    const-string v2, "uid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object p1, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v0, "newAccount"

    iget-object v1, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$username:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object p1, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v0, "password"

    iget-object v1, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$password:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appId="

    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v1, "appId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "type="

    .line 280
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "uid="

    .line 281
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v1, "uid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "password="

    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v1, "password"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "newAccount="

    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v1, "newAccount"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ext="

    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v1, "ext"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "version="

    .line 285
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ip="

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v1, "ip"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mac="

    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v1, "mac"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "imei="

    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v1, "imei"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "channel="

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v1, "channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "||"

    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljy/sdk/gamesdk/Global;->APP_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljy/sdk/common/utils/encode/MD5Provider;->md5string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 293
    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    const-string v1, "sign"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object p1, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->this$0:Ljy/sdk/gamesdk/api/ApiClient;

    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$activity:Landroid/app/Activity;

    invoke-static {}, Ljy/sdk/gamesdk/api/ApiConstants;->getNormalReg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$baseParam:Ljava/util/Map;

    iget-object v3, p0, Ljy/sdk/gamesdk/api/ApiClient$2;->val$apiCallBack:Ljy/sdk/gamesdk/api/IApiCallBack;

    # invokes: Ljy/sdk/gamesdk/api/ApiClient;->doInThread(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljy/sdk/gamesdk/api/IApiCallBack;)V
    invoke-static {p1, v0, v1, v2, v3}, Ljy/sdk/gamesdk/api/ApiClient;->access$000(Ljy/sdk/gamesdk/api/ApiClient;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    return-void
.end method
