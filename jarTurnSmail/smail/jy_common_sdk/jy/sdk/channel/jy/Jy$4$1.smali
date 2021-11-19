.class Ljy/sdk/channel/jy/Jy$4$1;
.super Ljava/lang/Object;
.source "Jy.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/channel/jy/Jy$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/channel/jy/Jy$4;

.field final synthetic val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;


# direct methods
.method constructor <init>(Ljy/sdk/channel/jy/Jy$4;Ljy/sdk/channel/jy/Jy$PayQuery;)V
    .registers 3

    .line 346
    iput-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->this$1:Ljy/sdk/channel/jy/Jy$4;

    iput-object p2, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 10

    const-string v0, "status"

    .line 351
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PYM_SCS_00"

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 354
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->payListener:Ljy/sdk/common/abs/innercallbacks/IpayListener;

    const-string v0, ""

    invoke-interface {p1, v0}, Ljy/sdk/common/abs/innercallbacks/IpayListener;->onPaySuc(Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->this$1:Ljy/sdk/channel/jy/Jy$4;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$4;->this$0:Ljy/sdk/channel/jy/Jy;

    iget-boolean p1, p1, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz p1, :cond_159

    .line 357
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$1200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5934\u6761\u652f\u4ed8\u4e8b\u4ef6\uff1a\u6210\u529f"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getJyOrder()Ljy/sdk/common/bean/JyOrder;

    move-result-object p1

    invoke-virtual {p1}, Ljy/sdk/common/bean/JyOrder;->getMsg()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    .line 359
    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getProductName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getProductId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    .line 360
    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getBuyNum()I

    move-result v3

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object v4, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->payType:Ljava/lang/String;

    const-string v5, "CNY"

    const/4 v6, 0x1

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    .line 361
    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getTotalPrice()I

    move-result p1

    div-int/lit8 v7, p1, 0x64

    .line 358
    invoke-static/range {v0 .. v7}, Lcom/bytedance/applog/GameReportHelper;->onEventPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_159

    :cond_62
    const-string v0, "PYM_SCS_01"

    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 365
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->payListener:Ljy/sdk/common/abs/innercallbacks/IpayListener;

    const-string v0, ""

    invoke-interface {p1, v0}, Ljy/sdk/common/abs/innercallbacks/IpayListener;->onPayFail(Ljava/lang/String;)V

    .line 366
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->this$1:Ljy/sdk/channel/jy/Jy$4;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$4;->this$0:Ljy/sdk/channel/jy/Jy;

    iget-boolean p1, p1, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz p1, :cond_159

    .line 367
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$1300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5934\u6761\u652f\u4ed8\u4e8b\u4ef6\uff1a\u5931\u8d25(PYM_SCS_01)"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getJyOrder()Ljy/sdk/common/bean/JyOrder;

    move-result-object p1

    invoke-virtual {p1}, Ljy/sdk/common/bean/JyOrder;->getMsg()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    .line 369
    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getProductName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getProductId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    .line 370
    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getBuyNum()I

    move-result v3

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object v4, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->payType:Ljava/lang/String;

    const-string v5, "CNY"

    const/4 v6, 0x0

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    .line 371
    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getTotalPrice()I

    move-result p1

    div-int/lit8 v7, p1, 0x64

    .line 368
    invoke-static/range {v0 .. v7}, Lcom/bytedance/applog/GameReportHelper;->onEventPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_159

    :cond_be
    const-string v0, "PYM_SCS_02"

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_159

    .line 374
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->querySum:I

    sget-object v0, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget v0, Ljy/sdk/gamesdk/entity/InitInfo;->querySum:I

    if-lt p1, v0, :cond_13f

    .line 375
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$1400()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop query querySum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget v1, v1, Ljy/sdk/channel/jy/Jy$PayQuery;->querySum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->payListener:Ljy/sdk/common/abs/innercallbacks/IpayListener;

    const-string v0, ""

    invoke-interface {p1, v0}, Ljy/sdk/common/abs/innercallbacks/IpayListener;->onPayFail(Ljava/lang/String;)V

    .line 377
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->this$1:Ljy/sdk/channel/jy/Jy$4;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$4;->this$0:Ljy/sdk/channel/jy/Jy;

    iget-boolean p1, p1, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz p1, :cond_13e

    .line 378
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$1500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5934\u6761\u652f\u4ed8\u4e8b\u4ef6\uff1a\u5931\u8d25(PYM_SCS_02)"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getJyOrder()Ljy/sdk/common/bean/JyOrder;

    move-result-object p1

    invoke-virtual {p1}, Ljy/sdk/common/bean/JyOrder;->getMsg()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    .line 380
    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getProductName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getProductId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    .line 381
    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getBuyNum()I

    move-result v3

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object v4, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->payType:Ljava/lang/String;

    const-string v5, "CNY"

    const/4 v6, 0x0

    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object p1, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    .line 382
    invoke-virtual {p1}, Ljy/sdk/shell/proxy/JyPayParams;->getTotalPrice()I

    move-result p1

    div-int/lit8 v7, p1, 0x64

    .line 379
    invoke-static/range {v0 .. v7}, Lcom/bytedance/applog/GameReportHelper;->onEventPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    :cond_13e
    return-void

    .line 387
    :cond_13f
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x111

    .line 388
    iput v0, p1, Landroid/os/Message;->what:I

    .line 389
    iget-object v0, p0, Ljy/sdk/channel/jy/Jy$4$1;->val$payQuery:Ljy/sdk/channel/jy/Jy$PayQuery;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Ljy/sdk/channel/jy/Jy$4$1;->this$1:Ljy/sdk/channel/jy/Jy$4;

    iget-object v0, v0, Ljy/sdk/channel/jy/Jy$4;->this$0:Ljy/sdk/channel/jy/Jy;

    # getter for: Ljy/sdk/channel/jy/Jy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Ljy/sdk/channel/jy/Jy;->access$1600(Ljy/sdk/channel/jy/Jy;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_159
    :goto_159
    return-void
.end method
