.class Ljy/sdk/gamesdk/ui/ResetPassFragment$3;
.super Ljava/lang/Object;
.source "ResetPassFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/ResetPassFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/ResetPassFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/ResetPassFragment;)V
    .registers 2

    .line 95
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment$3;->this$0:Ljy/sdk/gamesdk/ui/ResetPassFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDismiss(I)V
    .registers 4

    .line 100
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment$3;->this$0:Ljy/sdk/gamesdk/ui/ResetPassFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/ResetPassFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Ljy/sdk/gamesdk/activity/LoginActivity;

    const/4 v0, 0x0

    .line 101
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljy/sdk/gamesdk/activity/LoginActivity;->showLoginMainFragment(I[Ljava/lang/String;)V

    return-void
.end method
