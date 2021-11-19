.class Ljy/sdk/gamesdk/ui/AutoLoginFragment$6;
.super Ljava/lang/Object;
.source "AutoLoginFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/ui/AutoLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment;)V
    .registers 2

    .line 356
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$6;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDismiss(I)V
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    .line 361
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$6;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_34

    :cond_b
    const/4 v0, -0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1c

    .line 363
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$6;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Ljy/sdk/gamesdk/activity/LoginActivity;

    const/4 v0, 0x2

    .line 364
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljy/sdk/gamesdk/activity/LoginActivity;->showLoginMainFragment(I[Ljava/lang/String;)V

    goto :goto_34

    .line 365
    :cond_1c
    sget v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->TYPE_CLOSE_CURRENT_CHECK_PHONE:I

    if-ne p1, v0, :cond_34

    .line 366
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$6;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Ljy/sdk/gamesdk/activity/LoginActivity;

    const/4 v0, 0x1

    .line 367
    new-array v2, v0, [Ljava/lang/String;

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$6;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    # getter for: Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mPhone:Ljava/lang/String;
    invoke-static {v3}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->access$100(Ljy/sdk/gamesdk/ui/AutoLoginFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Ljy/sdk/gamesdk/activity/LoginActivity;->showLoginMainFragment(I[Ljava/lang/String;)V

    :cond_34
    :goto_34
    return-void
.end method
