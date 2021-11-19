.class Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;
.super Ljava/lang/Object;
.source "AutoLoginFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/AutoLoginFragment;->startLoginByAccount()V
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

    .line 145
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->val$userName:Ljava/lang/String;

    iput-object p3, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 12

    .line 150
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    const/4 v1, 0x1

    # invokes: Ljy/sdk/gamesdk/ui/AutoLoginFragment;->switchEnable(Z)V
    invoke-static {v0, v1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->access$000(Ljy/sdk/gamesdk/ui/AutoLoginFragment;Z)V

    const-wide/16 v0, 0x5dc

    const/4 v2, -0x1

    .line 153
    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "YHDL_000"

    const-string v1, "status"

    .line 154
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_76

    const-string v0, "msg"

    const-string v3, "error"

    .line 155
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "jy_sdk"

    .line 156
    invoke-static {v3, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v3, v3, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 158
    invoke-static {v0}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLoginFailed(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V

    .line 160
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v1, v1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v9, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v4, 0x3

    const/16 v5, 0x9

    iget-object v6, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->val$userName:Ljava/lang/String;

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

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

    :cond_76
    const-string v0, "sid"

    .line 164
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 166
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u670d\u52a1\u5668\u9519\u8bef\uff0csid\u4e3a\u7a7a"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p1, "\u670d\u52a1\u5668\u9519\u8bef\uff0csid\u4e3a\u7a7a"

    .line 167
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLoginFailed(Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {p1, v1}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V

    return-void

    .line 171
    :cond_96
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2$1;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2$1;-><init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x1f4

    .line 178
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 179
    # getter for: Ljy/sdk/gamesdk/ui/AutoLoginFragment;->clickSwitch:Z
    invoke-static {}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->access$300()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 181
    sget-object p1, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    const-string v0, "has click switch, stop callBack!"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_b5
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLoginSuc(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "nextAuto"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 187
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v1, v1, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->val$userName:Ljava/lang/String;

    iget-object v4, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->val$password:Ljava/lang/String;

    invoke-static {v1, v3, v4, p1, v0}, Ljy/sdk/gamesdk/GameService;->syncUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 188
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {p1, v2}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d4} :catch_d5

    goto :goto_fa

    :catch_d5
    move-exception p1

    .line 190
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$2;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    invoke-virtual {v0, v2}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->dismiss(I)V

    .line 192
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_fa
    return-void
.end method
