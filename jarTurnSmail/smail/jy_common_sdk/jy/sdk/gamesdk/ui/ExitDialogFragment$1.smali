.class Ljy/sdk/gamesdk/ui/ExitDialogFragment$1;
.super Ljava/lang/Object;
.source "ExitDialogFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/ExitDialogFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/ExitDialogFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/ExitDialogFragment;)V
    .registers 2

    .line 52
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ExitDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "YHPRO_00"

    const-string v1, "status"

    .line 57
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const-string v0, "data"

    .line 60
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_18

    return-void

    :cond_18
    const-string v0, "icon_cdn_url"

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ExitDialogFragment;

    iget-object v1, v1, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Ljy/sdk/gamesdk/utils/JyImageUtil;->build(Landroid/content/Context;)Ljy/sdk/gamesdk/utils/JyImageUtil;

    move-result-object v1

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ExitDialogFragment;

    # getter for: Ljy/sdk/gamesdk/ui/ExitDialogFragment;->iv_ad:Landroid/widget/ImageView;
    invoke-static {v2}, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->access$000(Ljy/sdk/gamesdk/ui/ExitDialogFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljy/sdk/gamesdk/utils/JyImageUtil;->bindBitmap(Ljava/lang/String;Landroid/widget/ImageView;Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;)V

    .line 66
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ExitDialogFragment$1;->this$0:Ljy/sdk/gamesdk/ui/ExitDialogFragment;

    const-string v1, "jump_link"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    # setter for: Ljy/sdk/gamesdk/ui/ExitDialogFragment;->jumpLink:Ljava/lang/String;
    invoke-static {v0, p1}, Ljy/sdk/gamesdk/ui/ExitDialogFragment;->access$102(Ljy/sdk/gamesdk/ui/ExitDialogFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
