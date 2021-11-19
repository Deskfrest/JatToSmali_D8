.class Ljy/sdk/gamesdk/ui/LoginMainFragment$2$1;
.super Ljava/lang/Object;
.source "LoginMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->onFinish(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/gamesdk/ui/LoginMainFragment$2;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/LoginMainFragment$2;Landroid/os/Bundle;)V
    .registers 3

    .line 253
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2$1;->this$1:Ljy/sdk/gamesdk/ui/LoginMainFragment$2;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 257
    new-instance v0, Ljy/sdk/gamesdk/ui/FastRegFragment;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/FastRegFragment;-><init>()V

    .line 258
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2$1;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/FastRegFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    .line 259
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/FastRegFragment;->setCancelable(Z)V

    .line 260
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2$1;->this$1:Ljy/sdk/gamesdk/ui/LoginMainFragment$2;

    iget-object v1, v1, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoginMainFragment"

    invoke-virtual {v0, v1, v2}, Ljy/sdk/gamesdk/ui/FastRegFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
