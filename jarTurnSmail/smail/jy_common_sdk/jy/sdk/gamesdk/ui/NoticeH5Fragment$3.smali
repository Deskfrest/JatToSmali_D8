.class Ljy/sdk/gamesdk/ui/NoticeH5Fragment$3;
.super Ljava/lang/Object;
.source "NoticeH5Fragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->resetLayout(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/NoticeH5Fragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/NoticeH5Fragment;)V
    .registers 2

    .line 106
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment$3;->this$0:Ljy/sdk/gamesdk/ui/NoticeH5Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 110
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_8

    goto :goto_22

    .line 113
    :cond_8
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment$3;->this$0:Ljy/sdk/gamesdk/ui/NoticeH5Fragment;

    # getter for: Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->clicked:Z
    invoke-static {p1}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->access$000(Ljy/sdk/gamesdk/ui/NoticeH5Fragment;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 114
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment$3;->this$0:Ljy/sdk/gamesdk/ui/NoticeH5Fragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment$3;->this$0:Ljy/sdk/gamesdk/ui/NoticeH5Fragment;

    # getter for: Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->notice:Ljy/sdk/gamesdk/entity/Notice;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->access$100(Ljy/sdk/gamesdk/ui/NoticeH5Fragment;)Ljy/sdk/gamesdk/entity/Notice;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/gamesdk/NoticeManager;->notifyServer(Landroid/content/Context;Ljy/sdk/gamesdk/entity/Notice;)V

    .line 115
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment$3;->this$0:Ljy/sdk/gamesdk/ui/NoticeH5Fragment;

    # setter for: Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->clicked:Z
    invoke-static {p1, p2}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->access$002(Ljy/sdk/gamesdk/ui/NoticeH5Fragment;Z)Z

    :cond_22
    :goto_22
    const/4 p1, 0x0

    return p1
.end method
