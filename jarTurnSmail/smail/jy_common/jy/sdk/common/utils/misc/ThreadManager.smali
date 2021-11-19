.class public Ljy/sdk/common/utils/misc/ThreadManager;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# static fields
.field private static volatile instance:Ljy/sdk/common/utils/misc/ThreadManager;


# instance fields
.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/utils/misc/ThreadManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 19
    invoke-direct {p0}, Ljy/sdk/common/utils/misc/ThreadManager;->start()V

    return-void
.end method

.method public static getInstance()Ljy/sdk/common/utils/misc/ThreadManager;
    .registers 2

    .line 27
    sget-object v0, Ljy/sdk/common/utils/misc/ThreadManager;->instance:Ljy/sdk/common/utils/misc/ThreadManager;

    if-nez v0, :cond_17

    .line 28
    const-class v0, Ljy/sdk/common/utils/misc/ThreadManager;

    monitor-enter v0

    .line 29
    :try_start_7
    sget-object v1, Ljy/sdk/common/utils/misc/ThreadManager;->instance:Ljy/sdk/common/utils/misc/ThreadManager;

    if-nez v1, :cond_12

    .line 30
    new-instance v1, Ljy/sdk/common/utils/misc/ThreadManager;

    invoke-direct {v1}, Ljy/sdk/common/utils/misc/ThreadManager;-><init>()V

    sput-object v1, Ljy/sdk/common/utils/misc/ThreadManager;->instance:Ljy/sdk/common/utils/misc/ThreadManager;

    .line 32
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 34
    :cond_17
    :goto_17
    sget-object v0, Ljy/sdk/common/utils/misc/ThreadManager;->instance:Ljy/sdk/common/utils/misc/ThreadManager;

    return-object v0
.end method

.method private start()V
    .registers 1

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 41
    :cond_3
    iget-object v0, p0, Ljy/sdk/common/utils/misc/ThreadManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public submit(Ljava/lang/Runnable;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 47
    :cond_3
    iget-object v0, p0, Ljy/sdk/common/utils/misc/ThreadManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
