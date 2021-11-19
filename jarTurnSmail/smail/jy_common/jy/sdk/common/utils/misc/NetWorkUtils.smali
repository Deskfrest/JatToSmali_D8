.class public Ljy/sdk/common/utils/misc/NetWorkUtils;
.super Ljava/lang/Object;
.source "NetWorkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;
    }
.end annotation


# static fields
.field private static final INVA:Ljava/lang/String; = "02:00:00:00:00:00"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_3a

    .line 430
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_3a

    .line 433
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    const/4 v4, 0x1

    if-ge v3, v1, :cond_27

    aget-byte v5, p0, v3

    const-string v6, "%02X:"

    .line 435
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 437
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_35

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 440
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static callCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    .line 447
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 448
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 449
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 451
    :goto_18
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_35

    move-object v0, v1

    goto :goto_18

    :catch_35
    move-object v1, v0

    :cond_36
    return-object v1
.end method

.method private static checkMac(Ljava/lang/String;)Z
    .registers 3

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "00:00:00:00:00:00"

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const-string v0, "02:00:00:00:00:00"

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    return v1

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method private static getInetAddress()Ljava/net/InetAddress;
    .registers 5

    .line 404
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 405
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 406
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 407
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_4

    .line 408
    :cond_17
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 409
    :cond_1b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 410
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 411
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 412
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    .line 413
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_37
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_37} :catch_3a

    if-gez v3, :cond_1b

    return-object v2

    :catch_3a
    move-exception v0

    .line 418
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLocalInetAddress()Ljava/net/InetAddress;
    .registers 6

    const/4 v0, 0x0

    .line 380
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_41

    move-object v2, v0

    .line 381
    :cond_6
    :try_start_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 382
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 383
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 384
    :goto_16
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 385
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_22} :catch_3f

    .line 386
    :try_start_22
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_39

    const/4 v5, -0x1

    if-ne v2, v5, :cond_37

    move-object v2, v4

    goto :goto_3c

    :cond_37
    move-object v2, v0

    goto :goto_16

    :catch_39
    move-exception v0

    move-object v2, v4

    goto :goto_44

    :cond_3c
    :goto_3c
    if-eqz v2, :cond_6

    goto :goto_4d

    :catch_3f
    move-exception v0

    goto :goto_44

    :catch_41
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_44
    const-string v1, "jy_utils"

    .line 397
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    return-object v2
.end method

.method private static getMac0(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 202
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    .line 203
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 204
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    if-eqz v0, :cond_4

    .line 205
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wlan0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_4

    .line 207
    :cond_1f
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 208
    array-length v1, v0

    if-lez v1, :cond_4

    .line 209
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_30
    const/4 v4, 0x1

    if-ge v3, v1, :cond_4d

    aget-byte v5, v0, v3

    const-string v6, "%02x:"

    .line 211
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 213
    :cond_4d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_57

    return-object p0

    :catch_57
    move-exception p0

    .line 217
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5b
    const-string p0, "02:00:00:00:00:00"

    return-object p0
.end method

.method private static getMac1(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 224
    :try_start_0
    invoke-static {}, Ljy/sdk/common/utils/misc/NetWorkUtils;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 226
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 228
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object p0

    if-eqz p0, :cond_48

    .line 229
    array-length v0, p0

    if-lez v0, :cond_48

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    const/4 v4, 0x1

    if-ge v3, v1, :cond_36

    aget-byte v5, p0, v3

    const-string v6, "%02x:"

    .line 232
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 234
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    return-object p0

    :catch_44
    move-exception p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_48
    const-string p0, "02:00:00:00:00:00"

    return-object p0
.end method

.method private static getMac2(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "wifi"

    .line 245
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 246
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    const-string v0, "jy_utils"

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMac0 failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private static getMac3()Ljava/lang/String;
    .registers 7

    .line 259
    :try_start_0
    invoke-static {}, Ljy/sdk/common/utils/misc/NetWorkUtils;->getLocalInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 260
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    .line 261
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 262
    :goto_13
    array-length v4, v0

    if-ge v3, v4, :cond_41

    if-eqz v3, :cond_1d

    const/16 v4, 0x3a

    .line 264
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    :cond_1d
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 269
    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    goto :goto_66

    :catch_4a
    move-exception v0

    const-string v1, "jy_utils"

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMac3 failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_66
    return-object v0
.end method

.method private static getMac4()Ljava/lang/String;
    .registers 10

    .line 307
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 309
    :try_start_6
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 310
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 311
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 312
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    if-eqz v3, :cond_a

    .line 313
    array-length v4, v3

    if-lez v4, :cond_a

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    array-length v5, v3

    const/4 v6, 0x0

    :goto_26
    const/4 v7, 0x1

    if-ge v6, v5, :cond_3f

    aget-byte v8, v3, v6

    const-string v9, "%02x:"

    .line 316
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 318
    :cond_3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v4, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4b} :catch_4c

    goto :goto_a

    :catch_4c
    move-exception v2

    .line 322
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    :cond_50
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_58

    const/4 v0, 0x0

    return-object v0

    .line 326
    :cond_58
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 327
    invoke-virtual {v0}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v3, v0

    :goto_62
    if-ge v1, v3, :cond_7d

    aget-object v4, v0, v1

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 330
    :cond_7d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMac5()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    const-string v1, "busybox ifconfig"

    const-string v2, "HWaddr"

    .line 337
    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/NetWorkUtils;->callCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_32

    if-nez v1, :cond_11

    :try_start_c
    const-string v0, ""

    return-object v0

    :catch_f
    move-exception v0

    goto :goto_36

    .line 343
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3b

    const-string v0, "HWaddr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3b

    const-string v0, "HWaddr"

    .line 344
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_31} :catch_f

    goto :goto_3c

    :catch_32
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_36
    const-string v2, "jy_utils"

    .line 348
    invoke-static {v2, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3b
    move-object v0, v1

    :goto_3c
    return-object v0
.end method

.method public static getMacAddr(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "02:00:00:00:00:00"

    .line 40
    :try_start_2
    invoke-static {p0}, Ljy/sdk/common/utils/misc/NetWorkUtils;->getMac0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {p0}, Ljy/sdk/common/utils/misc/NetWorkUtils;->getMac1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {p0}, Ljy/sdk/common/utils/misc/NetWorkUtils;->getMac2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {}, Ljy/sdk/common/utils/misc/NetWorkUtils;->getMac3()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {v1}, Ljy/sdk/common/utils/misc/NetWorkUtils;->checkMac(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    return-object v1

    .line 57
    :cond_19
    invoke-static {v2}, Ljy/sdk/common/utils/misc/NetWorkUtils;->checkMac(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    return-object v2

    .line 60
    :cond_20
    invoke-static {p0}, Ljy/sdk/common/utils/misc/NetWorkUtils;->checkMac(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    return-object p0

    .line 63
    :cond_27
    invoke-static {v3}, Ljy/sdk/common/utils/misc/NetWorkUtils;->checkMac(Ljava/lang/String;)Z

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_2e

    if-eqz p0, :cond_34

    return-object v3

    :catch_2e
    move-exception p0

    const-string v1, "jy_utils"

    .line 73
    invoke-static {v1, p0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_34
    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .registers 4

    .line 126
    sget-object v0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_OTHER:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    invoke-virtual {v0}, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->getCode()I

    move-result v0

    :try_start_6
    const-string v1, "connectivity"

    .line 131
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 132
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_81

    .line 133
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 134
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 135
    sget-object p0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_WIFI:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    invoke-virtual {p0}, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->getCode()I

    move-result p0

    :goto_27
    move v0, p0

    goto :goto_81

    .line 136
    :cond_29
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_81

    .line 137
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_82

    const-string p0, "TD-SCDMA"

    goto :goto_52

    .line 161
    :pswitch_3d
    sget-object p0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_3_4G:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    invoke-virtual {p0}, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->getCode()I

    move-result p0

    goto :goto_27

    .line 158
    :pswitch_44
    sget-object p0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_3_4G:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    invoke-virtual {p0}, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->getCode()I

    move-result p0

    goto :goto_27

    .line 147
    :pswitch_4b
    sget-object p0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_2G:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    invoke-virtual {p0}, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->getCode()I

    move-result p0

    goto :goto_27

    .line 166
    :goto_52
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_70

    const-string p0, "WCDMA"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_70

    const-string p0, "CDMA2000"

    .line 167
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_69

    goto :goto_70

    .line 170
    :cond_69
    sget-object p0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_OTHER:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    invoke-virtual {p0}, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->getCode()I

    move-result p0

    goto :goto_27

    .line 168
    :cond_70
    :goto_70
    sget-object p0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_3_4G:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    invoke-virtual {p0}, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->getCode()I

    move-result p0
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_76} :catch_77

    goto :goto_27

    :catch_77
    move-exception p0

    const-string v1, "jy_utils"

    .line 179
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    :goto_81
    return v0

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_4b
        :pswitch_44
        :pswitch_4b
        :pswitch_44
        :pswitch_44
        :pswitch_4b
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_4b
        :pswitch_44
        :pswitch_3d
        :pswitch_44
        :pswitch_44
    .end packed-switch
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 2

    .line 102
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_10

    return v0

    .line 108
    :cond_10
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 109
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1d

    if-nez p0, :cond_23

    :cond_1c
    return v0

    :catch_1d
    move-exception p0

    const-string v0, "jy_utils"

    .line 113
    invoke-static {v0, p0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    const/4 p0, 0x1

    return p0
.end method

.method private static loadFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 354
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-static {v0}, Ljy/sdk/common/utils/misc/NetWorkUtils;->loadReaderAsString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    .line 356
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    return-object p0
.end method

.method private static loadReaderAsString(Ljava/io/Reader;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1000

    .line 362
    new-array v1, v1, [C

    .line 363
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    :goto_d
    if-ltz v2, :cond_18

    const/4 v3, 0x0

    .line 365
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    goto :goto_d

    .line 368
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
