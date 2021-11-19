.class Ljy/sdk/gamesdk/ui/RegisterAccountFragment$2;
.super Ljava/lang/Object;
.source "RegisterAccountFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;)V
    .registers 2

    .line 76
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$2;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDismiss(I)V
    .registers 4

    .line 81
    # getter for: Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->TYPE_CAKK_BACK_SUC:I
    invoke-static {}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->access$100()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 82
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$2;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 85
    :cond_e
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$2;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Ljy/sdk/gamesdk/activity/LoginActivity;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 86
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljy/sdk/gamesdk/activity/LoginActivity;->showLoginMainFragment(I[Ljava/lang/String;)V

    return-void
.end method
