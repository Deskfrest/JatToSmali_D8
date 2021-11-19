.class Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$4;
.super Ljava/lang/Object;
.source "LoginMainAccountFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/widget/EditTextAccount$CheckHistoryUserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;
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

    .line 153
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$4;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckUser(Ljy/sdk/gamesdk/entity/UserInfo;)V
    .registers 4

    .line 156
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$4;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_account_jy:Ljy/sdk/gamesdk/widget/EditTextAccount;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->access$100(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)Ljy/sdk/gamesdk/widget/EditTextAccount;

    move-result-object v0

    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$4;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    # getter for: Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->et_accountlogin_pw_jy:Landroid/widget/EditText;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->access$000(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/UserInfo;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$4;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    iput-object p1, v0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->checkedUserInfo:Ljy/sdk/gamesdk/entity/UserInfo;

    return-void
.end method
