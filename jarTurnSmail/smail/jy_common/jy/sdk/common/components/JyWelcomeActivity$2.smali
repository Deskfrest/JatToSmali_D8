.class Ljy/sdk/common/components/JyWelcomeActivity$2;
.super Ljava/lang/Object;
.source "JyWelcomeActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

    .line 87
    iput-object p1, p0, Ljy/sdk/common/components/JyWelcomeActivity$2;->this$0:Ljy/sdk/common/components/JyWelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 98
    iget-object p1, p0, Ljy/sdk/common/components/JyWelcomeActivity$2;->this$0:Ljy/sdk/common/components/JyWelcomeActivity;

    # getter for: Ljy/sdk/common/components/JyWelcomeActivity;->TAG:Ljava/lang/String;
    invoke-static {p1}, Ljy/sdk/common/components/JyWelcomeActivity;->access$000(Ljy/sdk/common/components/JyWelcomeActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationEnd"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Ljy/sdk/common/components/JyWelcomeActivity$2;->this$0:Ljy/sdk/common/components/JyWelcomeActivity;

    # invokes: Ljy/sdk/common/components/JyWelcomeActivity;->goCpLauncherActivity()V
    invoke-static {p1}, Ljy/sdk/common/components/JyWelcomeActivity;->access$200(Ljy/sdk/common/components/JyWelcomeActivity;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
