.class Ljy/sdk/gamesdk/update/DownloadManager$1;
.super Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/update/DownloadManager;->byOkdownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/update/DownloadManager;

.field private totalLength:J


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/update/DownloadManager;)V
    .registers 2

    .line 68
    iput-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed;-><init>()V

    return-void
.end method


# virtual methods
.method public blockEnd(Lcom/liulishuo/okdownload/DownloadTask;ILcom/liulishuo/okdownload/core/breakpoint/BlockInfo;Lcom/liulishuo/okdownload/SpeedCalculator;)V
    .registers 5

    .line 73
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->TAG:Ljava/lang/String;
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$000(Ljy/sdk/gamesdk/update/DownloadManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "blockEnd"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public connectEnd(Lcom/liulishuo/okdownload/DownloadTask;IILjava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 121
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->TAG:Ljava/lang/String;
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$000(Ljy/sdk/gamesdk/update/DownloadManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "connectEnd"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public connectStart(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 126
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->TAG:Ljava/lang/String;
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$000(Ljy/sdk/gamesdk/update/DownloadManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "connectStart"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public infoReady(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;ZLcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;)V
    .registers 5

    .line 78
    invoke-virtual {p2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide p1

    iput-wide p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->totalLength:J

    .line 79
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->TAG:Ljava/lang/String;
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$000(Ljy/sdk/gamesdk/update/DownloadManager;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "infoReady totalLength:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->totalLength:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public progress(Lcom/liulishuo/okdownload/DownloadTask;JLcom/liulishuo/okdownload/SpeedCalculator;)V
    .registers 5

    .line 87
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->downloadStateListener:Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$100(Ljy/sdk/gamesdk/update/DownloadManager;)Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;

    move-result-object p1

    if-eqz p1, :cond_1f

    long-to-float p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    .line 88
    iget-wide p2, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->totalLength:J

    long-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 90
    iget-object p2, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->downloadStateListener:Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;
    invoke-static {p2}, Ljy/sdk/gamesdk/update/DownloadManager;->access$100(Ljy/sdk/gamesdk/update/DownloadManager;)Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;

    move-result-object p2

    invoke-interface {p2, p1}, Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;->onDownloadProgress(I)V

    :cond_1f
    return-void
.end method

.method public progressBlock(Lcom/liulishuo/okdownload/DownloadTask;IJLcom/liulishuo/okdownload/SpeedCalculator;)V
    .registers 6

    return-void
.end method

.method public taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;Lcom/liulishuo/okdownload/SpeedCalculator;)V
    .registers 6

    .line 101
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->TAG:Ljava/lang/String;
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$000(Ljy/sdk/gamesdk/update/DownloadManager;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "taskEnd cause:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/core/cause/EndCause;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_23

    .line 103
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    :cond_23
    sget-object p1, Lcom/liulishuo/okdownload/core/cause/EndCause;->COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    if-ne p2, p1, :cond_4f

    .line 106
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->activity:Landroid/app/Activity;
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$200(Ljy/sdk/gamesdk/update/DownloadManager;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->info:Ljy/sdk/gamesdk/update/ApkInfo;
    invoke-static {p2}, Ljy/sdk/gamesdk/update/DownloadManager;->access$300(Ljy/sdk/gamesdk/update/DownloadManager;)Ljy/sdk/gamesdk/update/ApkInfo;

    move-result-object p2

    invoke-static {p1, p2}, Ljy/sdk/gamesdk/update/InstallUtil;->callInstall(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V

    .line 107
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->downloadStateListener:Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$100(Ljy/sdk/gamesdk/update/DownloadManager;)Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;

    move-result-object p1

    if-eqz p1, :cond_7f

    .line 108
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->downloadStateListener:Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$100(Ljy/sdk/gamesdk/update/DownloadManager;)Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;

    move-result-object p1

    const/4 p2, 0x1

    iget-object p4, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->info:Ljy/sdk/gamesdk/update/ApkInfo;
    invoke-static {p4}, Ljy/sdk/gamesdk/update/DownloadManager;->access$300(Ljy/sdk/gamesdk/update/DownloadManager;)Ljy/sdk/gamesdk/update/ApkInfo;

    move-result-object p4

    invoke-interface {p1, p2, p4, p3}, Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;->onComp(ZLjy/sdk/gamesdk/update/ApkInfo;Ljava/lang/Exception;)V

    goto :goto_7f

    .line 110
    :cond_4f
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->tryBrowser:Z
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$400(Ljy/sdk/gamesdk/update/DownloadManager;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 111
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->activity:Landroid/app/Activity;
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$200(Ljy/sdk/gamesdk/update/DownloadManager;)Landroid/app/Activity;

    move-result-object p1

    const-string p2, "\u4e0b\u8f7d\u51fa\u73b0\u9519\u8bef,\u8bf7\u5c1d\u8bd5\u7528\u6d4f\u89c8\u5668\u4e0b\u8f7d"

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # invokes: Ljy/sdk/gamesdk/update/DownloadManager;->downloadByBrowser()V
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$500(Ljy/sdk/gamesdk/update/DownloadManager;)V

    .line 114
    :cond_67
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->downloadStateListener:Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$100(Ljy/sdk/gamesdk/update/DownloadManager;)Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;

    move-result-object p1

    if-eqz p1, :cond_7f

    .line 115
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->downloadStateListener:Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$100(Ljy/sdk/gamesdk/update/DownloadManager;)Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;

    move-result-object p1

    const/4 p2, 0x0

    iget-object p4, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->info:Ljy/sdk/gamesdk/update/ApkInfo;
    invoke-static {p4}, Ljy/sdk/gamesdk/update/DownloadManager;->access$300(Ljy/sdk/gamesdk/update/DownloadManager;)Ljy/sdk/gamesdk/update/ApkInfo;

    move-result-object p4

    invoke-interface {p1, p2, p4, p3}, Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;->onComp(ZLjy/sdk/gamesdk/update/ApkInfo;Ljava/lang/Exception;)V

    :cond_7f
    :goto_7f
    return-void
.end method

.method public taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
    .registers 3

    .line 131
    iget-object p1, p0, Ljy/sdk/gamesdk/update/DownloadManager$1;->this$0:Ljy/sdk/gamesdk/update/DownloadManager;

    # getter for: Ljy/sdk/gamesdk/update/DownloadManager;->TAG:Ljava/lang/String;
    invoke-static {p1}, Ljy/sdk/gamesdk/update/DownloadManager;->access$000(Ljy/sdk/gamesdk/update/DownloadManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "taskStart"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
