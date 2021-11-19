.class Ljy/sdk/gamesdk/ui/NoticeImgFragment$1;
.super Ljava/lang/Object;
.source "NoticeImgFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/NoticeImgFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/NoticeImgFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/NoticeImgFragment;)V
    .registers 2

    .line 51
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment$1;->this$0:Ljy/sdk/gamesdk/ui/NoticeImgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .registers 2

    .line 55
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeImgFragment$1;->this$0:Ljy/sdk/gamesdk/ui/NoticeImgFragment;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->dismiss()V

    return-void
.end method
