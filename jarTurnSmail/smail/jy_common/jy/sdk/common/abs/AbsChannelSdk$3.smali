.class Ljy/sdk/common/abs/AbsChannelSdk$3;
.super Landroid/os/Handler;
.source "AbsChannelSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/common/abs/AbsChannelSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/common/abs/AbsChannelSdk;


# direct methods
.method constructor <init>(Ljy/sdk/common/abs/AbsChannelSdk;)V
    .registers 2

    .line 272
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$3;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 274
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljy/sdk/shell/proxy/JyPayParams;

    .line 275
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_26

    const/16 v1, 0x12c

    if-eq p1, v1, :cond_f

    goto :goto_41

    .line 290
    :cond_f
    new-instance p1, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;

    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$3;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    invoke-virtual {v0}, Ljy/sdk/shell/proxy/JyPayParams;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;-><init>(Ljy/sdk/common/abs/AbsChannelSdk;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$3;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v2, p0, Ljy/sdk/common/abs/AbsChannelSdk$3;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;
    invoke-static {v2}, Ljy/sdk/common/abs/AbsChannelSdk;->access$100(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Ljy/sdk/common/abs/AbsChannelSdk;->payChannel(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;Ljy/sdk/common/abs/innercallbacks/IpayListener;)V

    goto :goto_41

    .line 278
    :cond_26
    new-instance p1, Ljy/sdk/common/components/ChUtil;

    new-instance v1, Ljy/sdk/common/abs/AbsChannelSdk$3$1;

    invoke-direct {v1, p0, v0}, Ljy/sdk/common/abs/AbsChannelSdk$3$1;-><init>(Ljy/sdk/common/abs/AbsChannelSdk$3;Ljy/sdk/shell/proxy/JyPayParams;)V

    invoke-direct {p1, v1}, Ljy/sdk/common/components/ChUtil;-><init>(Ljy/sdk/common/components/ChUtil$OnErrorLisenter;)V

    .line 287
    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$3;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;
    invoke-static {v1}, Ljy/sdk/common/abs/AbsChannelSdk;->access$100(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Ljy/sdk/common/abs/AbsChannelSdk$3;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v2, v2, Ljy/sdk/common/abs/AbsChannelSdk;->app_id:Ljava/lang/String;

    iget-object v3, p0, Ljy/sdk/common/abs/AbsChannelSdk$3;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v3, v3, Ljy/sdk/common/abs/AbsChannelSdk;->appkey:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3, v0}, Ljy/sdk/common/components/ChUtil;->startCh(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljy/sdk/shell/proxy/JyPayParams;)V

    :goto_41
    return-void
.end method
