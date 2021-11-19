.class Ljy/sdk/common/abs/AbsChannelSdk$1;
.super Ljava/lang/Object;
.source "AbsChannelSdk.java"

# interfaces
.implements Ljy/sdk/common/abs/innercallbacks/IinitListener;


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

    .line 87
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$1;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailed(Ljava/lang/String;)V
    .registers 5

    .line 108
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u56de\u8c03cp \u6e20\u9053sdk\u521d\u59cb\u5316\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$1;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;
    invoke-static {v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$100(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$1;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    const/4 v1, 0x0

    # setter for: Ljy/sdk/common/abs/AbsChannelSdk;->hasInit:Z
    invoke-static {v0, v1}, Ljy/sdk/common/abs/AbsChannelSdk;->access$002(Ljy/sdk/common/abs/AbsChannelSdk;Z)Z

    .line 111
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$1;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;
    invoke-static {v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$100(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljy/sdk/common/abs/AbsChannelSdk$1$2;

    invoke-direct {v1, p0, p1}, Ljy/sdk/common/abs/AbsChannelSdk$1$2;-><init>(Ljy/sdk/common/abs/AbsChannelSdk$1;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public initSuc(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6e20\u9053sdk\u521d\u59cb\u5316\u6210\u529f :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    :cond_13
    const-string p1, "null"

    :goto_15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object p1, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    const-string v0, "\u56de\u8c03cp \u6e20\u9053sdk\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$1;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    const/4 v0, 0x1

    # setter for: Ljy/sdk/common/abs/AbsChannelSdk;->hasInit:Z
    invoke-static {p1, v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$002(Ljy/sdk/common/abs/AbsChannelSdk;Z)Z

    .line 96
    iget-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$1;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;
    invoke-static {p1}, Ljy/sdk/common/abs/AbsChannelSdk;->access$100(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Ljy/sdk/common/abs/AbsChannelSdk$1$1;

    invoke-direct {v0, p0}, Ljy/sdk/common/abs/AbsChannelSdk$1$1;-><init>(Ljy/sdk/common/abs/AbsChannelSdk$1;)V

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
