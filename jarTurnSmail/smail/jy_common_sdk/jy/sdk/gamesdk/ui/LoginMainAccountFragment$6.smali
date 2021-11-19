.class Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$6;
.super Ljava/lang/Object;
.source "LoginMainAccountFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->switchEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;Z)V
    .registers 3

    .line 174
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$6;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    iput-boolean p2, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$6;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 177
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$6;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->tv_login_submit_jy:Landroid/widget/TextView;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->access$200(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$6;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$6;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->tv_forget_pw_jy:Landroid/view/View;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->access$300(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$6;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$6;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->tv_protocal_jy:Landroid/widget/TextView;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->access$400(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$6;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
