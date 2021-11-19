.class Ljy/sdk/channel/jy/Jy$5;
.super Ljava/lang/Object;
.source "Jy.java"

# interfaces
.implements Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/channel/jy/Jy;->payChannel(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;Ljy/sdk/common/abs/innercallbacks/IpayListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/channel/jy/Jy;

.field final synthetic val$listener:Ljy/sdk/common/abs/innercallbacks/IpayListener;

.field final synthetic val$params:Ljy/sdk/shell/proxy/JyPayParams;


# direct methods
.method constructor <init>(Ljy/sdk/channel/jy/Jy;Ljy/sdk/common/abs/innercallbacks/IpayListener;Ljy/sdk/shell/proxy/JyPayParams;)V
    .registers 4

    .line 426
    iput-object p1, p0, Ljy/sdk/channel/jy/Jy$5;->this$0:Ljy/sdk/channel/jy/Jy;

    iput-object p2, p0, Ljy/sdk/channel/jy/Jy$5;->val$listener:Ljy/sdk/common/abs/innercallbacks/IpayListener;

    iput-object p3, p0, Ljy/sdk/channel/jy/Jy$5;->val$params:Ljy/sdk/shell/proxy/JyPayParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayFail(Ljava/lang/String;)V
    .registers 3

    .line 435
    iget-object v0, p0, Ljy/sdk/channel/jy/Jy$5;->val$listener:Ljy/sdk/common/abs/innercallbacks/IpayListener;

    invoke-interface {v0, p1}, Ljy/sdk/common/abs/innercallbacks/IpayListener;->onPayFail(Ljava/lang/String;)V

    return-void
.end method

.method public onPayQuery(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 440
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x111

    .line 441
    iput v1, v0, Landroid/os/Message;->what:I

    .line 442
    new-instance v1, Ljy/sdk/channel/jy/Jy$PayQuery;

    iget-object v3, p0, Ljy/sdk/channel/jy/Jy$5;->this$0:Ljy/sdk/channel/jy/Jy;

    iget-object v4, p0, Ljy/sdk/channel/jy/Jy$5;->val$params:Ljy/sdk/shell/proxy/JyPayParams;

    iget-object v5, p0, Ljy/sdk/channel/jy/Jy$5;->val$listener:Ljy/sdk/common/abs/innercallbacks/IpayListener;

    move-object v2, v1

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Ljy/sdk/channel/jy/Jy$PayQuery;-><init>(Ljy/sdk/channel/jy/Jy;Ljy/sdk/shell/proxy/JyPayParams;Ljy/sdk/common/abs/innercallbacks/IpayListener;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 443
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$5;->this$0:Ljy/sdk/channel/jy/Jy;

    # getter for: Ljy/sdk/channel/jy/Jy;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Ljy/sdk/channel/jy/Jy;->access$1600(Ljy/sdk/channel/jy/Jy;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onPaySuc(Ljava/lang/String;)V
    .registers 3

    .line 430
    iget-object v0, p0, Ljy/sdk/channel/jy/Jy$5;->val$listener:Ljy/sdk/common/abs/innercallbacks/IpayListener;

    invoke-interface {v0, p1}, Ljy/sdk/common/abs/innercallbacks/IpayListener;->onPaySuc(Ljava/lang/String;)V

    return-void
.end method
