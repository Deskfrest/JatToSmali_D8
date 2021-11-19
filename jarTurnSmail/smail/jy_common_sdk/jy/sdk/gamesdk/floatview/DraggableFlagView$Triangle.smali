.class Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;
.super Ljava/lang/Object;
.source "DraggableFlagView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/floatview/DraggableFlagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Triangle"
.end annotation


# instance fields
.field deltaX:D

.field deltaY:D

.field hypotenuse:D

.field final synthetic this$0:Ljy/sdk/gamesdk/floatview/DraggableFlagView;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/floatview/DraggableFlagView;)V
    .registers 2

    .line 375
    iput-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->this$0:Ljy/sdk/gamesdk/floatview/DraggableFlagView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Triangle{deltaX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->deltaX:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", deltaY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->deltaY:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", hypotenuse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->hypotenuse:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
