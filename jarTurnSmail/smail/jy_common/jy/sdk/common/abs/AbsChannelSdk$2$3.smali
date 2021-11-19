.class Ljy/sdk/common/abs/AbsChannelSdk$2$3;
.super Ljava/lang/Object;
.source "AbsChannelSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/common/abs/AbsChannelSdk$2;->onLogout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/common/abs/AbsChannelSdk$2;

.field final synthetic val$shouldRelogin:Z


# direct methods
.method constructor <init>(Ljy/sdk/common/abs/AbsChannelSdk$2;Z)V
    .registers 3

    .line 201
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$2$3;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$2;

    iput-boolean p2, p0, Ljy/sdk/common/abs/AbsChannelSdk$2$3;->val$shouldRelogin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 205
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$2$3;->this$1:Ljy/sdk/common/abs/AbsChannelSdk$2;

    iget-object v0, v0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->globalListener:Ljy/sdk/shell/callback/ISdkListener;
    invoke-static {v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$200(Ljy/sdk/common/abs/AbsChannelSdk;)Ljy/sdk/shell/callback/ISdkListener;

    move-result-object v0

    iget-boolean v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$2$3;->val$shouldRelogin:Z

    invoke-interface {v0, v1}, Ljy/sdk/shell/callback/ISdkListener;->onLogout(Z)V

    return-void
.end method
