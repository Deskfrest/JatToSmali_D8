.class Ljy/sdk/gamesdk/GameService$1$1;
.super Ljava/lang/Object;
.source "GameService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/GameService$1;->checkUpdate(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/GameService$1;

.field final synthetic val$updateManager:Ljy/sdk/gamesdk/update/UpdateManager;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/GameService$1;Ljy/sdk/gamesdk/update/UpdateManager;)V
    .registers 3

    .line 178
    iput-object p1, p0, Ljy/sdk/gamesdk/GameService$1$1;->this$0:Ljy/sdk/gamesdk/GameService$1;

    iput-object p2, p0, Ljy/sdk/gamesdk/GameService$1$1;->val$updateManager:Ljy/sdk/gamesdk/update/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 183
    iget-object v0, p0, Ljy/sdk/gamesdk/GameService$1$1;->val$updateManager:Ljy/sdk/gamesdk/update/UpdateManager;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/update/UpdateManager;->showUpdateDialogFragment()V

    return-void
.end method
