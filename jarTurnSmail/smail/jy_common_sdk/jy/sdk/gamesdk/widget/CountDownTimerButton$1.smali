.class Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;
.super Landroid/os/Handler;
.source "CountDownTimerButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/widget/CountDownTimerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/widget/CountDownTimerButton;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/widget/CountDownTimerButton;)V
    .registers 2

    .line 110
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;->this$0:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 121
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;->this$0:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;->this$0:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    # getter for: Ljy/sdk/gamesdk/widget/CountDownTimerButton;->current_duration:J
    invoke-static {v1}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->access$000(Ljy/sdk/gamesdk/widget/CountDownTimerButton;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;->this$0:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    # getter for: Ljy/sdk/gamesdk/widget/CountDownTimerButton;->startTimeDown:Ljava/lang/String;
    invoke-static {v1}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->access$100(Ljy/sdk/gamesdk/widget/CountDownTimerButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Ljy/sdk/gamesdk/widget/CountDownTimerButton;->setTextI(Ljava/lang/String;)V
    invoke-static {p1, v0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->access$200(Ljy/sdk/gamesdk/widget/CountDownTimerButton;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;->this$0:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    iget-object v0, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;->this$0:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    # getter for: Ljy/sdk/gamesdk/widget/CountDownTimerButton;->current_duration:J
    invoke-static {v0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->access$000(Ljy/sdk/gamesdk/widget/CountDownTimerButton;)J

    move-result-wide v0

    sub-long v5, v0, v3

    # setter for: Ljy/sdk/gamesdk/widget/CountDownTimerButton;->current_duration:J
    invoke-static {p1, v5, v6}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->access$002(Ljy/sdk/gamesdk/widget/CountDownTimerButton;J)J

    .line 123
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;->this$0:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    # getter for: Ljy/sdk/gamesdk/widget/CountDownTimerButton;->current_duration:J
    invoke-static {p1}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->access$000(Ljy/sdk/gamesdk/widget/CountDownTimerButton;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long p1, v0, v5

    if-gez p1, :cond_47

    .line 124
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;->this$0:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    # invokes: Ljy/sdk/gamesdk/widget/CountDownTimerButton;->stopTimer()V
    invoke-static {p1}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->access$300(Ljy/sdk/gamesdk/widget/CountDownTimerButton;)V

    return-void

    .line 127
    :cond_47
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;->this$0:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    # getter for: Ljy/sdk/gamesdk/widget/CountDownTimerButton;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->access$400(Ljy/sdk/gamesdk/widget/CountDownTimerButton;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
