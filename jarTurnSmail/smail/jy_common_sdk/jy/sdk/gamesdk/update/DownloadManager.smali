.class public Ljy/sdk/gamesdk/update/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private downloadStateListener:Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;

.field private info:Ljy/sdk/gamesdk/update/ApkInfo;

.field private tryBrowser:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;Z)V
    .registers 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "jy_sdk"

    .line 50
    iput-object v0, p0, Ljy/sdk/gamesdk/update/DownloadManager;->TAG:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager;->activity:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Ljy/sdk/gamesdk/update/DownloadManager;->info:Ljy/sdk/gamesdk/update/ApkInfo;

    .line 47
    iput-object p3, p0, Ljy/sdk/gamesdk/update/DownloadManager;->downloadStateListener:Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;

    .line 48
    iput-boolean p4, p0, Ljy/sdk/gamesdk/update/DownloadManager;->tryBrowser:Z

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/update/DownloadManager;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Ljy/sdk/gamesdk/update/DownloadManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Ljy/sdk/gamesdk/update/DownloadManager;)Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;
    .registers 1

    .line 25
    iget-object p0, p0, Ljy/sdk/gamesdk/update/DownloadManager;->downloadStateListener:Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;

    return-object p0
.end method

.method static synthetic access$200(Ljy/sdk/gamesdk/update/DownloadManager;)Landroid/app/Activity;
    .registers 1

    .line 25
    iget-object p0, p0, Ljy/sdk/gamesdk/update/DownloadManager;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Ljy/sdk/gamesdk/update/DownloadManager;)Ljy/sdk/gamesdk/update/ApkInfo;
    .registers 1

    .line 25
    iget-object p0, p0, Ljy/sdk/gamesdk/update/DownloadManager;->info:Ljy/sdk/gamesdk/update/ApkInfo;

    return-object p0
.end method

.method static synthetic access$400(Ljy/sdk/gamesdk/update/DownloadManager;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Ljy/sdk/gamesdk/update/DownloadManager;->tryBrowser:Z

    return p0
.end method

.method static synthetic access$500(Ljy/sdk/gamesdk/update/DownloadManager;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljy/sdk/gamesdk/update/DownloadManager;->downloadByBrowser()V

    return-void
.end method

.method private byOkdownload()V
    .registers 4

    .line 60
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljy/sdk/gamesdk/update/DownloadManager;->info:Ljy/sdk/gamesdk/update/ApkInfo;

    iget-object v1, v1, Ljy/sdk/gamesdk/update/ApkInfo;->appPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/update/DownloadManager;->clearDir(Ljava/io/File;)V

    .line 63
    new-instance v1, Lcom/liulishuo/okdownload/DownloadTask$Builder;

    iget-object v2, p0, Ljy/sdk/gamesdk/update/DownloadManager;->info:Ljy/sdk/gamesdk/update/ApkInfo;

    iget-object v2, v2, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;-><init>(Ljava/lang/String;Ljava/io/File;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljy/sdk/gamesdk/update/DownloadManager;->info:Ljy/sdk/gamesdk/update/ApkInfo;

    iget-object v2, v2, Ljy/sdk/gamesdk/update/ApkInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setFilename(Ljava/lang/String;)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 65
    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setMinIntervalMillisCallbackProcess(I)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setPassIfAlreadyCompleted(Z)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->build()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object v0

    .line 68
    new-instance v1, Ljy/sdk/gamesdk/update/DownloadManager$1;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/update/DownloadManager$1;-><init>(Ljy/sdk/gamesdk/update/DownloadManager;)V

    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/DownloadTask;->enqueue(Lcom/liulishuo/okdownload/DownloadListener;)V

    return-void
.end method

.method private clearDir(Ljava/io/File;)V
    .registers 5

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 140
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    .line 141
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method

.method private downloadByBrowser()V
    .registers 3

    .line 149
    :try_start_0
    iget-object v0, p0, Ljy/sdk/gamesdk/update/DownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "\u901a\u8fc7\u6d4f\u89c8\u5668\u521b\u5efa\u4e0b\u8f7d\u4efb\u52a1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Ljy/sdk/gamesdk/update/DownloadManager;->info:Ljy/sdk/gamesdk/update/ApkInfo;

    iget-object v1, v1, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Ljy/sdk/gamesdk/update/DownloadManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2b
    return-void
.end method


# virtual methods
.method public declared-synchronized start()V
    .registers 2

    monitor-enter p0

    .line 56
    :try_start_1
    invoke-direct {p0}, Ljy/sdk/gamesdk/update/DownloadManager;->byOkdownload()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 57
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    .line 55
    monitor-exit p0

    throw v0
.end method
