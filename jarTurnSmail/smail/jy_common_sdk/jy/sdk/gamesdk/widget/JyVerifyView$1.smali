.class Ljy/sdk/gamesdk/widget/JyVerifyView$1;
.super Ljava/lang/Object;
.source "JyVerifyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/widget/JyVerifyView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/widget/JyVerifyView;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/widget/JyVerifyView;)V
    .registers 2

    .line 69
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView$1;->this$0:Ljy/sdk/gamesdk/widget/JyVerifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 73
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView$1;->this$0:Ljy/sdk/gamesdk/widget/JyVerifyView;

    iget-object v0, p0, Ljy/sdk/gamesdk/widget/JyVerifyView$1;->this$0:Ljy/sdk/gamesdk/widget/JyVerifyView;

    # invokes: Ljy/sdk/gamesdk/widget/JyVerifyView;->randomText()Ljava/lang/String;
    invoke-static {v0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->access$100(Ljy/sdk/gamesdk/widget/JyVerifyView;)Ljava/lang/String;

    move-result-object v0

    # setter for: Ljy/sdk/gamesdk/widget/JyVerifyView;->text:Ljava/lang/String;
    invoke-static {p1, v0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->access$002(Ljy/sdk/gamesdk/widget/JyVerifyView;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView$1;->this$0:Ljy/sdk/gamesdk/widget/JyVerifyView;

    iget-object v0, p0, Ljy/sdk/gamesdk/widget/JyVerifyView$1;->this$0:Ljy/sdk/gamesdk/widget/JyVerifyView;

    # getter for: Ljy/sdk/gamesdk/widget/JyVerifyView;->text:Ljava/lang/String;
    invoke-static {v0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->access$000(Ljy/sdk/gamesdk/widget/JyVerifyView;)Ljava/lang/String;

    move-result-object v0

    # invokes: Ljy/sdk/gamesdk/widget/JyVerifyView;->setColorText(Ljava/lang/String;)V
    invoke-static {p1, v0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->access$200(Ljy/sdk/gamesdk/widget/JyVerifyView;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView$1;->this$0:Ljy/sdk/gamesdk/widget/JyVerifyView;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/widget/JyVerifyView;->postInvalidate()V

    return-void
.end method
