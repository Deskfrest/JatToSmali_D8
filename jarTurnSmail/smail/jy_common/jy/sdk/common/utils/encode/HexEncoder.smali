.class public Ljy/sdk/common/utils/encode/HexEncoder;
.super Ljava/lang/Object;
.source "HexEncoder.java"

# interfaces
.implements Ljy/sdk/common/utils/encode/IByteEncoder;


# static fields
.field private static volatile instance:Ljy/sdk/common/utils/encode/HexEncoder;


# instance fields
.field private final DIGITS_LOWER:[C

.field private final DIGITS_UPPER:[C


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 16
    new-array v1, v0, [C

    fill-array-data v1, :array_14

    iput-object v1, p0, Ljy/sdk/common/utils/encode/HexEncoder;->DIGITS_LOWER:[C

    .line 19
    new-array v0, v0, [C

    fill-array-data v0, :array_28

    iput-object v0, p0, Ljy/sdk/common/utils/encode/HexEncoder;->DIGITS_UPPER:[C

    return-void

    :array_14
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_28
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private static byteArrayToHex([B)Ljava/lang/String;
    .registers 9

    const/16 v0, 0x10

    .line 115
    new-array v0, v0, [C

    fill-array-data v0, :array_2e

    .line 117
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 119
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v3, v2, :cond_28

    aget-byte v5, p0, v3

    add-int/lit8 v6, v4, 0x1

    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    .line 120
    aget-char v7, v0, v7

    aput-char v7, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 121
    aget-char v5, v0, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 123
    :cond_28
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :array_2e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private decodeHex([C)[B
    .registers 8

    .line 58
    array-length v0, p1

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_c

    const-string p1, "Odd number of characters."

    .line 61
    invoke-static {p1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_c
    shr-int/lit8 v1, v0, 0x1

    .line 65
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v2, v0, :cond_2f

    .line 69
    aget-char v4, p1, v2

    invoke-virtual {p0, v4, v2}, Ljy/sdk/common/utils/encode/HexEncoder;->toDigit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, v2, 0x1

    .line 71
    aget-char v5, p1, v2

    invoke-virtual {p0, v5, v2}, Ljy/sdk/common/utils/encode/HexEncoder;->toDigit(CI)I

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 73
    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2f
    return-object v1
.end method

.method public static getInstance()Ljy/sdk/common/utils/encode/HexEncoder;
    .registers 2

    .line 29
    sget-object v0, Ljy/sdk/common/utils/encode/HexEncoder;->instance:Ljy/sdk/common/utils/encode/HexEncoder;

    if-nez v0, :cond_17

    .line 30
    const-class v0, Ljy/sdk/common/utils/encode/HexEncoder;

    monitor-enter v0

    .line 31
    :try_start_7
    sget-object v1, Ljy/sdk/common/utils/encode/HexEncoder;->instance:Ljy/sdk/common/utils/encode/HexEncoder;

    if-nez v1, :cond_12

    .line 32
    new-instance v1, Ljy/sdk/common/utils/encode/HexEncoder;

    invoke-direct {v1}, Ljy/sdk/common/utils/encode/HexEncoder;-><init>()V

    sput-object v1, Ljy/sdk/common/utils/encode/HexEncoder;->instance:Ljy/sdk/common/utils/encode/HexEncoder;

    .line 34
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 37
    :cond_17
    :goto_17
    sget-object v0, Ljy/sdk/common/utils/encode/HexEncoder;->instance:Ljy/sdk/common/utils/encode/HexEncoder;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .registers 3

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1}, Ljy/sdk/common/utils/encode/HexEncoder;->decodeHex([C)[B

    move-result-object p1

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_12

    .line 42
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_12

    .line 45
    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljy/sdk/common/utils/encode/HexEncoder;->DIGITS_LOWER:[C

    invoke-virtual {p0, p1, v1}, Ljy/sdk/common/utils/encode/HexEncoder;->encodeHex([B[C)[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

.method protected encodeHex([B[C)[C
    .registers 9

    .line 81
    array-length v0, p1

    shl-int/lit8 v1, v0, 0x1

    .line 82
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v0, :cond_22

    add-int/lit8 v4, v3, 0x1

    .line 84
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p2, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    .line 85
    aget-byte v5, p1, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p2, v5

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_22
    return-object v1
.end method

.method protected toDigit(CI)I
    .registers 6

    const/16 v0, 0x10

    .line 102
    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal hexadecimal character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " at index "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;)V

    :cond_25
    return v0
.end method
