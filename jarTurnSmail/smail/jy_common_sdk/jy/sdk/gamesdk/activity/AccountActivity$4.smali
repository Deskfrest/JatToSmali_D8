.class Ljy/sdk/gamesdk/activity/AccountActivity$4;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/activity/AccountActivity;->showFloatNewMsg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

.field final synthetic val$b:I


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/activity/AccountActivity;I)V
    .registers 3

    .line 535
    iput-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$4;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    iput p2, p0, Ljy/sdk/gamesdk/activity/AccountActivity$4;->val$b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 539
    iget v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity$4;->val$b:I

    if-lez v0, :cond_11

    .line 540
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->hasShowFloatView()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    .line 541
    iget v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$4;->val$b:I

    invoke-static {v0, v1}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->checkRedDot(II)V

    goto :goto_1b

    .line 543
    :cond_11
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->hasShowFloatView()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, -0x1

    .line 544
    invoke-static {v0}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->checkRedDot(I)V

    :cond_1b
    :goto_1b
    return-void
.end method
