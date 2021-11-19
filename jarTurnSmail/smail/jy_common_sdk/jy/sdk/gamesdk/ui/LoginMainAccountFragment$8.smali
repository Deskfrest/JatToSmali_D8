.class Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$8;
.super Ljava/lang/Object;
.source "LoginMainAccountFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->loadLastGame(Ljava/util/List;Landroid/app/Activity;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

.field final synthetic val$loadListener:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;

.field final synthetic val$users:Ljava/util/List;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;Ljava/util/List;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;)V
    .registers 4

    .line 365
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$8;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$8;->val$users:Ljava/util/List;

    iput-object p3, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$8;->val$loadListener:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 7

    const-string v0, "GDS_00"

    const-string v1, "status"

    .line 369
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string p1, "jy_sdk"

    const-string v0, "\u83b7\u53d6\u6700\u8fd1\u73a9\u7684\u6e38\u620f\u5217\u8868\u5931\u8d25!"

    .line 370
    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    const-string v0, "data"

    .line 374
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 376
    :try_start_1c
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 377
    :goto_22
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_6d

    .line 378
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "name"

    .line 379
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "game"

    .line 380
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    new-instance v3, Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-direct {v3}, Ljy/sdk/gamesdk/entity/UserInfo;-><init>()V

    .line 383
    invoke-virtual {v3, v2}, Ljy/sdk/gamesdk/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$8;->val$users:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 385
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$8;->val$users:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 386
    iget-object v3, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$8;->val$users:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljy/sdk/gamesdk/entity/UserInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6700\u65b0\u767b\u5f55:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljy/sdk/gamesdk/entity/UserInfo;->setLastGame(Ljava/lang/String;)V

    :cond_6a
    add-int/lit8 p1, p1, 0x1

    goto :goto_22

    .line 389
    :cond_6d
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$8;->val$loadListener:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;

    if-eqz p1, :cond_82

    .line 390
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$8;->val$loadListener:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$8;->val$users:Ljava/util/List;

    invoke-interface {p1, v0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;->onLoadComplete(Ljava/util/List;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_78} :catch_79

    goto :goto_82

    :catch_79
    move-exception p1

    .line 393
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "jy_sdk"

    .line 394
    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_82
    :goto_82
    return-void
.end method
