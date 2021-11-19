.class final Ljy/sdk/gamesdk/GameService$5;
.super Ljava/lang/Object;
.source "GameService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/GameService;->onCpLogout(Landroid/app/Activity;)V
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

    .line 556
    iput-object p1, p0, Ljy/sdk/gamesdk/GameService$5;->val$cpActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 559
    iget-object v0, p0, Ljy/sdk/gamesdk/GameService$5;->val$cpActivity:Landroid/app/Activity;

    invoke-static {v0}, Ljy/sdk/gamesdk/GameService;->onCpDestroy(Landroid/app/Activity;)V

    return-void
.end method
