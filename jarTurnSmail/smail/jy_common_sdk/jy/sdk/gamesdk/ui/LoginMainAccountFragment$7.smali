.class Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$7;
.super Ljava/lang/Object;
.source "LoginMainAccountFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->loadUsersInfo(Landroid/app/Activity;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$loadListener:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;Landroid/app/Activity;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;)V
    .registers 4

    .line 314
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$7;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$7;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$7;->val$loadListener:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 319
    invoke-static {}, Ljy/sdk/gamesdk/db/UserDbUtils;->getInstance()Ljy/sdk/gamesdk/db/UserDbUtils;

    move-result-object v0

    invoke-virtual {v0}, Ljy/sdk/gamesdk/db/UserDbUtils;->queryUser()Ljava/util/List;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_17

    .line 322
    sget-object v0, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "count less than 2\uff0c stop get the lastGame!"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 327
    :cond_17
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$7;->val$context:Landroid/app/Activity;

    const-string v2, "last_user_name"

    invoke-static {v1, v2}, Ljy/sdk/gamesdk/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$7;->val$context:Landroid/app/Activity;

    const-string v3, "last_user_pass"

    invoke-static {v2, v3}, Ljy/sdk/gamesdk/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7e

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 330
    new-instance v3, Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-direct {v3}, Ljy/sdk/gamesdk/entity/UserInfo;-><init>()V

    .line 331
    invoke-virtual {v3, v1}, Ljy/sdk/gamesdk/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v3, v2}, Ljy/sdk/gamesdk/entity/UserInfo;->setPassword(Ljava/lang/String;)V

    .line 335
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    const-string v2, "jy_sdk"

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in list "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_79

    :cond_63
    const-string v2, "jy_sdk"

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "didn\'t found last user in db:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_79
    const/4 v1, 0x0

    .line 343
    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_85

    :cond_7e
    const-string v1, "jy_sdk"

    const-string v2, "didn\'t found last user in sp"

    .line 345
    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/FLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_85
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$7;->val$loadListener:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;

    if-eqz v1, :cond_8e

    .line 348
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$7;->val$loadListener:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;

    invoke-interface {v1, v0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;->onLoadComplete(Ljava/util/List;)V

    .line 350
    :cond_8e
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$7;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$7;->val$context:Landroid/app/Activity;

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$7;->val$loadListener:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;

    # invokes: Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->loadLastGame(Ljava/util/List;Landroid/app/Activity;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;)V
    invoke-static {v1, v0, v2, v3}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->access$500(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;Ljava/util/List;Landroid/app/Activity;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;)V

    return-void
.end method
