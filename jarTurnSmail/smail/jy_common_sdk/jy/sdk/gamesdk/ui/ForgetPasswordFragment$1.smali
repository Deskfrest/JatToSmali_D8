.class Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$1;
.super Ljava/lang/Object;
.source "ForgetPasswordFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;)V
    .registers 2

    .line 61
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDismiss(I)V
    .registers 4

    .line 65
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;

    # getter for: Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->open_ResetPassFragment:I
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->access$000(Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;)I

    move-result v0

    if-eq p1, v0, :cond_15

    .line 66
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Ljy/sdk/gamesdk/activity/LoginActivity;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 67
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljy/sdk/gamesdk/activity/LoginActivity;->showLoginMainFragment(I[Ljava/lang/String;)V

    :cond_15
    return-void
.end method
