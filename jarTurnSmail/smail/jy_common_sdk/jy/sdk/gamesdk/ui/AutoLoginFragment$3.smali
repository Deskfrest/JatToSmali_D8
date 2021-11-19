.class Ljy/sdk/gamesdk/ui/AutoLoginFragment$3;
.super Ljava/lang/Object;
.source "AutoLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/AutoLoginFragment;->switchEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment;Z)V
    .registers 3

    .line 201
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$3;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iput-boolean p2, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$3;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 204
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$3;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    # getter for: Ljy/sdk/gamesdk/ui/AutoLoginFragment;->tv_login_auto_change_account:Landroid/view/View;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->access$400(Ljy/sdk/gamesdk/ui/AutoLoginFragment;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$3;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
