.class Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;
.super Ljava/lang/Object;
.source "AutoLoginFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/AutoLoginFragment;->startLoginByPhone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment;Ljava/lang/String;)V
    .registers 3

    .line 77
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->val$phone:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 12

    .line 81
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    const/4 v1, 0x1

    # invokes: Ljy/sdk/gamesdk/ui/AutoLoginFragment;->switchEnable(Z)V
    invoke-static {v0, v1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->access$000(Ljy/sdk/gamesdk/ui/AutoLoginFragment;Z)V

    const-wide/16 v0, 0x5dc

    .line 83
    :try_start_8
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "YHZC_000"

    const-string v1, "status"

    .line 84
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "phone"

    .line 86
    invoke-static {v0}, Ljy/sdk/gamesdk/activity/LoginActivity;->onReg(Ljava/lang/String;)V

    const-string v0, "jy_sdk"

    const-string v1, "--new user login suc--"

    .line 87
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v1, v1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Ljy/sdk/gamesdk/entity/DataInfo;

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    # getter for: Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mPhone:Ljava/lang/String;
    invoke-static {v3}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->access$100(Ljy/sdk/gamesdk/ui/AutoLoginFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v4, v4, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v2, v5, v5, v3, v4}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    goto :goto_5a

    :cond_45
    const-string v0, "YHDL_000"

    const-string v1, "status"

    .line 89
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const-string v0, "jy_sdk"

    const-string v1, "--old user login suc--"

    .line 91
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5a
    const-string v0, "sid"

    .line 101
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 104
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u670d\u52a1\u5668\u9519\u8bef\uff0csid\u4e3a\u7a7a"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p1, "\u670d\u52a1\u5668\u9519\u8bef\uff0csid\u4e3a\u7a7a"

    .line 105
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLoginFailed(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    sget v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->TYPE_CLOSE_CURRENT_CHECK_PHONE:I

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V

    return-void

    .line 110
    :cond_7c
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1$1;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1$1;-><init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x1f4

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 118
    # getter for: Ljy/sdk/gamesdk/ui/AutoLoginFragment;->clickSwitch:Z
    invoke-static {}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->access$300()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 120
    sget-object p1, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    const-string v0, "has click switch, stop callBack!"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_9b
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLoginSuc(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "nextAuto"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 126
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v1, v1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->val$phone:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, p1, v0}, Ljy/sdk/gamesdk/GameService;->syncUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 127
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V

    goto :goto_129

    :cond_bc
    const-string v0, "msg"

    const-string v1, "error"

    .line 93
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v1, v1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v1, "jy_sdk"

    .line 95
    invoke-static {v1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v2, v2, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v9, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v4, 0x3

    const/4 v5, 0x4

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    # getter for: Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mPhone:Ljava/lang/String;
    invoke-static {v3}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->access$100(Ljy/sdk/gamesdk/ui/AutoLoginFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v3, v3, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v3, "msg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v9}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 97
    invoke-static {v0}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLoginFailed(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    sget v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->TYPE_CLOSE_CURRENT_CHECK_PHONE:I

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_101} :catch_102

    return-void

    :catch_102
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    sget v1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->TYPE_CLOSE_CURRENT_CHECK_PHONE:I

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V

    .line 131
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$1;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_129
    return-void
.end method
