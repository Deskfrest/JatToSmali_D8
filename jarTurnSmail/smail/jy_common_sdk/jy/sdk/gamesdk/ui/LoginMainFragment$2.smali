.class Ljy/sdk/gamesdk/ui/LoginMainFragment$2;
.super Ljava/lang/Object;
.source "LoginMainFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/LoginMainFragment;->fastReg(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/LoginMainFragment;Landroid/app/Activity;)V
    .registers 3

    .line 211
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showLoginMain(Landroid/app/Activity;)V
    .registers 3

    .line 273
    new-instance v0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2$2;

    invoke-direct {v0, p0, p1}, Ljy/sdk/gamesdk/ui/LoginMainFragment$2$2;-><init>(Ljy/sdk/gamesdk/ui/LoginMainFragment$2;Landroid/app/Activity;)V

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 9

    const-string v0, "YHYKZC_000"

    const-string v1, "status"

    .line 231
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_98

    const-string v0, "data"

    .line 233
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_24

    .line 235
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->val$activity:Landroid/app/Activity;

    const-string v0, "\u83b7\u53d6\u8d26\u53f7\u5bc6\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5!"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->showLoginMain(Landroid/app/Activity;)V

    return-void

    :cond_24
    const-string v0, "sid"

    .line 239
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "name"

    .line 240
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pwd"

    .line 241
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_8b

    .line 249
    :cond_49
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "name"

    .line 250
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sid"

    .line 251
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pwd"

    .line 252
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v4, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->val$activity:Landroid/app/Activity;

    new-instance v5, Ljy/sdk/gamesdk/ui/LoginMainFragment$2$1;

    invoke-direct {v5, p0, v3}, Ljy/sdk/gamesdk/ui/LoginMainFragment$2$1;-><init>(Ljy/sdk/gamesdk/ui/LoginMainFragment$2;Landroid/os/Bundle;)V

    invoke-static {v4, v5}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 263
    iget-object v3, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Ljy/sdk/gamesdk/utils/EncTool;->encryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-static {v3, v2, p1, v0, v4}, Ljy/sdk/gamesdk/GameService;->syncUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->mActivity:Landroid/app/Activity;

    new-instance v3, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v4, 0x1

    iget-object v5, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    iget-object v5, v5, Ljy/sdk/gamesdk/ui/LoginMainFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v4, v2, v5}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v3}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    goto :goto_f2

    .line 243
    :cond_8b
    :goto_8b
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->val$activity:Landroid/app/Activity;

    const-string v0, "\u83b7\u53d6\u8d26\u53f7\u5bc6\u7801sid\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5!"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->showLoginMain(Landroid/app/Activity;)V

    return-void

    .line 266
    :cond_98
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    iget-object v2, v2, Ljy/sdk/gamesdk/ui/LoginMainFragment;->mActivity:Landroid/app/Activity;

    new-instance v3, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "msg"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->this$0:Ljy/sdk/gamesdk/ui/LoginMainFragment;

    iget-object v6, v6, Ljy/sdk/gamesdk/ui/LoginMainFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v4, v5, v6}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 267
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 268
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;->showLoginMain(Landroid/app/Activity;)V

    :goto_f2
    return-void
.end method
