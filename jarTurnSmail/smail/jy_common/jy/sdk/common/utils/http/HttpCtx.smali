.class public Ljy/sdk/common/utils/http/HttpCtx;
.super Ljava/lang/Object;
.source "HttpCtx.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_TIMEOUT:I = 0x3a98

.field private static _Default:Ljy/sdk/common/utils/http/HttpCtx;


# instance fields
.field mAgent:Ljava/lang/String;

.field mCharset:Ljava/lang/String;

.field mHttpMode:Ljy/sdk/common/utils/http/HttpMode;

.field mReadTimeout:I

.field mTimeout:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 45
    sget-object v0, Ljy/sdk/common/utils/http/HttpMode;->Get:Ljy/sdk/common/utils/http/HttpMode;

    const/16 v1, 0x3a98

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Ljy/sdk/common/utils/http/HttpCtx;-><init>(ILjava/lang/String;Ljy/sdk/common/utils/http/HttpMode;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljy/sdk/common/utils/http/HttpMode;)V
    .registers 6

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    .line 98
    iput-object v0, p0, Ljy/sdk/common/utils/http/HttpCtx;->mCharset:Ljava/lang/String;

    .line 20
    iput p1, p0, Ljy/sdk/common/utils/http/HttpCtx;->mTimeout:I

    .line 21
    iput p2, p0, Ljy/sdk/common/utils/http/HttpCtx;->mReadTimeout:I

    .line 22
    iput-object p3, p0, Ljy/sdk/common/utils/http/HttpCtx;->mAgent:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Ljy/sdk/common/utils/http/HttpCtx;->mHttpMode:Ljy/sdk/common/utils/http/HttpMode;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 41
    sget-object v0, Ljy/sdk/common/utils/http/HttpMode;->Get:Ljy/sdk/common/utils/http/HttpMode;

    invoke-direct {p0, p1, p2, v0}, Ljy/sdk/common/utils/http/HttpCtx;-><init>(ILjava/lang/String;Ljy/sdk/common/utils/http/HttpMode;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljy/sdk/common/utils/http/HttpMode;)V
    .registers 5

    const/16 v0, 0x3a98

    .line 32
    invoke-direct {p0, p1, v0, p2, p3}, Ljy/sdk/common/utils/http/HttpCtx;-><init>(IILjava/lang/String;Ljy/sdk/common/utils/http/HttpMode;)V

    return-void
.end method

.method public static getDefault()Ljy/sdk/common/utils/http/HttpCtx;
    .registers 2

    .line 113
    sget-object v0, Ljy/sdk/common/utils/http/HttpCtx;->_Default:Ljy/sdk/common/utils/http/HttpCtx;

    if-nez v0, :cond_17

    .line 114
    const-class v0, Ljy/sdk/common/utils/http/HttpCtx;

    monitor-enter v0

    .line 115
    :try_start_7
    sget-object v1, Ljy/sdk/common/utils/http/HttpCtx;->_Default:Ljy/sdk/common/utils/http/HttpCtx;

    if-nez v1, :cond_12

    .line 116
    new-instance v1, Ljy/sdk/common/utils/http/HttpCtx;

    invoke-direct {v1}, Ljy/sdk/common/utils/http/HttpCtx;-><init>()V

    sput-object v1, Ljy/sdk/common/utils/http/HttpCtx;->_Default:Ljy/sdk/common/utils/http/HttpCtx;

    .line 118
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 120
    :cond_17
    :goto_17
    sget-object v0, Ljy/sdk/common/utils/http/HttpCtx;->_Default:Ljy/sdk/common/utils/http/HttpCtx;

    return-object v0
.end method


# virtual methods
.method public getAgent()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Ljy/sdk/common/utils/http/HttpCtx;->mAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Ljy/sdk/common/utils/http/HttpCtx;->mCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpMode()Ljy/sdk/common/utils/http/HttpMode;
    .registers 2

    .line 91
    iget-object v0, p0, Ljy/sdk/common/utils/http/HttpCtx;->mHttpMode:Ljy/sdk/common/utils/http/HttpMode;

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .line 71
    iget v0, p0, Ljy/sdk/common/utils/http/HttpCtx;->mReadTimeout:I

    return v0
.end method

.method public getTimeout()I
    .registers 2

    .line 56
    iget v0, p0, Ljy/sdk/common/utils/http/HttpCtx;->mTimeout:I

    return v0
.end method

.method public setAgent(Ljava/lang/String;)V
    .registers 2

    .line 85
    iput-object p1, p0, Ljy/sdk/common/utils/http/HttpCtx;->mAgent:Ljava/lang/String;

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .registers 2

    .line 107
    iput-object p1, p0, Ljy/sdk/common/utils/http/HttpCtx;->mCharset:Ljava/lang/String;

    return-void
.end method

.method public setHttpMode(Ljy/sdk/common/utils/http/HttpMode;)V
    .registers 2

    .line 95
    iput-object p1, p0, Ljy/sdk/common/utils/http/HttpCtx;->mHttpMode:Ljy/sdk/common/utils/http/HttpMode;

    return-void
.end method

.method public setReadTimeout(I)V
    .registers 2

    .line 75
    iput p1, p0, Ljy/sdk/common/utils/http/HttpCtx;->mReadTimeout:I

    return-void
.end method

.method public setTimeout(I)V
    .registers 2

    .line 64
    iput p1, p0, Ljy/sdk/common/utils/http/HttpCtx;->mTimeout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "connect timeout: {0}"

    const/4 v2, 0x1

    .line 125
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljy/sdk/common/utils/http/HttpCtx;->getTimeout()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "read timeout: {0}"

    .line 128
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljy/sdk/common/utils/http/HttpCtx;->getReadTimeout()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "agent: {0}"

    .line 131
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljy/sdk/common/utils/http/HttpCtx;->getAgent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "http mode: {0}"

    .line 134
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljy/sdk/common/utils/http/HttpCtx;->getHttpMode()Ljy/sdk/common/utils/http/HttpMode;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "charset: {0}"

    .line 137
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljy/sdk/common/utils/http/HttpCtx;->getCharset()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
