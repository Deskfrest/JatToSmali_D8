.class Ljy/sdk/common/abs/AbsChannelSdk$5$1;
.super Ljava/lang/Object;
.source "AbsChannelSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/common/abs/AbsChannelSdk$5;->clickConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/common/abs/AbsChannelSdk$5;


# direct methods
.method constructor <init>(Ljy/sdk/common/abs/AbsChannelSdk$5;)V
    .registers 2

    .line 486
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$5$1;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 490
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$5$1;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$5;

    iget-object v0, v0, Ljy/sdk/common/abs/AbsChannelSdk$5;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->globalListener:Ljy/sdk/shell/callback/ISdkListener;
    invoke-static {v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$200(Ljy/sdk/common/abs/AbsChannelSdk;)Ljy/sdk/shell/callback/ISdkListener;

    move-result-object v0

    invoke-interface {v0}, Ljy/sdk/shell/callback/ISdkListener;->onExit()V

    return-void
.end method
