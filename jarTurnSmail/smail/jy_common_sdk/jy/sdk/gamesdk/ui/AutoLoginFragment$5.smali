.class Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;
.super Ljava/lang/Object;
.source "AutoLoginFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/AutoLoginFragment;->startAutoLoginBySid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment;)V
    .registers 2

    .line 294
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 7

    .line 299
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    const/4 v1, 0x1

    # invokes: Ljy/sdk/gamesdk/ui/AutoLoginFragment;->switchEnable(Z)V
    invoke-static {v0, v1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->access$000(Ljy/sdk/gamesdk/ui/AutoLoginFragment;Z)V

    const-wide/16 v2, 0x5dc

    const/4 v0, -0x1

    .line 302
    :try_start_9
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const-string v2, "YHDL_000"

    const-string v3, "status"

    .line 303
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x2

    if-nez v2, :cond_3b

    .line 304
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v1, v1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "msg"

    const-string v4, "\u81ea\u52a8\u767b\u5f55\u51fa\u9519"

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v1, "msg"

    const-string v2, "\u81ea\u52a8\u767b\u5f55\u51fa\u9519"

    .line 305
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLoginFailed(Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {p1, v3}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V

    return-void

    :cond_3b
    const-string v2, "sid"

    .line 309
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 311
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v1, v1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "\u670d\u52a1\u5668\u9519\u8bef\uff0csid\u4e3a\u7a7a"

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v1, "msg"

    const-string v2, "\u8fd4\u56desid\u4e3a\u7a7a"

    .line 312
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLoginFailed(Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {p1, v3}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V

    return-void

    .line 316
    :cond_61
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v3, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5$1;

    invoke-direct {v3, p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5$1;-><init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;)V

    invoke-static {p1, v3}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x1f4

    .line 323
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 325
    # getter for: Ljy/sdk/gamesdk/ui/AutoLoginFragment;->clickSwitch:Z
    invoke-static {}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->access$300()Z

    move-result p1

    if-eqz p1, :cond_80

    .line 327
    sget-object p1, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "has click switch, stop callBack!"

    invoke-static {p1, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 331
    :cond_80
    invoke-static {v2}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLoginSuc(Ljava/lang/String;)V

    .line 332
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v3, "last_sid_username"

    const-string v4, ""

    invoke-static {p1, v3, v4}, Ljy/sdk/gamesdk/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 333
    iget-object v3, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v3, v3, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v4, ""

    invoke-static {v3, p1, v4, v2, v1}, Ljy/sdk/gamesdk/GameService;->syncUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 334
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9d} :catch_9e

    goto :goto_c3

    :catch_9e
    move-exception p1

    .line 336
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v1, v1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 338
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$5;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V

    :goto_c3
    return-void
.end method
