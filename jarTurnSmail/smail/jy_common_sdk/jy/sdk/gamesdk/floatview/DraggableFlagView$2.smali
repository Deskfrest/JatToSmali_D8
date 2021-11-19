.class Ljy/sdk/gamesdk/floatview/DraggableFlagView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DraggableFlagView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/floatview/DraggableFlagView;->startRollBackAnimation(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/floatview/DraggableFlagView;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/floatview/DraggableFlagView;)V
    .registers 2

    .line 360
    iput-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView$2;->this$0:Ljy/sdk/gamesdk/floatview/DraggableFlagView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 363
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 364
    iget-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView$2;->this$0:Ljy/sdk/gamesdk/floatview/DraggableFlagView;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->clearAnimation()V

    return-void
.end method
