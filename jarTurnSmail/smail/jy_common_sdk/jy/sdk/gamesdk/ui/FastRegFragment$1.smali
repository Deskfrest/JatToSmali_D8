.class Ljy/sdk/gamesdk/ui/FastRegFragment$1;
.super Ljava/lang/Object;
.source "FastRegFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/FastRegFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/FastRegFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/FastRegFragment;)V
    .registers 2

    .line 97
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/FastRegFragment$1;->this$0:Ljy/sdk/gamesdk/ui/FastRegFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDismiss(I)V
    .registers 3

    const-string p1, "fast"

    .line 101
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/LoginActivity;->onReg(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/FastRegFragment$1;->this$0:Ljy/sdk/gamesdk/ui/FastRegFragment;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/FastRegFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "sid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLoginSuc(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/FastRegFragment$1;->this$0:Ljy/sdk/gamesdk/ui/FastRegFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/FastRegFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
