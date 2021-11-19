.class Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$2;
.super Ljava/lang/Object;
.source "ForgetPasswordFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;)V
    .registers 2

    .line 98
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$2;->this$0:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "YHZHMM_005"

    const-string v1, "status"

    .line 102
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "jy_sdk"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$2;->this$0:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_38
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$2;->this$0:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u8bf7\u7559\u610f\u9a8c\u8bc1\u7801~"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
