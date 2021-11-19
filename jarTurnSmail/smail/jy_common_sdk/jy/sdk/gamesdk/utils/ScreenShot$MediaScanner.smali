.class Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;
.super Ljava/lang/Object;
.source "ScreenShot.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/utils/ScreenShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaScanner"
.end annotation


# instance fields
.field private filePaths:[Ljava/lang/String;

.field private mediaScanConn:Landroid/media/MediaScannerConnection;

.field private mimeTypes:[Ljava/lang/String;

.field private scanTimes:I

.field final synthetic this$0:Ljy/sdk/gamesdk/utils/ScreenShot;


# direct methods
.method public constructor <init>(Ljy/sdk/gamesdk/utils/ScreenShot;Landroid/content/Context;)V
    .registers 3

    .line 131
    iput-object p1, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->this$0:Ljy/sdk/gamesdk/utils/ScreenShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    const/4 p1, 0x0

    .line 167
    iput p1, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->scanTimes:I

    .line 133
    new-instance p1, Landroid/media/MediaScannerConnection;

    invoke-direct {p1, p2, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p1, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 5

    const/4 v0, 0x0

    .line 158
    :goto_1
    iget-object v1, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->filePaths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_37

    const-string v1, "app_log"

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->filePaths:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  ____  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->mimeTypes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/FLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->filePaths:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->mimeTypes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_37
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    .line 177
    iget p1, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->scanTimes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->scanTimes:I

    .line 178
    iget p1, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->scanTimes:I

    iget-object p2, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->filePaths:[Ljava/lang/String;

    array-length p2, p2

    if-ne p1, p2, :cond_15

    .line 179
    iget-object p1, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    const/4 p1, 0x0

    .line 180
    iput p1, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->scanTimes:I

    :cond_15
    return-void
.end method

.method public scanFiles([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 148
    iput-object p1, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->filePaths:[Ljava/lang/String;

    .line 149
    iput-object p2, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->mimeTypes:[Ljava/lang/String;

    .line 150
    iget-object p1, p0, Ljy/sdk/gamesdk/utils/ScreenShot$MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method
