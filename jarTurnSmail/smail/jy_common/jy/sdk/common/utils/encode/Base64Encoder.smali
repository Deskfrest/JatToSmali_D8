.class public Ljy/sdk/common/utils/encode/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"

# interfaces
.implements Ljy/sdk/common/utils/encode/IByteEncoder;


# static fields
.field private static volatile instance:Ljy/sdk/common/utils/encode/Base64Encoder;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljy/sdk/common/utils/encode/Base64Encoder;
    .registers 2

    .line 16
    sget-object v0, Ljy/sdk/common/utils/encode/Base64Encoder;->instance:Ljy/sdk/common/utils/encode/Base64Encoder;

    if-nez v0, :cond_17

    .line 17
    const-class v0, Ljy/sdk/common/utils/encode/Base64Encoder;

    monitor-enter v0

    .line 18
    :try_start_7
    sget-object v1, Ljy/sdk/common/utils/encode/Base64Encoder;->instance:Ljy/sdk/common/utils/encode/Base64Encoder;

    if-nez v1, :cond_12

    .line 19
    new-instance v1, Ljy/sdk/common/utils/encode/Base64Encoder;

    invoke-direct {v1}, Ljy/sdk/common/utils/encode/Base64Encoder;-><init>()V

    sput-object v1, Ljy/sdk/common/utils/encode/Base64Encoder;->instance:Ljy/sdk/common/utils/encode/Base64Encoder;

    .line 21
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 23
    :cond_17
    :goto_17
    sget-object v0, Ljy/sdk/common/utils/encode/Base64Encoder;->instance:Ljy/sdk/common/utils/encode/Base64Encoder;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .registers 3

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    const/4 v0, 0x0

    .line 39
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_c

    .line 28
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    .line 31
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_c
    const/4 p1, 0x0

    return-object p1
.end method
