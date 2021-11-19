.class public Ljy/sdk/gamesdk/utils/JyImageUtil;
.super Ljava/lang/Object;
.source "JyImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;,
        Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;
    }
.end annotation


# static fields
.field private static ImageCacheDir:Ljava/lang/String; = "jy_img"


# instance fields
.field public listener:Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;

.field private mContext:Landroid/content/Context;

.field private mMainHandlee:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljy/sdk/gamesdk/utils/JyImageUtil$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljy/sdk/gamesdk/utils/JyImageUtil$1;-><init>(Ljy/sdk/gamesdk/utils/JyImageUtil;Landroid/os/Looper;)V

    iput-object v0, p0, Ljy/sdk/gamesdk/utils/JyImageUtil;->mMainHandlee:Landroid/os/Handler;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/gamesdk/utils/JyImageUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/utils/JyImageUtil;Ljava/lang/String;[B)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Ljy/sdk/gamesdk/utils/JyImageUtil;->writeFileToStorage(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$100(Ljy/sdk/gamesdk/utils/JyImageUtil;)Landroid/os/Handler;
    .registers 1

    .line 23
    iget-object p0, p0, Ljy/sdk/gamesdk/utils/JyImageUtil;->mMainHandlee:Landroid/os/Handler;

    return-object p0
.end method

.method public static build(Landroid/content/Context;)Ljy/sdk/gamesdk/utils/JyImageUtil;
    .registers 2

    .line 50
    invoke-static {p0}, Ljy/sdk/gamesdk/utils/JyImageUtil;->checkLocalFiles(Landroid/content/Context;)V

    .line 51
    new-instance v0, Ljy/sdk/gamesdk/utils/JyImageUtil;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/utils/JyImageUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static checkLocalFiles(Landroid/content/Context;)V
    .registers 4

    .line 56
    :try_start_0
    sget-object v0, Ljy/sdk/gamesdk/utils/JyImageUtil;->ImageCacheDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 58
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 59
    array-length v0, p0

    const/16 v1, 0xa

    if-le v0, v1, :cond_27

    .line 60
    array-length v0, p0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_27

    aget-object v2, p0, v1

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :catch_23
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_27
    return-void
.end method

.method private loadBitmapFromLocal(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljy/sdk/gamesdk/utils/JyImageUtil;->mContext:Landroid/content/Context;

    sget-object v2, Ljy/sdk/gamesdk/utils/JyImageUtil;->ImageCacheDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 188
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_44

    .line 193
    :cond_33
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/utils/JyImageUtil;->readBytesFromStorage(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_43

    .line 194
    array-length v0, p1

    if-lez v0, :cond_43

    const/4 v0, 0x0

    .line 195
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_43
    return-object v2

    :cond_44
    :goto_44
    const-string p1, "jy_utils"

    const-string v0, "file not exits"

    .line 190
    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private writeFileToStorage(Ljava/lang/String;[B)V
    .registers 7

    const/4 v0, 0x0

    .line 169
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ljy/sdk/gamesdk/utils/JyImageUtil;->mContext:Landroid/content/Context;

    sget-object v3, Ljy/sdk/gamesdk/utils/JyImageUtil;->ImageCacheDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_26
    .catchall {:try_start_1 .. :try_end_13} :catchall_24

    const/4 v0, 0x0

    .line 171
    :try_start_14
    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_21
    .catchall {:try_start_14 .. :try_end_18} :catchall_1e

    if-eqz p1, :cond_34

    .line 177
    :try_start_1a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_30

    goto :goto_34

    :catchall_1e
    move-exception p2

    move-object v0, p1

    goto :goto_35

    :catch_21
    move-exception p2

    move-object v0, p1

    goto :goto_27

    :catchall_24
    move-exception p2

    goto :goto_35

    :catch_26
    move-exception p2

    .line 173
    :goto_27
    :try_start_27
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    if-eqz v0, :cond_34

    .line 177
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_34
    :goto_34
    return-void

    :goto_35
    if-eqz v0, :cond_3f

    .line 177
    :try_start_37
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    :cond_3f
    :goto_3f
    throw p2
.end method


# virtual methods
.method public bindBitmap(Ljava/lang/String;Landroid/widget/ImageView;Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;)V
    .registers 12

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 80
    :cond_7
    invoke-static {p1}, Ljy/sdk/common/utils/encode/MD5Provider;->md5string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-direct {p0, v4}, Ljy/sdk/gamesdk/utils/JyImageUtil;->loadBitmapFromLocal(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    if-lez v1, :cond_30

    const-string p1, "jy_utils"

    const-string v1, "use local pic"

    .line 83
    invoke-static {p1, v1}, Ljy/sdk/common/utils/misc/FLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 85
    new-instance v1, Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;

    invoke-direct {v1, p2, v0, p3}, Ljy/sdk/gamesdk/utils/JyImageUtil$LoaderResult;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;)V

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    iget-object p2, p0, Ljy/sdk/gamesdk/utils/JyImageUtil;->mMainHandlee:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 91
    :cond_30
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Ljy/sdk/gamesdk/utils/JyImageUtil$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljy/sdk/gamesdk/utils/JyImageUtil$2;-><init>(Ljy/sdk/gamesdk/utils/JyImageUtil;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getByteArrayFromWeb(Ljava/lang/String;)[B
    .registers 8

    const/4 v0, 0x0

    .line 130
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    .line 132
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 133
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v1, 0x1388

    .line 134
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 135
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 136
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_43

    .line 137
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_61
    .catchall {:try_start_1 .. :try_end_2a} :catchall_5e

    .line 138
    :try_start_2a
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2e} :catch_40
    .catchall {:try_start_2a .. :try_end_2e} :catchall_3e

    const/16 v2, 0x400

    .line 139
    :try_start_30
    new-array v2, v2, [B

    .line 141
    :goto_32
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_45

    const/4 v4, 0x0

    .line 142
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_32

    :catchall_3e
    move-exception p1

    goto :goto_7d

    :catch_40
    move-exception v2

    move-object p1, v0

    goto :goto_64

    :cond_43
    move-object p1, v0

    move-object v1, p1

    .line 145
    :cond_45
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_49} :catch_5c
    .catchall {:try_start_30 .. :try_end_49} :catchall_79

    if-eqz p1, :cond_51

    .line 151
    :try_start_4b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_51

    :catch_4f
    move-exception p1

    goto :goto_57

    :cond_51
    :goto_51
    if-eqz v1, :cond_5a

    .line 154
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_56} :catch_4f

    goto :goto_5a

    .line 157
    :goto_57
    invoke-static {p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/Throwable;)V

    :cond_5a
    :goto_5a
    move-object v0, v2

    goto :goto_78

    :catch_5c
    move-exception v2

    goto :goto_64

    :catchall_5e
    move-exception p1

    move-object v1, v0

    goto :goto_7d

    :catch_61
    move-exception v2

    move-object p1, v0

    move-object v1, p1

    .line 147
    :goto_64
    :try_start_64
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_79

    if-eqz p1, :cond_6f

    .line 151
    :try_start_69
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_6f

    :catch_6d
    move-exception p1

    goto :goto_75

    :cond_6f
    :goto_6f
    if-eqz v1, :cond_78

    .line 154
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_74} :catch_6d

    goto :goto_78

    .line 157
    :goto_75
    invoke-static {p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/Throwable;)V

    :cond_78
    :goto_78
    return-object v0

    :catchall_79
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_7d
    if-eqz v0, :cond_85

    .line 151
    :try_start_7f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_85

    :catch_83
    move-exception v0

    goto :goto_8b

    :cond_85
    :goto_85
    if-eqz v1, :cond_8e

    .line 154
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8a} :catch_83

    goto :goto_8e

    .line 157
    :goto_8b
    invoke-static {v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/Throwable;)V

    .line 159
    :cond_8e
    :goto_8e
    throw p1
.end method

.method public readBytesFromStorage(Ljava/lang/String;)[B
    .registers 8

    const/4 v0, 0x0

    .line 208
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_41
    .catchall {:try_start_1 .. :try_end_b} :catchall_3e

    .line 209
    :try_start_b
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_3b
    .catchall {:try_start_b .. :try_end_10} :catchall_39

    const/16 v2, 0x400

    .line 210
    :try_start_12
    new-array v2, v2, [B

    .line 212
    :goto_14
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    const/4 v4, 0x0

    .line 213
    invoke-virtual {p1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_14

    .line 215
    :cond_20
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_24} :catch_37
    .catchall {:try_start_12 .. :try_end_24} :catchall_59

    if-eqz v1, :cond_2c

    .line 221
    :try_start_26
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_2c

    :catch_2a
    move-exception p1

    goto :goto_32

    :cond_2c
    :goto_2c
    if-eqz p1, :cond_35

    .line 224
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_31} :catch_2a

    goto :goto_35

    .line 227
    :goto_32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    :goto_35
    move-object v0, v2

    goto :goto_58

    :catch_37
    move-exception v2

    goto :goto_44

    :catchall_39
    move-exception p1

    goto :goto_5d

    :catch_3b
    move-exception v2

    move-object p1, v0

    goto :goto_44

    :catchall_3e
    move-exception p1

    move-object v1, v0

    goto :goto_5d

    :catch_41
    move-exception v2

    move-object p1, v0

    move-object v1, p1

    .line 217
    :goto_44
    :try_start_44
    invoke-static {v2}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_59

    if-eqz v1, :cond_4f

    .line 221
    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_4f

    :catch_4d
    move-exception p1

    goto :goto_55

    :cond_4f
    :goto_4f
    if-eqz p1, :cond_58

    .line 224
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_54} :catch_4d

    goto :goto_58

    .line 227
    :goto_55
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_58
    :goto_58
    return-object v0

    :catchall_59
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_5d
    if-eqz v1, :cond_65

    .line 221
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_65

    :catch_63
    move-exception v0

    goto :goto_6b

    :cond_65
    :goto_65
    if-eqz v0, :cond_6e

    .line 224
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6a} :catch_63

    goto :goto_6e

    .line 227
    :goto_6b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    :cond_6e
    :goto_6e
    throw p1
.end method
