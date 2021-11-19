.class Ljy/sdk/common/abs/AbsChannelSdk$1$2;
.super Ljava/lang/Object;
.source "AbsChannelSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/common/abs/AbsChannelSdk$1;->initFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/common/abs/AbsChannelSdk$1;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljy/sdk/common/abs/AbsChannelSdk$1;Ljava/lang/String;)V
    .registers 3

    .line 111
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$1$2;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$1;

    iput-object p2, p0, Ljy/sdk/common/abs/AbsChannelSdk$1$2;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 115
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$1$2;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$1;

    iget-object v0, v0, Ljy/sdk/common/abs/AbsChannelSdk$1;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->globalListener:Ljy/sdk/shell/callback/ISdkListener;
    invoke-static {v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$200(Ljy/sdk/common/abs/AbsChannelSdk;)Ljy/sdk/shell/callback/ISdkListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6e20\u9053\u521d\u59cb\u5316\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljy/sdk/common/abs/AbsChannelSdk$1$2;->val$reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljy/sdk/shell/callback/ISdkListener;->initFailed(Ljava/lang/String;)V

    return-void
.end method
