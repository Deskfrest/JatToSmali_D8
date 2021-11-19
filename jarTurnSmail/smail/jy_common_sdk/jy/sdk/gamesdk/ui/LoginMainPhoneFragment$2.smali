.class Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment$2;
.super Ljava/lang/Object;
.source "LoginMainPhoneFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->switchEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;Z)V
    .registers 3

    .line 152
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment$2;->this$0:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    iput-boolean p2, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment$2;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 157
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment$2;->this$0:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->tv_login_submit_jy:Landroid/widget/TextView;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->access$000(Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment$2;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment$2;->this$0:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->tv_protocal_jy:Landroid/widget/TextView;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->access$100(Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment$2;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
