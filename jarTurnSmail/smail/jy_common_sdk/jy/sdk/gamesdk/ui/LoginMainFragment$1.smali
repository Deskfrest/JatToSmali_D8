.class Ljy/sdk/gamesdk/ui/LoginMainFragment$1;
.super Ljava/lang/Object;
.source "LoginMainFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/ui/LoginMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/LoginMainFragment;)V
    .registers 2

    .line 151
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dismissChild()V
    .registers 3

    .line 173
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainAccountFragment:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->access$000(Ljy/sdk/gamesdk/ui/LoginMainFragment;)Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainAccountFragment:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->access$000(Ljy/sdk/gamesdk/ui/LoginMainFragment;)Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    move-result-object v0

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 174
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainAccountFragment:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->access$000(Ljy/sdk/gamesdk/ui/LoginMainFragment;)Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    move-result-object v0

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->dismiss()V

    .line 175
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    # setter for: Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainAccountFragment:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;
    invoke-static {v0, v1}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->access$002(Ljy/sdk/gamesdk/ui/LoginMainFragment;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    .line 177
    :cond_23
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainPhoneFragment:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->access$100(Ljy/sdk/gamesdk/ui/LoginMainFragment;)Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainPhoneFragment:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->access$100(Ljy/sdk/gamesdk/ui/LoginMainFragment;)Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    move-result-object v0

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 178
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainPhoneFragment:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->access$100(Ljy/sdk/gamesdk/ui/LoginMainFragment;)Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    move-result-object v0

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->dismiss()V

    .line 179
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    # setter for: Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainPhoneFragment:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;
    invoke-static {v0, v1}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->access$102(Ljy/sdk/gamesdk/ui/LoginMainFragment;Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;)Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    :cond_45
    return-void
.end method


# virtual methods
.method public onFragmentDismiss(I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_15

    .line 156
    sget-object p1, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    const-string v0, "TYPE_CLOSE_NORMAL"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->dismissChild()V

    .line 158
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/LoginMainFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_4a

    :cond_15
    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    .line 160
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->fastReg(Landroid/app/Activity;)V

    .line 161
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->dismissChild()V

    goto :goto_4a

    :cond_25
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3d

    .line 163
    new-instance p1, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    invoke-direct {p1}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;-><init>()V

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->setCancelable(Z)V

    .line 165
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "LoginMainFragment"

    invoke-virtual {p1, v0, v1}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_4a

    :cond_3d
    const/4 v0, -0x2

    if-ne p1, v0, :cond_4a

    .line 167
    sget-object p1, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    const-string v0, "TYPE_CLOSE_CURRENT"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;->dismissChild()V

    :cond_4a
    :goto_4a
    return-void
.end method
