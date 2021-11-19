.class Ljy/sdk/gamesdk/GameService$2$1$1;
.super Ljava/lang/Object;
.source "GameService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/GameService$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/gamesdk/GameService$2$1;

.field final synthetic val$notice:Ljy/sdk/gamesdk/entity/Notice;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/GameService$2$1;Ljy/sdk/gamesdk/entity/Notice;)V
    .registers 3

    .line 444
    iput-object p1, p0, Ljy/sdk/gamesdk/GameService$2$1$1;->this$1:Ljy/sdk/gamesdk/GameService$2$1;

    iput-object p2, p0, Ljy/sdk/gamesdk/GameService$2$1$1;->val$notice:Ljy/sdk/gamesdk/entity/Notice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 448
    sget-object v0, Ljy/sdk/gamesdk/activity/LoginActivity;->cpActivity:Landroid/app/Activity;

    iget-object v1, p0, Ljy/sdk/gamesdk/GameService$2$1$1;->val$notice:Ljy/sdk/gamesdk/entity/Notice;

    invoke-static {v0, v1}, Ljy/sdk/gamesdk/NoticeManager;->show(Landroid/app/Activity;Ljy/sdk/gamesdk/entity/Notice;)V

    return-void
.end method
