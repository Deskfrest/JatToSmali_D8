.class final Ljy/sdk/gamesdk/NoticeManager$1;
.super Ljava/lang/Object;
.source "NoticeManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/NoticeManager;->show(Landroid/app/Activity;Ljy/sdk/gamesdk/entity/Notice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$notice:Ljy/sdk/gamesdk/entity/Notice;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/entity/Notice;Landroid/app/Activity;)V
    .registers 3

    .line 43
    iput-object p1, p0, Ljy/sdk/gamesdk/NoticeManager$1;->val$notice:Ljy/sdk/gamesdk/entity/Notice;

    iput-object p2, p0, Ljy/sdk/gamesdk/NoticeManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 47
    iget-object p1, p0, Ljy/sdk/gamesdk/NoticeManager$1;->val$notice:Ljy/sdk/gamesdk/entity/Notice;

    iget p1, p1, Ljy/sdk/gamesdk/entity/Notice;->jumpAction:I

    if-eqz p1, :cond_26

    .line 48
    iget-object p1, p0, Ljy/sdk/gamesdk/NoticeManager$1;->val$activity:Landroid/app/Activity;

    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/NoticeManager$1;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x6

    iget-object v3, p0, Ljy/sdk/gamesdk/NoticeManager$1;->val$notice:Ljy/sdk/gamesdk/entity/Notice;

    iget-object v3, v3, Ljy/sdk/gamesdk/entity/Notice;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ljy/sdk/gamesdk/api/ApiClient;->sdkGetBuoyCenterUrl(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/gamesdk/activity/AccountActivity;->showAccountActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Ljy/sdk/gamesdk/NoticeManager$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->remove(Landroid/app/Activity;)V

    .line 50
    iget-object p1, p0, Ljy/sdk/gamesdk/NoticeManager$1;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Ljy/sdk/gamesdk/NoticeManager$1;->val$notice:Ljy/sdk/gamesdk/entity/Notice;

    invoke-static {p1, v0}, Ljy/sdk/gamesdk/NoticeManager;->notifyServer(Landroid/content/Context;Ljy/sdk/gamesdk/entity/Notice;)V

    :cond_26
    return-void
.end method
