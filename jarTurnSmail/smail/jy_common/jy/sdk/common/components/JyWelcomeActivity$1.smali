.class Ljy/sdk/common/components/JyWelcomeActivity$1;
.super Ljava/lang/Object;
.source "JyWelcomeActivity.java"

# interfaces
.implements Ljy/sdk/shell/callback/ICommonCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/common/components/JyWelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/common/components/JyWelcomeActivity;


# direct methods
.method constructor <init>(Ljy/sdk/common/components/JyWelcomeActivity;)V
    .registers 2

    .line 64
    iput-object p1, p0, Ljy/sdk/common/components/JyWelcomeActivity$1;->this$0:Ljy/sdk/common/components/JyWelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .registers 6

    .line 75
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity$1;->this$0:Ljy/sdk/common/components/JyWelcomeActivity;

    # getter for: Ljy/sdk/common/components/JyWelcomeActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Ljy/sdk/common/components/JyWelcomeActivity;->access$000(Ljy/sdk/common/components/JyWelcomeActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Ljy/sdk/common/components/JyWelcomeActivity$1;->this$0:Ljy/sdk/common/components/JyWelcomeActivity;

    # getter for: Ljy/sdk/common/components/JyWelcomeActivity;->hasPic:Z
    invoke-static {p1}, Ljy/sdk/common/components/JyWelcomeActivity;->access$100(Ljy/sdk/common/components/JyWelcomeActivity;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 77
    iget-object p1, p0, Ljy/sdk/common/components/JyWelcomeActivity$1;->this$0:Ljy/sdk/common/components/JyWelcomeActivity;

    # invokes: Ljy/sdk/common/components/JyWelcomeActivity;->goCpLauncherActivity()V
    invoke-static {p1}, Ljy/sdk/common/components/JyWelcomeActivity;->access$200(Ljy/sdk/common/components/JyWelcomeActivity;)V

    :cond_2f
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6

    .line 68
    iget-object v0, p0, Ljy/sdk/common/components/JyWelcomeActivity$1;->this$0:Ljy/sdk/common/components/JyWelcomeActivity;

    # getter for: Ljy/sdk/common/components/JyWelcomeActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Ljy/sdk/common/components/JyWelcomeActivity;->access$000(Ljy/sdk/common/components/JyWelcomeActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Ljy/sdk/common/components/JyWelcomeActivity$1;->this$0:Ljy/sdk/common/components/JyWelcomeActivity;

    # getter for: Ljy/sdk/common/components/JyWelcomeActivity;->hasPic:Z
    invoke-static {p1}, Ljy/sdk/common/components/JyWelcomeActivity;->access$100(Ljy/sdk/common/components/JyWelcomeActivity;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 70
    iget-object p1, p0, Ljy/sdk/common/components/JyWelcomeActivity$1;->this$0:Ljy/sdk/common/components/JyWelcomeActivity;

    # invokes: Ljy/sdk/common/components/JyWelcomeActivity;->goCpLauncherActivity()V
    invoke-static {p1}, Ljy/sdk/common/components/JyWelcomeActivity;->access$200(Ljy/sdk/common/components/JyWelcomeActivity;)V

    :cond_2f
    return-void
.end method
