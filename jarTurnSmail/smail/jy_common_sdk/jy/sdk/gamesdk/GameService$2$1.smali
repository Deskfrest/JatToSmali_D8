.class Ljy/sdk/gamesdk/GameService$2$1;
.super Ljava/lang/Object;
.source "GameService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/GameService$2;->ht()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/GameService$2;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/GameService$2;)V
    .registers 2

    .line 375
    iput-object p1, p0, Ljy/sdk/gamesdk/GameService$2$1;->this$0:Ljy/sdk/gamesdk/GameService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 380
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    sget-object v1, Ljy/sdk/gamesdk/GameService;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/api/ApiClient;->getBaseParam(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "sid"

    .line 381
    sget-object v2, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-virtual {v2}, Ljy/sdk/gamesdk/entity/UserInfo;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appId="

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "appId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type="

    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sid="

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "version="

    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "version"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ip="

    .line 387
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ip"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mac="

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mac"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "imei="

    .line 389
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "imei"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "||"

    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljy/sdk/gamesdk/Global;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljy/sdk/common/utils/encode/MD5Provider;->md5string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    .line 392
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiConstants;->getHt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljy/sdk/common/api/HttpRequest;->post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "httpCode"

    .line 394
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    const-string v0, "jy_sdk"

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ht res empty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 398
    :cond_e6
    sget-object v0, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    if-eqz v0, :cond_1d9

    sget-object v0, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/entity/UserInfo;->getSid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f8

    goto/16 :goto_1d9

    .line 404
    :cond_f8
    :try_start_f8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    .line 405
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HF_HB_002"

    .line 406
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_118

    const-string v0, "jy_sdk"

    const-string v1, "ht final..."

    .line 407
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {v3}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLogout(Z)V

    goto/16 :goto_1d8

    :cond_118
    const-string v2, "HF_HB_000"

    .line 409
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d8

    const-string v1, "jy_sdk"

    const-string v2, "ht again..."

    .line 410
    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/FLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    sget-object v1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget v1, Ljy/sdk/gamesdk/entity/InitInfo;->ht:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    if-gtz v1, :cond_132

    return-void

    .line 417
    :cond_132
    # getter for: Ljy/sdk/gamesdk/GameService;->handler:Landroid/os/Handler;
    invoke-static {}, Ljy/sdk/gamesdk/GameService;->access$000()Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x110

    int-to-long v5, v1

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v1, "data"

    .line 418
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_145

    return-void

    :cond_145
    const-string v1, "sdkNotices"

    .line 424
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_14b} :catch_1b9

    .line 438
    :try_start_14b
    new-instance v2, Ljy/sdk/gamesdk/entity/Notice;

    invoke-direct {v2}, Ljy/sdk/gamesdk/entity/Notice;-><init>()V

    const-string v4, "id"

    .line 439
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Ljy/sdk/gamesdk/entity/Notice;->id:I

    const-string v4, "notice_type"

    .line 440
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Ljy/sdk/gamesdk/entity/Notice;->type:I

    const-string v4, "jumpAction"

    .line 441
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Ljy/sdk/gamesdk/entity/Notice;->jumpAction:I

    const-string v4, "notice_content"

    .line 442
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljy/sdk/gamesdk/entity/Notice;->content:Ljava/lang/String;

    const-string v4, "url"

    .line 443
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Ljy/sdk/gamesdk/entity/Notice;->jumpUrl:Ljava/lang/String;

    .line 444
    sget-object v1, Ljy/sdk/gamesdk/activity/LoginActivity;->cpActivity:Landroid/app/Activity;

    new-instance v4, Ljy/sdk/gamesdk/GameService$2$1$1;

    invoke-direct {v4, p0, v2}, Ljy/sdk/gamesdk/GameService$2$1$1;-><init>(Ljy/sdk/gamesdk/GameService$2$1;Ljy/sdk/gamesdk/entity/Notice;)V

    invoke-static {v1, v4}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_182} :catch_183

    goto :goto_187

    :catch_183
    move-exception v1

    .line 452
    :try_start_184
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_187
    const-string v1, "noticeUnreadNum"

    .line 458
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1ab

    .line 462
    sget v1, Ljy/sdk/gamesdk/GameService;->last_NoticeUnreadNum:I

    if-le v0, v1, :cond_19f

    .line 463
    sput v0, Ljy/sdk/gamesdk/GameService;->last_NoticeUnreadNum:I

    .line 464
    # getter for: Ljy/sdk/gamesdk/GameService;->handler:Landroid/os/Handler;
    invoke-static {}, Ljy/sdk/gamesdk/GameService;->access$000()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1d8

    .line 466
    :cond_19f
    sput v0, Ljy/sdk/gamesdk/GameService;->last_NoticeUnreadNum:I

    .line 467
    # getter for: Ljy/sdk/gamesdk/GameService;->handler:Landroid/os/Handler;
    invoke-static {}, Ljy/sdk/gamesdk/GameService;->access$000()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x112

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1d8

    :cond_1ab
    if-nez v0, :cond_1d8

    .line 470
    sput v0, Ljy/sdk/gamesdk/GameService;->last_NoticeUnreadNum:I

    .line 471
    # getter for: Ljy/sdk/gamesdk/GameService;->handler:Landroid/os/Handler;
    invoke-static {}, Ljy/sdk/gamesdk/GameService;->access$000()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x113

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_1b8} :catch_1b9

    goto :goto_1d8

    :catch_1b9
    move-exception v0

    .line 477
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v1

    sget-object v8, Ljy/sdk/gamesdk/GameService;->context:Landroid/content/Context;

    new-instance v9, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v3, 0x2

    const/4 v4, 0x6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Ljy/sdk/gamesdk/GameService;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v9

    invoke-direct/range {v2 .. v7}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 478
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1d8
    :goto_1d8
    return-void

    :cond_1d9
    :goto_1d9
    const-string v0, "jy_sdk"

    const-string v1, "current is not login ht stop!"

    .line 399
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
