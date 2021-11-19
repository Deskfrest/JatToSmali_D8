.class Ljy/sdk/gamesdk/api/ApiClient$3;
.super Ljava/lang/Object;
.source "ApiClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/api/ApiClient;->doInThread(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljy/sdk/gamesdk/api/IApiCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/api/ApiClient;

.field final synthetic val$apiCallBack:Ljy/sdk/gamesdk/api/IApiCallBack;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$params:Ljava/util/Map;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/api/ApiClient;Ljava/lang/String;Ljava/util/Map;Ljy/sdk/gamesdk/api/IApiCallBack;Landroid/content/Context;)V
    .registers 6

    .line 382
    iput-object p1, p0, Ljy/sdk/gamesdk/api/ApiClient$3;->this$0:Ljy/sdk/gamesdk/api/ApiClient;

    iput-object p2, p0, Ljy/sdk/gamesdk/api/ApiClient$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Ljy/sdk/gamesdk/api/ApiClient$3;->val$params:Ljava/util/Map;

    iput-object p4, p0, Ljy/sdk/gamesdk/api/ApiClient$3;->val$apiCallBack:Ljy/sdk/gamesdk/api/IApiCallBack;

    iput-object p5, p0, Ljy/sdk/gamesdk/api/ApiClient$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 386
    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$3;->val$url:Ljava/lang/String;

    iget-object v1, p0, Ljy/sdk/gamesdk/api/ApiClient$3;->val$params:Ljava/util/Map;

    invoke-static {v0, v1}, Ljy/sdk/common/api/HttpRequest;->post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 387
    iget-object v1, p0, Ljy/sdk/gamesdk/api/ApiClient$3;->val$apiCallBack:Ljy/sdk/gamesdk/api/IApiCallBack;

    if-eqz v1, :cond_79

    const/4 v1, 0x0

    .line 391
    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_17

    goto :goto_74

    :catch_17
    move-exception v2

    .line 395
    :try_start_18
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_6b

    :try_start_1d
    const-string v1, "httpCode"

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u68c0\u67e5\u5230\u7f51\u7edc\u4e0d\u7545 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "msg"

    .line 401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u68c0\u67e5\u5230\u7f51\u7edc\u4e0d\u7545 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_56

    :cond_4d
    const-string v1, "server form error"

    const-string v0, "msg"

    const-string v4, "server form error"

    .line 404
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    :goto_56
    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$3;->val$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_63

    .line 407
    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$3;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 408
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->toastOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 411
    :cond_63
    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$3;->val$apiCallBack:Ljy/sdk/gamesdk/api/IApiCallBack;

    invoke-interface {v0, v3}, Ljy/sdk/gamesdk/api/IApiCallBack;->onFinish(Lorg/json/JSONObject;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_68} :catch_69

    return-void

    :catch_69
    move-exception v0

    goto :goto_6d

    :catch_6b
    move-exception v0

    move-object v3, v1

    .line 414
    :goto_6d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 417
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 419
    :goto_74
    iget-object v0, p0, Ljy/sdk/gamesdk/api/ApiClient$3;->val$apiCallBack:Ljy/sdk/gamesdk/api/IApiCallBack;

    invoke-interface {v0, v2}, Ljy/sdk/gamesdk/api/IApiCallBack;->onFinish(Lorg/json/JSONObject;)V

    :cond_79
    return-void
.end method
