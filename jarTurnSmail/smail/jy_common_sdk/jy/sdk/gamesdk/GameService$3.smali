.class final Ljy/sdk/gamesdk/GameService$3;
.super Ljava/lang/Object;
.source "GameService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/GameService;->dologinedTask(Landroid/app/Activity;Ljava/lang/String;)V
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

    .line 505
    iput-object p1, p0, Ljy/sdk/gamesdk/GameService$3;->val$cpActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 509
    iget-object v0, p0, Ljy/sdk/gamesdk/GameService$3;->val$cpActivity:Landroid/app/Activity;

    sget-object v1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->initNotice:Ljy/sdk/gamesdk/entity/Notice;

    invoke-static {v0, v1}, Ljy/sdk/gamesdk/NoticeManager;->show(Landroid/app/Activity;Ljy/sdk/gamesdk/entity/Notice;)V

    .line 510
    iget-object v0, p0, Ljy/sdk/gamesdk/GameService$3;->val$cpActivity:Landroid/app/Activity;

    invoke-static {v0}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->createFloatWindow(Landroid/content/Context;)V

    return-void
.end method
