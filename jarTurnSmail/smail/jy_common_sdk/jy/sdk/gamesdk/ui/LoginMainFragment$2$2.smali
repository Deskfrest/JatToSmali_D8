.class Ljy/sdk/gamesdk/ui/LoginMainFragment$2$2;
.super Ljava/lang/Object;
.source "LoginMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->showLoginMain(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/gamesdk/ui/LoginMainFragment$2;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/LoginMainFragment$2;Landroid/app/Activity;)V
    .registers 3

    .line 273
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2$2;->this$1:Ljy/sdk/gamesdk/ui/LoginMainFragment$2;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 277
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2$2;->val$activity:Landroid/app/Activity;

    check-cast v0, Ljy/sdk/gamesdk/activity/LoginActivity;

    const/4 v1, 0x0

    .line 278
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljy/sdk/gamesdk/activity/LoginActivity;->showLoginMainFragment(I[Ljava/lang/String;)V

    return-void
.end method
