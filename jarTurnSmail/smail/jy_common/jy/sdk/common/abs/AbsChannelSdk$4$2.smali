.class Ljy/sdk/common/abs/AbsChannelSdk$4$2;
.super Ljava/lang/Object;
.source "AbsChannelSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/common/abs/AbsChannelSdk$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/common/abs/AbsChannelSdk$4;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljy/sdk/common/abs/AbsChannelSdk$4;Ljava/lang/Exception;)V
    .registers 3

    .line 404
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$4$2;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$4;

    iput-object p2, p0, Ljy/sdk/common/abs/AbsChannelSdk$4$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 408
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "orderId"

    .line 410
    iget-object v2, p0, Ljy/sdk/common/abs/AbsChannelSdk$4$2;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$4;

    iget-object v2, v2, Ljy/sdk/common/abs/AbsChannelSdk$4;->val$params:Ljy/sdk/shell/proxy/JyPayParams;

    invoke-virtual {v2}, Ljy/sdk/shell/proxy/JyPayParams;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ext"

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljy/sdk/common/abs/AbsChannelSdk$4$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_2f

    goto :goto_35

    :catch_2f
    move-exception v1

    .line 413
    sget-object v2, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    :goto_35
    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$4$2;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$4;

    iget-object v1, v1, Ljy/sdk/common/abs/AbsChannelSdk$4;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->globalListener:Ljy/sdk/shell/callback/ISdkListener;
    invoke-static {v1}, Ljy/sdk/common/abs/AbsChannelSdk;->access$200(Ljy/sdk/common/abs/AbsChannelSdk;)Ljy/sdk/shell/callback/ISdkListener;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljy/sdk/shell/callback/ISdkListener;->onPayFail(Ljava/lang/String;)V

    return-void
.end method
