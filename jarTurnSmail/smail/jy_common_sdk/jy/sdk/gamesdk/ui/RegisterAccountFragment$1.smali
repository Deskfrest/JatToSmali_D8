.class Ljy/sdk/gamesdk/ui/RegisterAccountFragment$1;
.super Ljava/lang/Object;
.source "RegisterAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;)V
    .registers 2

    .line 62
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$1;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    if-eqz p2, :cond_d

    .line 67
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$1;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    # getter for: Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->jy_register_account_tips:Landroid/widget/TextView;
    invoke-static {p1}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->access$000(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18

    .line 69
    :cond_d
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$1;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    # getter for: Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->jy_register_account_tips:Landroid/widget/TextView;
    invoke-static {p1}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->access$000(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_18
    return-void
.end method
