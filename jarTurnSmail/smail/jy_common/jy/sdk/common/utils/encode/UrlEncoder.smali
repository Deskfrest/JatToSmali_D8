.class public Ljy/sdk/common/utils/encode/UrlEncoder;
.super Ljava/lang/Object;
.source "UrlEncoder.java"


# static fields
.field private static volatile instance:Ljy/sdk/common/utils/encode/UrlEncoder;


# instance fields
.field private DEFAULT_ENC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    .line 17
    iput-object v0, p0, Ljy/sdk/common/utils/encode/UrlEncoder;->DEFAULT_ENC:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Ljy/sdk/common/utils/encode/UrlEncoder;
    .registers 2

    .line 24
    sget-object v0, Ljy/sdk/common/utils/encode/UrlEncoder;->instance:Ljy/sdk/common/utils/encode/UrlEncoder;

    if-nez v0, :cond_17

    .line 25
    const-class v0, Ljy/sdk/common/utils/encode/UrlEncoder;

    monitor-enter v0

    .line 26
    :try_start_7
    sget-object v1, Ljy/sdk/common/utils/encode/UrlEncoder;->instance:Ljy/sdk/common/utils/encode/UrlEncoder;

    if-nez v1, :cond_12

    .line 27
    new-instance v1, Ljy/sdk/common/utils/encode/UrlEncoder;

    invoke-direct {v1}, Ljy/sdk/common/utils/encode/UrlEncoder;-><init>()V

    sput-object v1, Ljy/sdk/common/utils/encode/UrlEncoder;->instance:Ljy/sdk/common/utils/encode/UrlEncoder;

    .line 29
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 31
    :cond_17
    :goto_17
    sget-object v0, Ljy/sdk/common/utils/encode/UrlEncoder;->instance:Ljy/sdk/common/utils/encode/UrlEncoder;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, ""

    return-object p1

    :cond_9
    const/4 v0, 0x0

    .line 54
    :try_start_a
    iget-object v1, p0, Ljy/sdk/common/utils/encode/UrlEncoder;->DEFAULT_ENC:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_18

    :catch_11
    move-exception p1

    const-string v1, "jy_utils"

    .line 56
    invoke-static {v1, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_18
    return-object p1
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, ""

    return-object p1

    :cond_9
    const/4 v0, 0x0

    .line 41
    :try_start_a
    iget-object v1, p0, Ljy/sdk/common/utils/encode/UrlEncoder;->DEFAULT_ENC:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_18

    :catch_11
    move-exception p1

    const-string v1, "jy_utils"

    .line 43
    invoke-static {v1, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_18
    return-object p1
.end method
