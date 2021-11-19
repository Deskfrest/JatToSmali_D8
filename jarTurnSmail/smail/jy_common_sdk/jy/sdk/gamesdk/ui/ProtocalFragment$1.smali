.class Ljy/sdk/gamesdk/ui/ProtocalFragment$1;
.super Ljava/lang/Object;
.source "ProtocalFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/ProtocalFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/ProtocalFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/ProtocalFragment;)V
    .registers 2

    .line 45
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ProtocalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDismiss(I)V
    .registers 4

    .line 49
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ProtocalFragment;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 53
    :cond_9
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ProtocalFragment;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_34

    goto :goto_33

    .line 60
    :pswitch_1b
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ProtocalFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/ProtocalFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Ljy/sdk/gamesdk/activity/LoginActivity;

    .line 61
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljy/sdk/gamesdk/activity/LoginActivity;->showLoginMainFragment(I[Ljava/lang/String;)V

    goto :goto_33

    .line 56
    :pswitch_27
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ProtocalFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/ProtocalFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Ljy/sdk/gamesdk/activity/LoginActivity;

    const/4 v1, 0x2

    .line 57
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljy/sdk/gamesdk/activity/LoginActivity;->showLoginMainFragment(I[Ljava/lang/String;)V

    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1b
    .end packed-switch
.end method
