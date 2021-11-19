.class final Ljy/sdk/gamesdk/GameService$4;
.super Ljava/lang/Object;
.source "GameService.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/GameService;->getRealNameStatu(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cpActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 520
    iput-object p1, p0, Ljy/sdk/gamesdk/GameService$4;->val$cpActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "RNTRNAME_03"

    const-string v1, "status"

    .line 524
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 527
    iget-object p1, p0, Ljy/sdk/gamesdk/GameService$4;->val$cpActivity:Landroid/app/Activity;

    new-instance v0, Ljy/sdk/gamesdk/GameService$4$1;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/GameService$4$1;-><init>(Ljy/sdk/gamesdk/GameService$4;)V

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_18
    return-void
.end method
