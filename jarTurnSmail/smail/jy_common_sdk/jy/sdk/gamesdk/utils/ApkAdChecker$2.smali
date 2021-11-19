.class Ljy/sdk/gamesdk/utils/ApkAdChecker$2;
.super Ljava/lang/Object;
.source "ApkAdChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/utils/ApkAdChecker;->startTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/utils/ApkAdChecker;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/utils/ApkAdChecker;)V
    .registers 2

    .line 119
    iput-object p1, p0, Ljy/sdk/gamesdk/utils/ApkAdChecker$2;->this$0:Ljy/sdk/gamesdk/utils/ApkAdChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 125
    :goto_0
    :try_start_0
    # getter for: Ljy/sdk/gamesdk/utils/ApkAdChecker;->uploadQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {}, Ljy/sdk/gamesdk/utils/ApkAdChecker;->access$200()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljy/sdk/gamesdk/entity/DataInfo;

    .line 126
    invoke-static {v0}, Ljy/sdk/gamesdk/utils/ApkAdChecker;->checkLocalInstalledApp(Ljy/sdk/gamesdk/entity/DataInfo;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_0

    :catch_e
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
