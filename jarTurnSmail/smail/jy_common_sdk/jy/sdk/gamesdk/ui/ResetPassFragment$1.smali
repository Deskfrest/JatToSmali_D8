.class Ljy/sdk/gamesdk/ui/ResetPassFragment$1;
.super Ljava/lang/Object;
.source "ResetPassFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/ResetPassFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/ResetPassFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/ResetPassFragment;)V
    .registers 2

    .line 45
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ResetPassFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "YHZHMM_012"

    const-string v1, "status"

    .line 49
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 50
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ResetPassFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/ResetPassFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_2d
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ResetPassFragment;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/ResetPassFragment;->dismiss()V

    .line 54
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ResetPassFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/ResetPassFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u4fee\u6539\u6210\u529f\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\u5bc6\u7801\u767b\u5f55"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
