.class Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;
.super Ljava/lang/Object;
.source "AutoLoginFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/AutoLoginFragment;->startAutoLoginByAppToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 223
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->val$userName:Ljava/lang/String;

    iput-object p3, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 12

    .line 228
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    const/4 v1, 0x1

    # invokes: Ljy/sdk/gamesdk/ui/AutoLoginFragment;->switchEnable(Z)V
    invoke-static {v0, v1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->access$000(Ljy/sdk/gamesdk/ui/AutoLoginFragment;Z)V

    const-wide/16 v0, 0x5dc

    const/4 v2, -0x1

    .line 230
    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "YHDL_000"

    const-string v1, "status"

    .line 231
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    const/4 v3, 0x0

    if-nez v0, :cond_9f

    const-string v0, "jy_sdk"

    const-string v4, "msg"

    .line 232
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4f7f\u7528\u6e38\u620f\u4e2d\u5fc3token\u767b\u5f55\u51fa\u9519,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "msg"

    const-string v6, "\u4f7f\u7528\u6e38\u620f\u4e2d\u5fc3token\u767b\u5f55\u51fa\u9519"

    .line 234
    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-static {v0, v4}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v0, "msg"

    const-string v4, "apptoken\u767b\u5f55\u51fa\u9519!"

    .line 235
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLoginFailed(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V

    .line 237
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "use_app_token"

    invoke-static {v0, v1, v3}, Ljy/sdk/gamesdk/utils/SpUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 238
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v1, v1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v9, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v4, 0x3

    const/16 v5, 0x8

    iget-object v6, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->val$userName:Ljava/lang/String;

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v3, v3, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "msg"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v9}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    return-void

    :cond_9f
    const-string v0, "sid"

    .line 242
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 244
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u670d\u52a1\u5668\u9519\u8bef\uff0csid\u4e3a\u7a7a"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p1, "\u670d\u52a1\u5668\u9519\u8bef\uff0csid\u4e3a\u7a7a"

    .line 245
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLoginFailed(Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "use_app_token"

    invoke-static {p1, v0, v3}, Ljy/sdk/gamesdk/utils/SpUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 247
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {p1, v1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V

    return-void

    .line 250
    :cond_c8
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4$1;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4$1;-><init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x1f4

    .line 257
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 259
    # getter for: Ljy/sdk/gamesdk/ui/AutoLoginFragment;->clickSwitch:Z
    invoke-static {}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->access$300()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 261
    sget-object p1, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    const-string v0, "has click switch, stop callBack!"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "use_app_token"

    invoke-static {p1, v0, v3}, Ljy/sdk/gamesdk/utils/SpUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_f0
    const-string v0, "\u6e38\u620f\u4e2d\u5fc3App"

    .line 265
    invoke-static {v0}, Ljy/sdk/gamesdk/activity/LoginActivity;->onReg(Ljava/lang/String;)V

    .line 266
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLoginSuc(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->val$userName:Ljava/lang/String;

    iget-object v4, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->val$password:Ljava/lang/String;

    invoke-static {v0, v1, v4, p1, v3}, Ljy/sdk/gamesdk/GameService;->syncUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 268
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v4, 0x3

    const/4 v5, 0x7

    iget-object v6, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->val$userName:Ljava/lang/String;

    iget-object v7, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v7, v7, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v4, v5, v6, v7}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 269
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "use_app_token"

    invoke-static {p1, v0, v3}, Ljy/sdk/gamesdk/utils/SpUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 270
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {p1, v2}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V
    :try_end_12d
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_12d} :catch_12e

    goto :goto_153

    :catch_12e
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 273
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {p1, v2}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V

    :goto_153
    return-void
.end method
