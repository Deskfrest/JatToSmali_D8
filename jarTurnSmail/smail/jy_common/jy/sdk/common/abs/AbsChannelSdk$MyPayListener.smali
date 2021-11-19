.class Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;
.super Ljava/lang/Object;
.source "AbsChannelSdk.java"

# interfaces
.implements Ljy/sdk/common/abs/innercallbacks/IpayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/common/abs/AbsChannelSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPayListener"
.end annotation


# instance fields
.field private orderId:Ljava/lang/String;

.field final synthetic this$0:Ljy/sdk/common/abs/AbsChannelSdk;


# direct methods
.method public constructor <init>(Ljy/sdk/common/abs/AbsChannelSdk;Ljava/lang/String;)V
    .registers 3

    .line 428
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p2, p0, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;->orderId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRmsg(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 459
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "orderId"

    .line 461
    iget-object v2, p0, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ext"

    .line 462
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception p1

    .line 464
    sget-object v1, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    :goto_18
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onPayFail(Ljava/lang/String;)V
    .registers 5

    .line 449
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u56de\u8c03cp \u652f\u4ed8\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;
    invoke-static {v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$100(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener$2;

    invoke-direct {v1, p0, p1}, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener$2;-><init>(Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPaySuc(Ljava/lang/String;)V
    .registers 5

    .line 435
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u56de\u8c03cp \u652f\u4ed8\u6210\u529f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;
    invoke-static {v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$100(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener$1;

    invoke-direct {v1, p0, p1}, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener$1;-><init>(Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
