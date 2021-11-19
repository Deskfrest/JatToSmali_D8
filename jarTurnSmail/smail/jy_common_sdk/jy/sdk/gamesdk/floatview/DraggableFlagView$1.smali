.class Ljy/sdk/gamesdk/floatview/DraggableFlagView$1;
.super Ljava/lang/Object;
.source "DraggableFlagView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 351
    iput-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView$1;->this$0:Ljy/sdk/gamesdk/floatview/DraggableFlagView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 354
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 355
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView$1;->this$0:Ljy/sdk/gamesdk/floatview/DraggableFlagView;

    float-to-int p1, p1

    # setter for: Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I
    invoke-static {v0, p1}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->access$002(Ljy/sdk/gamesdk/floatview/DraggableFlagView;I)I

    .line 356
    iget-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView$1;->this$0:Ljy/sdk/gamesdk/floatview/DraggableFlagView;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->postInvalidate()V

    return-void
.end method
