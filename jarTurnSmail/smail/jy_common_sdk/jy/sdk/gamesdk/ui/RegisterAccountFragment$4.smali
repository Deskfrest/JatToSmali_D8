.class Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;
.super Ljava/lang/Object;
.source "RegisterAccountFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->startReg(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 148
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->val$username:Ljava/lang/String;

    iput-object p3, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 11

    .line 152
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    const/4 v1, 0x1

    # invokes: Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->switchEnable(Z)V
    invoke-static {v0, v1}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->access$400(Ljy/sdk/gamesdk/ui/RegisterAccountFragment;Z)V

    const-string v0, "YHZC_000"

    const-string v1, "status"

    .line 153
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 154
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    iget-object v1, v1, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    new-instance v8, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v3, 0x3

    const/4 v4, 0x6

    iget-object v5, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->val$username:Ljava/lang/String;

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    iget-object v2, v2, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "msg"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v8}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    return-void

    :cond_70
    const-string v0, "sid"

    .line 158
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 160
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u6ce8\u518c\u5931\u8d25,sid\u4e3a\u7a7a"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_86
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->val$username:Ljava/lang/String;

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->val$password:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Ljy/sdk/gamesdk/GameService;->syncUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    iget-object v1, v1, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v3, 0x3

    const/4 v4, 0x5

    iget-object v5, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->val$username:Ljava/lang/String;

    iget-object v6, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    iget-object v6, v6, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    const-string v0, "account"

    .line 165
    invoke-static {v0}, Ljy/sdk/gamesdk/activity/LoginActivity;->onReg(Ljava/lang/String;)V

    .line 166
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLoginSuc(Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/RegisterAccountFragment$4;->this$0:Ljy/sdk/gamesdk/ui/RegisterAccountFragment;

    # getter for: Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->TYPE_CAKK_BACK_SUC:I
    invoke-static {}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->access$100()I

    move-result v0

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/RegisterAccountFragment;->dismiss(I)V

    return-void
.end method
