.class Ljy/sdk/gamesdk/GameService$4$1;
.super Ljava/lang/Object;
.source "GameService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/GameService$4;->onFinish(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/GameService$4;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/GameService$4;)V
    .registers 2

    .line 527
    iput-object p1, p0, Ljy/sdk/gamesdk/GameService$4$1;->this$0:Ljy/sdk/gamesdk/GameService$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 531
    iget-object v0, p0, Ljy/sdk/gamesdk/GameService$4$1;->this$0:Ljy/sdk/gamesdk/GameService$4;

    iget-object v0, v0, Ljy/sdk/gamesdk/GameService$4;->val$cpActivity:Landroid/app/Activity;

    .line 532
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ljy/sdk/gamesdk/GameService$4$1;->this$0:Ljy/sdk/gamesdk/GameService$4;

    iget-object v2, v2, Ljy/sdk/gamesdk/GameService$4;->val$cpActivity:Landroid/app/Activity;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljy/sdk/gamesdk/api/ApiClient;->sdkGetBuoyCenterUrl(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-static {v0, v1}, Ljy/sdk/gamesdk/activity/AccountActivity;->showAccountActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
