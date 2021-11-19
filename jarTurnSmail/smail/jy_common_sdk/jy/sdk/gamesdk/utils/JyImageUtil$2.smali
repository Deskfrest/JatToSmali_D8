.class Ljy/sdk/gamesdk/utils/JyImageUtil$2;
.super Ljava/lang/Object;
.source "JyImageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/utils/JyImageUtil;->bindBitmap(Ljava/lang/String;Landroid/widget/ImageView;Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/utils/JyImageUtil;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$listener:Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;

.field final synthetic val$md5Name:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/utils/JyImageUtil;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;)V
    .registers 6

    .line 91
    iput-object p1, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->this$0:Ljy/sdk/gamesdk/utils/JyImageUtil;

    iput-object p2, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->val$md5Name:Ljava/lang/String;

    iput-object p4, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p5, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->val$listener:Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "jy_utils"

    const-string v1, "download from net"

    .line 94
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->this$0:Ljy/sdk/gamesdk/utils/JyImageUtil;

    iget-object v1, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/utils/JyImageUtil;->getByteArrayFromWeb(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_54

    .line 96
    array-length v1, v0

    if-lez v1, :cond_54

    .line 97
    iget-object v1, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->this$0:Ljy/sdk/gamesdk/utils/JyImageUtil;

    iget-object v2, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->val$md5Name:Ljava/lang/String;

    # invokes: Ljy/sdk/gamesdk/utils/JyImageUtil;->writeFileToStorage(Ljava/lang/String;[B)V
    invoke-static {v1, v2, v0}, Ljy/sdk/gamesdk/utils/JyImageUtil;->access$000(Ljy/sdk/gamesdk/utils/JyImageUtil;Ljava/lang/String;[B)V

    const/4 v1, 0x0

    .line 99
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    if-lez v1, :cond_43

    .line 101
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 102
    new-instance v2, Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;

    iget-object v3, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->val$imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->val$listener:Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;

    invoke-direct {v2, v3, v0, v4}, Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->this$0:Ljy/sdk/gamesdk/utils/JyImageUtil;

    # getter for: Ljy/sdk/gamesdk/utils/JyImageUtil;->mMainHandlee:Landroid/os/Handler;
    invoke-static {v0}, Ljy/sdk/gamesdk/utils/JyImageUtil;->access$100(Ljy/sdk/gamesdk/utils/JyImageUtil;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5d

    :cond_43
    const-string v0, "jy_utils"

    const-string v1, "download error"

    .line 105
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->val$listener:Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;

    if-eqz v0, :cond_5d

    .line 108
    iget-object v0, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->val$listener:Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;

    invoke-interface {v0}, Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;->onLoadFailed()V

    goto :goto_5d

    .line 113
    :cond_54
    iget-object v0, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->val$listener:Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;

    if-eqz v0, :cond_5d

    .line 114
    iget-object v0, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$2;->val$listener:Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;

    invoke-interface {v0}, Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;->onLoadFailed()V

    :cond_5d
    :goto_5d
    return-void
.end method
