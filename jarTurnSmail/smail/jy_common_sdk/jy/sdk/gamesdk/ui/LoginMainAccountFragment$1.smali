.class Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$1;
.super Ljava/lang/Object;
.source "LoginMainAccountFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->initAccountStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)V
    .registers 2

    .line 94
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 99
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_pw_jy:Landroid/widget/EditText;
    invoke-static {p1}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->access$000(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$1;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->checkedUserInfo:Ljy/sdk/gamesdk/entity/UserInfo;

    return-void
.end method
