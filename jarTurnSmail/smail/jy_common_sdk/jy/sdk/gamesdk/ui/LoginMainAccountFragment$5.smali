.class Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$5;
.super Ljava/lang/Object;
.source "LoginMainAccountFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;


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

    .line 161
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$5;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteUser(Ljy/sdk/gamesdk/entity/UserInfo;)V
    .registers 5

    .line 164
    sget-object v0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Ljy/sdk/gamesdk/db/UserDbUtils;->getInstance()Ljy/sdk/gamesdk/db/UserDbUtils;

    move-result-object v0

    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljy/sdk/gamesdk/db/UserDbUtils;->deteleByUserName(Ljava/lang/String;)V

    return-void
.end method
