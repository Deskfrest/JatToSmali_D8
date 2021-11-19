.class Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;
.super Ljava/lang/Object;
.source "ForgetPasswordFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->startCheck(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;

.field final synthetic val$phone:Ljava/lang/String;

.field final synthetic val$verify:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 148
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;->this$0:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;->val$phone:Ljava/lang/String;

    iput-object p3, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;->val$verify:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "YHYZXX_017"

    const-string v1, "status"

    .line 152
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 153
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;->this$0:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->mActivity:Landroid/app/Activity;

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

    .line 157
    :cond_2d
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;->this$0:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3$1;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3$1;-><init>(Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;)V

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
