.class public Ljy/sdk/gamesdk/utils/ApkAdChecker;
.super Ljava/lang/Object;
.source "ApkAdChecker.java"


# static fields
.field private static TAG:Ljava/lang/String; = "jy_sdk"

.field private static context:Landroid/content/Context; = null

.field private static hasInited:Z = false

.field private static volatile instance:Ljy/sdk/gamesdk/utils/ApkAdChecker;

.field private static queryThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

.field private static uploadQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljy/sdk/gamesdk/entity/DataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 34
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Ljy/sdk/gamesdk/utils/ApkAdChecker;->queryThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Ljy/sdk/gamesdk/utils/ApkAdChecker;->uploadQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Ljy/sdk/gamesdk/utils/ApkAdChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .line 24
    sget-object v0, Ljy/sdk/gamesdk/utils/ApkAdChecker;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/BlockingQueue;
    .registers 1

    .line 24
    sget-object v0, Ljy/sdk/gamesdk/utils/ApkAdChecker;->uploadQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method protected static checkLocalInstalledApp(Ljy/sdk/gamesdk/entity/DataInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    sget-object v0, Ljy/sdk/gamesdk/utils/ApkAdChecker;->context:Landroid/content/Context;

    invoke-virtual {p0}, Ljy/sdk/gamesdk/entity/DataInfo;->getExtend1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/gamesdk/update/UpdateManager;->checkLocalInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 139
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    sget-object v1, Ljy/sdk/gamesdk/utils/ApkAdChecker;->context:Landroid/content/Context;

    new-instance v2, Ljy/sdk/gamesdk/utils/ApkAdChecker$3;

    invoke-direct {v2, p0}, Ljy/sdk/gamesdk/utils/ApkAdChecker$3;-><init>(Ljy/sdk/gamesdk/entity/DataInfo;)V

    invoke-virtual {v0, v1, p0, v2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    .line 151
    sget-object v0, Ljy/sdk/gamesdk/utils/ApkAdChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljy/sdk/gamesdk/entity/DataInfo;->getExtend2()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has been installed..."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 153
    :cond_35
    sget-object v0, Ljy/sdk/gamesdk/utils/ApkAdChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljy/sdk/gamesdk/entity/DataInfo;->getExtend2()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has not installed..."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljy/sdk/common/utils/misc/FLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    return-void
.end method

.method private static collectionLocal()V
    .registers 7

    .line 66
    sget-object v0, Ljy/sdk/gamesdk/utils/ApkAdChecker;->queryThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ljy/sdk/gamesdk/utils/ApkAdChecker$1;

    invoke-direct {v1}, Ljy/sdk/gamesdk/utils/ApkAdChecker$1;-><init>()V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    const-wide/16 v4, 0x258

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static getInstance()Ljy/sdk/gamesdk/utils/ApkAdChecker;
    .registers 2

    .line 42
    sget-object v0, Ljy/sdk/gamesdk/utils/ApkAdChecker;->instance:Ljy/sdk/gamesdk/utils/ApkAdChecker;

    if-nez v0, :cond_17

    .line 43
    const-class v0, Ljy/sdk/gamesdk/utils/ApkAdChecker;

    monitor-enter v0

    .line 44
    :try_start_7
    sget-object v1, Ljy/sdk/gamesdk/utils/ApkAdChecker;->instance:Ljy/sdk/gamesdk/utils/ApkAdChecker;

    if-nez v1, :cond_12

    .line 45
    new-instance v1, Ljy/sdk/gamesdk/utils/ApkAdChecker;

    invoke-direct {v1}, Ljy/sdk/gamesdk/utils/ApkAdChecker;-><init>()V

    sput-object v1, Ljy/sdk/gamesdk/utils/ApkAdChecker;->instance:Ljy/sdk/gamesdk/utils/ApkAdChecker;

    .line 47
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 49
    :cond_17
    :goto_17
    sget-object v0, Ljy/sdk/gamesdk/utils/ApkAdChecker;->instance:Ljy/sdk/gamesdk/utils/ApkAdChecker;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ljy/sdk/gamesdk/utils/ApkAdChecker;->context:Landroid/content/Context;

    .line 58
    invoke-static {p0}, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->init(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 59
    sput-boolean p0, Ljy/sdk/gamesdk/utils/ApkAdChecker;->hasInited:Z

    return-void
.end method


# virtual methods
.method public startTask()V
    .registers 3

    .line 114
    sget-boolean v0, Ljy/sdk/gamesdk/utils/ApkAdChecker;->hasInited:Z

    if-nez v0, :cond_5

    return-void

    .line 117
    :cond_5
    invoke-static {}, Ljy/sdk/gamesdk/utils/ApkAdChecker;->collectionLocal()V

    .line 119
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljy/sdk/gamesdk/utils/ApkAdChecker$2;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/utils/ApkAdChecker$2;-><init>(Ljy/sdk/gamesdk/utils/ApkAdChecker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
