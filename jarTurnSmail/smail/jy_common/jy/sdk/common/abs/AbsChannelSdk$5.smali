.class Ljy/sdk/common/abs/AbsChannelSdk$5;
.super Ljava/lang/Object;
.source "AbsChannelSdk.java"

# interfaces
.implements Ljy/sdk/common/abs/innercallbacks/IDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/common/abs/AbsChannelSdk;->exit(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/common/abs/AbsChannelSdk;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljy/sdk/common/abs/AbsChannelSdk;Landroid/app/Activity;)V
    .registers 3

    .line 481
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$5;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iput-object p2, p0, Ljy/sdk/common/abs/AbsChannelSdk$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickCancel()V
    .registers 3

    .line 497
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "\u70b9\u51fb\u4e86\u53d6\u6d88\u9000\u51fa"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clickConfirm()V
    .registers 3

    .line 484
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$5;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    const/4 v1, 0x0

    # setter for: Ljy/sdk/common/abs/AbsChannelSdk;->hasLogin:Z
    invoke-static {v0, v1}, Ljy/sdk/common/abs/AbsChannelSdk;->access$302(Ljy/sdk/common/abs/AbsChannelSdk;Z)Z

    .line 485
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "\u56de\u8c03cp \u70b9\u51fb\u4e86\u786e\u8ba4\u9000\u51fa"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$5;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljy/sdk/common/abs/AbsChannelSdk$5$1;

    invoke-direct {v1, p0}, Ljy/sdk/common/abs/AbsChannelSdk$5$1;-><init>(Ljy/sdk/common/abs/AbsChannelSdk$5;)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDismiss()V
    .registers 3

    .line 502
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v1, "\u9000\u51fa\u5bf9\u8bdd\u6846\u6d88\u5931"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
