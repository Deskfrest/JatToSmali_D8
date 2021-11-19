.class Ljy/sdk/common/abs/AbsChannelSdk$3$1;
.super Ljava/lang/Object;
.source "AbsChannelSdk.java"

# interfaces
.implements Ljy/sdk/common/components/ChUtil$OnErrorLisenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/common/abs/AbsChannelSdk$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/common/abs/AbsChannelSdk$3;

.field final synthetic val$params:Ljy/sdk/shell/proxy/JyPayParams;


# direct methods
.method constructor <init>(Ljy/sdk/common/abs/AbsChannelSdk$3;Ljy/sdk/shell/proxy/JyPayParams;)V
    .registers 3

    .line 278
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$3$1;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$3;

    iput-object p2, p0, Ljy/sdk/common/abs/AbsChannelSdk$3$1;->val$params:Ljy/sdk/shell/proxy/JyPayParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 5

    .line 282
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "onError"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;

    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$3$1;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$3;

    iget-object v1, v1, Ljy/sdk/common/abs/AbsChannelSdk$3;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v2, p0, Ljy/sdk/common/abs/AbsChannelSdk$3$1;->val$params:Ljy/sdk/shell/proxy/JyPayParams;

    invoke-virtual {v2}, Ljy/sdk/shell/proxy/JyPayParams;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;-><init>(Ljy/sdk/common/abs/AbsChannelSdk;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$3$1;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$3;

    iget-object v1, v1, Ljy/sdk/common/abs/AbsChannelSdk$3;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v2, p0, Ljy/sdk/common/abs/AbsChannelSdk$3$1;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$3;

    iget-object v2, v2, Ljy/sdk/common/abs/AbsChannelSdk$3;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;
    invoke-static {v2}, Ljy/sdk/common/abs/AbsChannelSdk;->access$100(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Ljy/sdk/common/abs/AbsChannelSdk$3$1;->val$params:Ljy/sdk/shell/proxy/JyPayParams;

    invoke-virtual {v1, v2, v3, v0}, Ljy/sdk/common/abs/AbsChannelSdk;->payChannel(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;Ljy/sdk/common/abs/innercallbacks/IpayListener;)V

    return-void
.end method
