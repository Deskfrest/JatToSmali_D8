.class Ljy/sdk/gamesdk/ui/RegisterAccountFragment$3;
.super Ljava/lang/Object;
.source "RegisterAccountFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->switchEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;Z)V
    .registers 3

    .line 133
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$3;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    iput-boolean p2, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$3;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 137
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$3;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    # getter for: Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->tv_reg_submit:Landroid/view/View;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->access$200(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$3;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$3;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    # getter for: Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->rl_title_back_jy:Landroid/view/View;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->access$300(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$3;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
