.class Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3$1;
.super Ljava/lang/Object;
.source "LoginMainAccountFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3;->onLoadComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3;

.field final synthetic val$users:Ljava/util/List;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3;Ljava/util/List;)V
    .registers 3

    .line 140
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3$1;->this$1:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3$1;->val$users:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 144
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3$1;->this$1:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_account_jy:Ljy/sdk/gamesdk/widget/EditTextAccount;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->access$100(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)Ljy/sdk/gamesdk/widget/EditTextAccount;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3$1;->val$users:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setHistoryUsers(Ljava/util/List;)V

    return-void
.end method
