.class Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;
.super Ljava/lang/Object;
.source "JyImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/utils/JyImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderResult"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public imageView:Landroid/widget/ImageView;

.field public listener:Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;)V
    .registers 4

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;->imageView:Landroid/widget/ImageView;

    .line 239
    iput-object p2, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    .line 240
    iput-object p3, p0, Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;->listener:Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;

    return-void
.end method
