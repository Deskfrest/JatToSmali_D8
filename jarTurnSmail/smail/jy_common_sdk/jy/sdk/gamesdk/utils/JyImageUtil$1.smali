.class Ljy/sdk/gamesdk/utils/JyImageUtil$1;
.super Landroid/os/Handler;
.source "JyImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/utils/JyImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/utils/JyImageUtil;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/utils/JyImageUtil;Landroid/os/Looper;)V
    .registers 3

    .line 29
    iput-object p1, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$1;->this$0:Ljy/sdk/gamesdk/utils/JyImageUtil;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;

    .line 33
    :try_start_4
    iget-object v0, p1, Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1d

    .line 34
    iget-object v0, p1, Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;->imageView:Landroid/widget/ImageView;

    iget-object v1, p1, Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_1d

    :catch_10
    move-exception v0

    .line 37
    iget-object v1, p1, Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;->listener:Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;

    if-eqz v1, :cond_1a

    .line 38
    iget-object p1, p1, Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;->listener:Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;

    invoke-interface {p1}, Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;->onLoadFailed()V

    .line 40
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1d
    :goto_1d
    return-void
.end method
