.class Ljy/sdk/common/abs/AbsChannelSdk$4;
.super Ljava/lang/Object;
.source "AbsChannelSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/common/abs/AbsChannelSdk;->pay(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/common/abs/AbsChannelSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$params:Ljy/sdk/shell/proxy/JyPayParams;


# direct methods
.method constructor <init>(Ljy/sdk/common/abs/AbsChannelSdk;Ljy/sdk/shell/proxy/JyPayParams;Landroid/app/Activity;)V
    .registers 4

    .line 343
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iput-object p2, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->val$params:Ljy/sdk/shell/proxy/JyPayParams;

    iput-object p3, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 348
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->val$params:Ljy/sdk/shell/proxy/JyPayParams;

    invoke-virtual {v0, v1}, Ljy/sdk/common/abs/AbsChannelSdk;->getChannelOrderSpecialParam(Ljy/sdk/shell/proxy/JyPayParams;)Ljava/util/Map;

    move-result-object v0

    .line 349
    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->val$params:Ljy/sdk/shell/proxy/JyPayParams;

    iget-object v3, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v3, v3, Ljy/sdk/common/abs/AbsChannelSdk;->app_id:Ljava/lang/String;

    iget-object v4, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v4, v4, Ljy/sdk/common/abs/AbsChannelSdk;->appkey:Ljava/lang/String;

    iget-object v5, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v5, v5, Ljy/sdk/common/abs/AbsChannelSdk;->channelInfo:Ljava/lang/String;

    iget-object v6, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v6, v6, Ljy/sdk/common/abs/AbsChannelSdk;->channel_version:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Ljy/sdk/common/api/OrderSignReq;->buildParam(Landroid/content/Context;Ljy/sdk/shell/proxy/JyPayParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v0, :cond_2b

    .line 350
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2b

    .line 351
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 354
    :cond_2b
    invoke-static {}, Ljy/sdk/common/abs/ComConstants;->getOrderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljy/sdk/common/api/HttpRequest;->post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 356
    :try_start_33
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    .line 357
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "msg"

    .line 358
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extend"

    .line 359
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "swi"

    const/4 v5, 0x0

    .line 360
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_ae

    if-eqz v2, :cond_f9

    const-string v0, "@"

    .line 364
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f9

    const-string v0, "@"

    .line 365
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 366
    aget-object v2, v0, v5

    const/4 v4, 0x1

    .line 367
    aget-object v0, v0, v4

    .line 368
    iget-object v4, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->val$params:Ljy/sdk/shell/proxy/JyPayParams;

    invoke-virtual {v4, v0}, Ljy/sdk/shell/proxy/JyPayParams;->setJyUid(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->val$params:Ljy/sdk/shell/proxy/JyPayParams;

    new-instance v4, Ljy/sdk/common/bean/JyOrder;

    invoke-direct {v4, v2, v3}, Ljy/sdk/common/bean/JyOrder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljy/sdk/shell/proxy/JyPayParams;->setJyOrder(Ljy/sdk/common/bean/JyOrder;)V

    .line 370
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v2, "start payChannel!"

    invoke-static {v0, v2}, Ljy/sdk/common/utils/misc/FLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_97

    .line 372
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc8

    .line 373
    iput v1, v0, Landroid/os/Message;->what:I

    .line 374
    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->val$params:Ljy/sdk/shell/proxy/JyPayParams;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 375
    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Ljy/sdk/common/abs/AbsChannelSdk;->access$400(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 378
    :cond_97
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x12c

    .line 379
    iput v1, v0, Landroid/os/Message;->what:I

    .line 380
    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->val$params:Ljy/sdk/shell/proxy/JyPayParams;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 381
    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Ljy/sdk/common/abs/AbsChannelSdk;->access$400(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_f9

    .line 384
    :cond_ae
    sget-object v1, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56de\u8c03cp \u521b\u5efa\u8ba2\u5355\u5931\u8d25 status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->val$activity:Landroid/app/Activity;

    new-instance v2, Ljy/sdk/common/abs/AbsChannelSdk$4$1;

    invoke-direct {v2, p0, v0}, Ljy/sdk/common/abs/AbsChannelSdk$4$1;-><init>(Ljy/sdk/common/abs/AbsChannelSdk$4;I)V

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_ce} :catch_cf

    goto :goto_f9

    :catch_cf
    move-exception v0

    .line 401
    sget-object v1, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    sget-object v1, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56de\u8c03cp \u521b\u5efa\u8ba2\u5355\u5931\u8d25 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$4;->val$activity:Landroid/app/Activity;

    new-instance v2, Ljy/sdk/common/abs/AbsChannelSdk$4$2;

    invoke-direct {v2, p0, v0}, Ljy/sdk/common/abs/AbsChannelSdk$4$2;-><init>(Ljy/sdk/common/abs/AbsChannelSdk$4;Ljava/lang/Exception;)V

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_f9
    :goto_f9
    return-void
.end method
