.class Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$2;
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

    .line 113
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$2;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

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

    .line 118
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$2;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->checkedUserInfo:Ljy/sdk/gamesdk/entity/UserInfo;

    return-void
.end method
