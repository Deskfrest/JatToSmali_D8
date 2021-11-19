.class Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener$1;
.super Ljava/lang/Object;
.source "AbsChannelSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;->onPaySuc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;Ljava/lang/String;)V
    .registers 3

    .line 438
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener$1;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;

    iput-object p2, p0, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 442
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener$1;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;

    iget-object v0, v0, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->globalListener:Ljy/sdk/shell/callback/ISdkListener;
    invoke-static {v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$200(Ljy/sdk/common/abs/AbsChannelSdk;)Ljy/sdk/shell/callback/ISdkListener;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener$1;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;

    iget-object v2, p0, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljy/sdk/common/abs/AbsChannelSdk$MyPayListener;->getRmsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljy/sdk/shell/callback/ISdkListener;->onPaySuc(Ljava/lang/String;)V

    return-void
.end method
