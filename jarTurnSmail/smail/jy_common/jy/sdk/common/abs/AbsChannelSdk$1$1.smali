.class Ljy/sdk/common/abs/AbsChannelSdk$1$1;
.super Ljava/lang/Object;
.source "AbsChannelSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/common/abs/AbsChannelSdk$1;->initSuc(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/common/abs/AbsChannelSdk$1;


# direct methods
.method constructor <init>(Ljy/sdk/common/abs/AbsChannelSdk$1;)V
    .registers 2

    .line 96
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$1$1;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 100
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$1$1;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$1;

    iget-object v0, v0, Ljy/sdk/common/abs/AbsChannelSdk$1;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->globalListener:Ljy/sdk/shell/callback/ISdkListener;
    invoke-static {v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$200(Ljy/sdk/common/abs/AbsChannelSdk;)Ljy/sdk/shell/callback/ISdkListener;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Ljy/sdk/shell/callback/ISdkListener;->initSuc(Ljava/lang/String;)V

    return-void
.end method
