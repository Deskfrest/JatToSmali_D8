.class Ljy/sdk/common/abs/AbsChannelSdk$2$2;
.super Ljava/lang/Object;
.source "AbsChannelSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/common/abs/AbsChannelSdk$2;->onLoginFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/common/abs/AbsChannelSdk$2;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljy/sdk/common/abs/AbsChannelSdk$2;Ljava/lang/String;)V
    .registers 3

    .line 187
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$2$2;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$2;

    iput-object p2, p0, Ljy/sdk/common/abs/AbsChannelSdk$2$2;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 191
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$2$2;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$2;

    iget-object v0, v0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->globalListener:Ljy/sdk/shell/callback/ISdkListener;
    invoke-static {v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$200(Ljy/sdk/common/abs/AbsChannelSdk;)Ljy/sdk/shell/callback/ISdkListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6e20\u9053\u767b\u5f55\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljy/sdk/common/abs/AbsChannelSdk$2$2;->val$reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljy/sdk/shell/callback/ISdkListener;->onLoginFailed(Ljava/lang/String;)V

    return-void
.end method
