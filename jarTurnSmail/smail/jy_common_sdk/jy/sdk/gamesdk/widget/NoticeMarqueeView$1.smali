.class final Ljy/sdk/gamesdk/widget/NoticeMarqueeView$1;
.super Ljava/lang/Object;
.source "NoticeMarqueeView.java"

# interfaces
.implements Ljy/sdk/gamesdk/widget/NoticeMarqueeView$OncompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->show(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 259
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    .line 262
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->remove(Landroid/app/Activity;)V

    return-void
.end method
