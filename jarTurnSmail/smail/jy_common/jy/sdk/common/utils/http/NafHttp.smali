.class public Ljy/sdk/common/utils/http/NafHttp;
.super Ljava/lang/Object;
.source "NafHttp.java"

# interfaces
.implements Ljy/sdk/common/utils/http/IHttp;


# static fields
.field public static final DEFAUTL_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field mElapsedTime:J

.field private mErrMsg:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mHttpAccessStatus:Ljy/sdk/common/utils/http/HttpAccessStatus;

.field private mHttpErrType:Ljy/sdk/common/utils/http/HttpErrorType;

.field mHttpStatus:Ljy/sdk/common/utils/http/HttpStatus;

.field mPara:Ljava/lang/String;

.field mResult:[B

.field mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 42
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ljy/sdk/common/utils/http/NafHttp;->DEFAUTL_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Ljy/sdk/common/utils/http/NafHttp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 56
    iput-object v0, p0, Ljy/sdk/common/utils/http/NafHttp;->mPara:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Ljy/sdk/common/utils/http/NafHttp;->mUrl:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Ljy/sdk/common/utils/http/NafHttp;->mPara:Ljava/lang/String;

    .line 35
    sget-object p1, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_NONE:Ljy/sdk/common/utils/http/HttpErrorType;

    invoke-virtual {p0, p1}, Ljy/sdk/common/utils/http/NafHttp;->setHttpErrorType(Ljy/sdk/common/utils/http/HttpErrorType;)V

    return-void
.end method

.method private accessInternet(Ljy/sdk/common/utils/http/HttpCtx;)V
    .registers 19

    move-object/from16 v1, p0

    .line 238
    invoke-virtual/range {p0 .. p0}, Ljy/sdk/common/utils/http/NafHttp;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    const-string v2, "jy_http"

    const-string v3, "url is null,failed to accessInternet"

    .line 239
    invoke-static {v2, v3}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    const-string v3, "UTF-8"

    if-eqz p1, :cond_18

    .line 244
    invoke-virtual/range {p1 .. p1}, Ljy/sdk/common/utils/http/HttpCtx;->getCharset()Ljava/lang/String;

    move-result-object v3

    :cond_18
    const/16 v4, 0x3a98

    if-nez p1, :cond_1f

    const/16 v5, 0x3a98

    goto :goto_23

    .line 247
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ljy/sdk/common/utils/http/HttpCtx;->getTimeout()I

    move-result v5

    :goto_23
    if-nez p1, :cond_26

    goto :goto_2a

    .line 248
    :cond_26
    invoke-virtual/range {p1 .. p1}, Ljy/sdk/common/utils/http/HttpCtx;->getReadTimeout()I

    move-result v4

    :goto_2a
    if-nez p1, :cond_2f

    .line 250
    sget-object v2, Ljy/sdk/common/utils/http/HttpMode;->Post:Ljy/sdk/common/utils/http/HttpMode;

    goto :goto_33

    :cond_2f
    invoke-virtual/range {p1 .. p1}, Ljy/sdk/common/utils/http/HttpCtx;->getHttpMode()Ljy/sdk/common/utils/http/HttpMode;

    move-result-object v2

    .line 252
    :goto_33
    invoke-virtual/range {p0 .. p0}, Ljy/sdk/common/utils/http/NafHttp;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 254
    invoke-virtual/range {p0 .. p0}, Ljy/sdk/common/utils/http/NafHttp;->getPara()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_6e

    sget-object v7, Ljy/sdk/common/utils/http/HttpMode;->Get:Ljy/sdk/common/utils/http/HttpMode;

    if-ne v2, v7, :cond_6e

    .line 256
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Ljy/sdk/common/utils/http/NafHttp;->getPara()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    const/16 v11, 0x26

    if-ne v10, v11, :cond_5a

    const-string v10, ""

    .line 259
    invoke-virtual {v7, v9, v8, v10}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 261
    :cond_5a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 263
    :cond_6e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x2

    .line 272
    :try_start_73
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/net/MalformedURLException; {:try_start_73 .. :try_end_78} :catch_2f8
    .catch Ljava/net/SocketTimeoutException; {:try_start_73 .. :try_end_78} :catch_29e
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_78} :catch_243
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_78} :catch_1e8
    .catchall {:try_start_73 .. :try_end_78} :catchall_1e1

    .line 273
    :try_start_78
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    check-cast v14, Ljava/net/HttpURLConnection;
    :try_end_7e
    .catch Ljava/net/MalformedURLException; {:try_start_78 .. :try_end_7e} :catch_1db
    .catch Ljava/net/SocketTimeoutException; {:try_start_78 .. :try_end_7e} :catch_1d5
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7e} :catch_1cf
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7e} :catch_1ca
    .catchall {:try_start_78 .. :try_end_7e} :catchall_1e1

    .line 274
    :try_start_7e
    invoke-virtual {v14, v8}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 275
    invoke-static {v8}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    if-eqz v3, :cond_91

    const-string v15, "Accept-Charset"

    .line 278
    invoke-virtual {v14, v15, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "contentType"

    .line 279
    invoke-virtual {v14, v15, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    :cond_91
    const-string v15, "Accept-Charset"

    const-string v7, "UTF-8"

    .line 281
    invoke-virtual {v14, v15, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "contentType"

    const-string v15, "UTF-8"

    .line 282
    invoke-virtual {v14, v7, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_9f
    invoke-direct {v1, v14}, Ljy/sdk/common/utils/http/NafHttp;->setHeadersToConnection(Ljava/net/HttpURLConnection;)V

    .line 287
    invoke-virtual {v14, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 288
    invoke-virtual {v14, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 291
    invoke-virtual {v2}, Ljy/sdk/common/utils/http/HttpMode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 293
    sget-object v4, Ljy/sdk/common/utils/http/HttpMode;->Post:Ljy/sdk/common/utils/http/HttpMode;

    if-ne v2, v4, :cond_e2

    .line 294
    invoke-virtual {v14, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 295
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7
    :try_end_ba
    .catch Ljava/net/MalformedURLException; {:try_start_7e .. :try_end_ba} :catch_1c4
    .catch Ljava/net/SocketTimeoutException; {:try_start_7e .. :try_end_ba} :catch_1be
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_ba} :catch_1b8
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_ba} :catch_1b3
    .catchall {:try_start_7e .. :try_end_ba} :catchall_1ad

    .line 296
    :try_start_ba
    invoke-virtual/range {p0 .. p0}, Ljy/sdk/common/utils/http/NafHttp;->getPara()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V

    .line 297
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_c8
    .catch Ljava/net/MalformedURLException; {:try_start_ba .. :try_end_c8} :catch_dd
    .catch Ljava/net/SocketTimeoutException; {:try_start_ba .. :try_end_c8} :catch_d8
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_c8} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c8} :catch_ce
    .catchall {:try_start_ba .. :try_end_c8} :catchall_c9

    goto :goto_ea

    :catchall_c9
    move-exception v0

    move-object v2, v0

    move-object v3, v7

    goto/16 :goto_1b0

    :catch_ce
    move-exception v0

    move-object v2, v0

    move-object v3, v7

    goto/16 :goto_1b6

    :catch_d3
    move-exception v0

    move-object v2, v0

    move-object v3, v7

    goto/16 :goto_1bb

    :catch_d8
    move-exception v0

    move-object v2, v0

    move-object v3, v7

    goto/16 :goto_1c1

    :catch_dd
    move-exception v0

    move-object v2, v0

    move-object v3, v7

    goto/16 :goto_1c7

    .line 298
    :cond_e2
    :try_start_e2
    sget-object v4, Ljy/sdk/common/utils/http/HttpMode;->Get:Ljy/sdk/common/utils/http/HttpMode;

    if-ne v2, v4, :cond_e9

    .line 299
    invoke-virtual {v14, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_e9
    .catch Ljava/net/MalformedURLException; {:try_start_e2 .. :try_end_e9} :catch_1c4
    .catch Ljava/net/SocketTimeoutException; {:try_start_e2 .. :try_end_e9} :catch_1be
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e9} :catch_1b8
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e9} :catch_1b3
    .catchall {:try_start_e2 .. :try_end_e9} :catchall_1ad

    :cond_e9
    const/4 v7, 0x0

    .line 301
    :goto_ea
    :try_start_ea
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 302
    invoke-static {v2}, Ljy/sdk/common/utils/http/HttpStatus;->valueOf(I)Ljy/sdk/common/utils/http/HttpStatus;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljy/sdk/common/utils/http/NafHttp;->setHttpStatus(Ljy/sdk/common/utils/http/HttpStatus;)V

    const-string v4, "jy_http"

    const-string v5, "\u8fde\u63a5 url[{0}] \u7684\u72b6\u6001\u7801:[{1}]"

    .line 304
    new-array v15, v12, [Ljava/lang/Object;

    aput-object v6, v15, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v8

    invoke-static {v5, v15}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_13e

    const-string v3, "jy_http"

    const-string v4, "\u8fde\u63a5url\u3010{0}\u3011\u8fd4\u56de\u72b6\u6001\u7801\u3010{1}\u3011\uff0c\u8bf7\u6c42\u5931\u8d25\uff01"

    .line 307
    new-array v5, v12, [Ljava/lang/Object;

    aput-object v6, v5, v9

    .line 308
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    .line 307
    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_123
    .catch Ljava/net/MalformedURLException; {:try_start_ea .. :try_end_123} :catch_dd
    .catch Ljava/net/SocketTimeoutException; {:try_start_ea .. :try_end_123} :catch_d8
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_123} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_123} :catch_ce
    .catchall {:try_start_ea .. :try_end_123} :catchall_c9

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v10

    invoke-virtual {v1, v4, v5}, Ljy/sdk/common/utils/http/NafHttp;->setElapsedTime(J)V

    if-eqz v7, :cond_138

    .line 379
    :try_start_12e
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_132

    goto :goto_138

    :catch_132
    move-exception v0

    const-string v2, "jy_http"

    .line 381
    invoke-static {v2, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_138
    :goto_138
    if-eqz v14, :cond_13d

    .line 386
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_13d
    return-void

    :cond_13e
    const/16 v2, 0x400

    .line 313
    :try_start_140
    new-array v2, v2, [B

    .line 314
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_14b
    .catch Ljava/net/MalformedURLException; {:try_start_140 .. :try_end_14b} :catch_dd
    .catch Ljava/net/SocketTimeoutException; {:try_start_140 .. :try_end_14b} :catch_d8
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_14b} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_14b} :catch_ce
    .catchall {:try_start_140 .. :try_end_14b} :catchall_c9

    .line 317
    :goto_14b
    :try_start_14b
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_15a

    .line 318
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v2, v9, v6, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14b

    .line 321
    :cond_15a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setResult([B)V

    .line 323
    sget-object v2, Ljy/sdk/common/utils/http/HttpAccessStatus;->Done:Ljy/sdk/common/utils/http/HttpAccessStatus;

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpAccessStatus(Ljy/sdk/common/utils/http/HttpAccessStatus;)V
    :try_end_16a
    .catch Ljava/net/MalformedURLException; {:try_start_14b .. :try_end_16a} :catch_1a7
    .catch Ljava/net/SocketTimeoutException; {:try_start_14b .. :try_end_16a} :catch_1a1
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_16a} :catch_19b
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_16a} :catch_195
    .catchall {:try_start_14b .. :try_end_16a} :catchall_18f

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v8, v2, v10

    invoke-virtual {v1, v8, v9}, Ljy/sdk/common/utils/http/NafHttp;->setElapsedTime(J)V

    if-eqz v5, :cond_17f

    .line 371
    :try_start_175
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_178} :catch_179

    goto :goto_17f

    :catch_179
    move-exception v0

    const-string v2, "jy_http"

    .line 373
    invoke-static {v2, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17f
    :goto_17f
    if-eqz v7, :cond_18b

    .line 379
    :try_start_181
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_185

    goto :goto_18b

    :catch_185
    move-exception v0

    const-string v2, "jy_http"

    .line 381
    invoke-static {v2, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18b
    :goto_18b
    if-eqz v14, :cond_34e

    goto/16 :goto_34b

    :catchall_18f
    move-exception v0

    move-object v2, v0

    move-object v3, v7

    move-object v7, v5

    goto/16 :goto_351

    :catch_195
    move-exception v0

    move-object v2, v0

    move-object v3, v7

    move-object v7, v5

    goto/16 :goto_1ee

    :catch_19b
    move-exception v0

    move-object v2, v0

    move-object v3, v7

    move-object v7, v5

    goto/16 :goto_249

    :catch_1a1
    move-exception v0

    move-object v2, v0

    move-object v3, v7

    move-object v7, v5

    goto/16 :goto_2a4

    :catch_1a7
    move-exception v0

    move-object v2, v0

    move-object v3, v7

    move-object v7, v5

    goto/16 :goto_2fe

    :catchall_1ad
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    :goto_1b0
    const/4 v7, 0x0

    goto/16 :goto_351

    :catch_1b3
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    :goto_1b6
    const/4 v7, 0x0

    goto :goto_1ee

    :catch_1b8
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    :goto_1bb
    const/4 v7, 0x0

    goto/16 :goto_249

    :catch_1be
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    :goto_1c1
    const/4 v7, 0x0

    goto/16 :goto_2a4

    :catch_1c4
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    :goto_1c7
    const/4 v7, 0x0

    goto/16 :goto_2fe

    :catch_1ca
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto :goto_1ed

    :catch_1cf
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto/16 :goto_248

    :catch_1d5
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto/16 :goto_2a3

    :catch_1db
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto/16 :goto_2fd

    :catchall_1e1
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    goto/16 :goto_351

    :catch_1e8
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_1ed
    const/4 v14, 0x0

    :goto_1ee
    :try_start_1ee
    const-string v4, "failed to connect to the url [{0}], the reasons are follows: {1}"

    .line 357
    new-array v5, v12, [Ljava/lang/Object;

    aput-object v13, v5, v9

    .line 359
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 357
    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jy_http"

    .line 360
    invoke-static {v5, v2}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "jy_http"

    .line 361
    invoke-static {v2, v4}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v2, Ljy/sdk/common/utils/http/HttpAccessStatus;->NotDone:Ljy/sdk/common/utils/http/HttpAccessStatus;

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpAccessStatus(Ljy/sdk/common/utils/http/HttpAccessStatus;)V

    .line 363
    sget-object v2, Ljy/sdk/common/utils/http/HttpStatus;->NotAccess:Ljy/sdk/common/utils/http/HttpStatus;

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpStatus(Ljy/sdk/common/utils/http/HttpStatus;)V

    .line 364
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpAccessErrMsg([B)V

    .line 365
    sget-object v2, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_OTHERS:Ljy/sdk/common/utils/http/HttpErrorType;

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpErrorType(Ljy/sdk/common/utils/http/HttpErrorType;)V
    :try_end_21e
    .catchall {:try_start_1ee .. :try_end_21e} :catchall_34f

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v8, v4, v10

    invoke-virtual {v1, v8, v9}, Ljy/sdk/common/utils/http/NafHttp;->setElapsedTime(J)V

    if-eqz v7, :cond_233

    .line 371
    :try_start_229
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_22c
    .catch Ljava/io/IOException; {:try_start_229 .. :try_end_22c} :catch_22d

    goto :goto_233

    :catch_22d
    move-exception v0

    const-string v2, "jy_http"

    .line 373
    invoke-static {v2, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_233
    :goto_233
    if-eqz v3, :cond_23f

    .line 379
    :try_start_235
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_238
    .catch Ljava/io/IOException; {:try_start_235 .. :try_end_238} :catch_239

    goto :goto_23f

    :catch_239
    move-exception v0

    const-string v2, "jy_http"

    .line 381
    invoke-static {v2, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23f
    :goto_23f
    if-eqz v14, :cond_34e

    goto/16 :goto_34b

    :catch_243
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_248
    const/4 v14, 0x0

    :goto_249
    :try_start_249
    const-string v4, "failed to connect to or read from the url [{0}], the reasons are follows: {1}"

    .line 346
    new-array v5, v12, [Ljava/lang/Object;

    aput-object v13, v5, v9

    .line 348
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 346
    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jy_http"

    .line 350
    invoke-static {v5, v2}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "jy_http"

    .line 351
    invoke-static {v2, v4}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v2, Ljy/sdk/common/utils/http/HttpAccessStatus;->NotDone:Ljy/sdk/common/utils/http/HttpAccessStatus;

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpAccessStatus(Ljy/sdk/common/utils/http/HttpAccessStatus;)V

    .line 353
    sget-object v2, Ljy/sdk/common/utils/http/HttpStatus;->NotAccess:Ljy/sdk/common/utils/http/HttpStatus;

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpStatus(Ljy/sdk/common/utils/http/HttpStatus;)V

    .line 354
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpAccessErrMsg([B)V

    .line 355
    sget-object v2, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_IO:Ljy/sdk/common/utils/http/HttpErrorType;

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpErrorType(Ljy/sdk/common/utils/http/HttpErrorType;)V
    :try_end_279
    .catchall {:try_start_249 .. :try_end_279} :catchall_34f

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v8, v4, v10

    invoke-virtual {v1, v8, v9}, Ljy/sdk/common/utils/http/NafHttp;->setElapsedTime(J)V

    if-eqz v7, :cond_28e

    .line 371
    :try_start_284
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_287
    .catch Ljava/io/IOException; {:try_start_284 .. :try_end_287} :catch_288

    goto :goto_28e

    :catch_288
    move-exception v0

    const-string v2, "jy_http"

    .line 373
    invoke-static {v2, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28e
    :goto_28e
    if-eqz v3, :cond_29a

    .line 379
    :try_start_290
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_293
    .catch Ljava/io/IOException; {:try_start_290 .. :try_end_293} :catch_294

    goto :goto_29a

    :catch_294
    move-exception v0

    const-string v2, "jy_http"

    .line 381
    invoke-static {v2, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_29a
    :goto_29a
    if-eqz v14, :cond_34e

    goto/16 :goto_34b

    :catch_29e
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_2a3
    const/4 v14, 0x0

    :goto_2a4
    :try_start_2a4
    const-string v4, "failed to connect to the url [{0}], the reasons are follows: {1}"

    .line 335
    new-array v5, v12, [Ljava/lang/Object;

    aput-object v13, v5, v9

    .line 337
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 335
    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jy_http"

    .line 339
    invoke-static {v5, v2}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "jy_http"

    .line 340
    invoke-static {v2, v4}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v2, Ljy/sdk/common/utils/http/HttpAccessStatus;->NotDone:Ljy/sdk/common/utils/http/HttpAccessStatus;

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpAccessStatus(Ljy/sdk/common/utils/http/HttpAccessStatus;)V

    .line 342
    sget-object v2, Ljy/sdk/common/utils/http/HttpStatus;->NotAccess:Ljy/sdk/common/utils/http/HttpStatus;

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpStatus(Ljy/sdk/common/utils/http/HttpStatus;)V

    .line 343
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpAccessErrMsg([B)V

    .line 344
    sget-object v2, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_TIMEOUT:Ljy/sdk/common/utils/http/HttpErrorType;

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpErrorType(Ljy/sdk/common/utils/http/HttpErrorType;)V
    :try_end_2d4
    .catchall {:try_start_2a4 .. :try_end_2d4} :catchall_34f

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v8, v4, v10

    invoke-virtual {v1, v8, v9}, Ljy/sdk/common/utils/http/NafHttp;->setElapsedTime(J)V

    if-eqz v7, :cond_2e9

    .line 371
    :try_start_2df
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2e2
    .catch Ljava/io/IOException; {:try_start_2df .. :try_end_2e2} :catch_2e3

    goto :goto_2e9

    :catch_2e3
    move-exception v0

    const-string v2, "jy_http"

    .line 373
    invoke-static {v2, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2e9
    :goto_2e9
    if-eqz v3, :cond_2f5

    .line 379
    :try_start_2eb
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2ee
    .catch Ljava/io/IOException; {:try_start_2eb .. :try_end_2ee} :catch_2ef

    goto :goto_2f5

    :catch_2ef
    move-exception v0

    const-string v2, "jy_http"

    .line 381
    invoke-static {v2, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f5
    :goto_2f5
    if-eqz v14, :cond_34e

    goto :goto_34b

    :catch_2f8
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_2fd
    const/4 v14, 0x0

    :goto_2fe
    :try_start_2fe
    const-string v4, "the url [{0}] is in wrong format "

    .line 325
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v13, v5, v9

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jy_http"

    .line 328
    invoke-static {v5, v2}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "jy_http"

    .line 329
    invoke-static {v2, v4}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v2, Ljy/sdk/common/utils/http/HttpAccessStatus;->NotDone:Ljy/sdk/common/utils/http/HttpAccessStatus;

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpAccessStatus(Ljy/sdk/common/utils/http/HttpAccessStatus;)V

    .line 331
    sget-object v2, Ljy/sdk/common/utils/http/HttpStatus;->NotAccess:Ljy/sdk/common/utils/http/HttpStatus;

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpStatus(Ljy/sdk/common/utils/http/HttpStatus;)V

    .line 332
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpAccessErrMsg([B)V

    .line 333
    sget-object v2, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_URL:Ljy/sdk/common/utils/http/HttpErrorType;

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->setHttpErrorType(Ljy/sdk/common/utils/http/HttpErrorType;)V
    :try_end_328
    .catchall {:try_start_2fe .. :try_end_328} :catchall_34f

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v8, v4, v10

    invoke-virtual {v1, v8, v9}, Ljy/sdk/common/utils/http/NafHttp;->setElapsedTime(J)V

    if-eqz v7, :cond_33d

    .line 371
    :try_start_333
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_336
    .catch Ljava/io/IOException; {:try_start_333 .. :try_end_336} :catch_337

    goto :goto_33d

    :catch_337
    move-exception v0

    const-string v2, "jy_http"

    .line 373
    invoke-static {v2, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_33d
    :goto_33d
    if-eqz v3, :cond_349

    .line 379
    :try_start_33f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_342
    .catch Ljava/io/IOException; {:try_start_33f .. :try_end_342} :catch_343

    goto :goto_349

    :catch_343
    move-exception v0

    const-string v2, "jy_http"

    .line 381
    invoke-static {v2, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_349
    :goto_349
    if-eqz v14, :cond_34e

    .line 386
    :goto_34b
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_34e
    return-void

    :catchall_34f
    move-exception v0

    move-object v2, v0

    .line 367
    :goto_351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v8, v4, v10

    invoke-virtual {v1, v8, v9}, Ljy/sdk/common/utils/http/NafHttp;->setElapsedTime(J)V

    if-eqz v7, :cond_366

    .line 371
    :try_start_35c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_35f
    .catch Ljava/io/IOException; {:try_start_35c .. :try_end_35f} :catch_360

    goto :goto_366

    :catch_360
    move-exception v0

    const-string v4, "jy_http"

    .line 373
    invoke-static {v4, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_366
    :goto_366
    if-eqz v3, :cond_372

    .line 379
    :try_start_368
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_36b
    .catch Ljava/io/IOException; {:try_start_368 .. :try_end_36b} :catch_36c

    goto :goto_372

    :catch_36c
    move-exception v0

    const-string v3, "jy_http"

    .line 381
    invoke-static {v3, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_372
    :goto_372
    if-eqz v14, :cond_377

    .line 386
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 388
    :cond_377
    throw v2
.end method

.method private getHeaderMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Ljy/sdk/common/utils/http/NafHttp;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method private setHeadersToConnection(Ljava/net/HttpURLConnection;)V
    .registers 6

    .line 392
    invoke-direct {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHeaderMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_a

    return-void

    .line 400
    :cond_a
    invoke-direct {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHeaderMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 401
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 402
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 404
    invoke-static {v2}, Ljy/sdk/common/utils/misc/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {v1}, Ljy/sdk/common/utils/misc/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_16

    .line 407
    :cond_3b
    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_3f
    return-void
.end method


# virtual methods
.method public access()V
    .registers 2

    .line 75
    invoke-static {}, Ljy/sdk/common/utils/http/HttpCtx;->getDefault()Ljy/sdk/common/utils/http/HttpCtx;

    move-result-object v0

    invoke-direct {p0, v0}, Ljy/sdk/common/utils/http/NafHttp;->accessInternet(Ljy/sdk/common/utils/http/HttpCtx;)V

    return-void
.end method

.method public access(Ljy/sdk/common/utils/http/HttpCtx;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Ljy/sdk/common/utils/http/NafHttp;->accessInternet(Ljy/sdk/common/utils/http/HttpCtx;)V

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 421
    invoke-static {p1}, Ljy/sdk/common/utils/misc/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "jy_http"

    const-string p2, "header name is empty, failed to add http header."

    .line 422
    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 426
    :cond_e
    invoke-static {p2}, Ljy/sdk/common/utils/misc/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p1, "jy_http"

    const-string p2, "header value is empty, failed to add http header."

    .line 427
    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 431
    :cond_1c
    invoke-direct {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHeaderMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_29

    .line 432
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljy/sdk/common/utils/http/NafHttp;->mHeaders:Ljava/util/Map;

    .line 435
    :cond_29
    invoke-direct {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHeaderMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getElapsedTime()J
    .registers 3

    .line 110
    iget-wide v0, p0, Ljy/sdk/common/utils/http/NafHttp;->mElapsedTime:J

    return-wide v0
.end method

.method public getErrorStr()Ljava/lang/String;
    .registers 4

    .line 193
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->isSucceed()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 196
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url ["

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] HttpAccessStatus ["

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHttpAccessStatus()Ljy/sdk/common/utils/http/HttpAccessStatus;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 201
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHttpAccessStatus()Ljy/sdk/common/utils/http/HttpAccessStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljy/sdk/common/utils/http/HttpAccessStatus;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_35
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHttpAccessStatus()Ljy/sdk/common/utils/http/HttpAccessStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] HttpStatus ["

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHttpStatus()Ljy/sdk/common/utils/http/HttpStatus;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 208
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHttpStatus()Ljy/sdk/common/utils/http/HttpStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljy/sdk/common/utils/http/HttpStatus;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_57
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHttpStatus()Ljy/sdk/common/utils/http/HttpStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] HttpAccessErrorMsg ["

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHttpAccessErrMsg()[B

    move-result-object v1

    if-nez v1, :cond_6f

    const-string v1, "null]"

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_80

    .line 217
    :cond_6f
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHttpAccessErrMsg()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :goto_80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 441
    invoke-static {p1}, Ljy/sdk/common/utils/misc/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string p1, "jy_http"

    const-string v0, "header name is empty, failed to get http header."

    .line 442
    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 446
    :cond_f
    invoke-direct {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHeaderMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1d

    const-string p1, "jy_http"

    const-string v0, "no http header found, null returned."

    .line 447
    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 451
    :cond_1d
    invoke-direct {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHeaderMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getHtml()Ljava/lang/String;
    .registers 2

    .line 187
    sget-object v0, Ljy/sdk/common/utils/http/NafHttp;->DEFAUTL_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljy/sdk/common/utils/http/NafHttp;->getHtml(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtml(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 145
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getResult()[B

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 148
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getResult()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getHttpAccessErrMsg()[B
    .registers 2

    .line 233
    iget-object v0, p0, Ljy/sdk/common/utils/http/NafHttp;->mErrMsg:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Ljy/sdk/common/utils/http/NafHttp;->mErrMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public getHttpAccessStatus()Ljy/sdk/common/utils/http/HttpAccessStatus;
    .registers 2

    .line 99
    iget-object v0, p0, Ljy/sdk/common/utils/http/NafHttp;->mHttpAccessStatus:Ljy/sdk/common/utils/http/HttpAccessStatus;

    return-object v0
.end method

.method public getHttpErrorType()Ljy/sdk/common/utils/http/HttpErrorType;
    .registers 2

    .line 463
    iget-object v0, p0, Ljy/sdk/common/utils/http/NafHttp;->mHttpErrType:Ljy/sdk/common/utils/http/HttpErrorType;

    return-object v0
.end method

.method public getHttpStatus()Ljy/sdk/common/utils/http/HttpStatus;
    .registers 2

    .line 123
    iget-object v0, p0, Ljy/sdk/common/utils/http/NafHttp;->mHttpStatus:Ljy/sdk/common/utils/http/HttpStatus;

    return-object v0
.end method

.method public getPara()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Ljy/sdk/common/utils/http/NafHttp;->mPara:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()[B
    .registers 2

    .line 135
    iget-object v0, p0, Ljy/sdk/common/utils/http/NafHttp;->mResult:[B

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Ljy/sdk/common/utils/http/NafHttp;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isHttpStatusError()Z
    .registers 3

    .line 86
    sget-object v0, Ljy/sdk/common/utils/http/HttpStatus;->OK:Ljy/sdk/common/utils/http/HttpStatus;

    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHttpStatus()Ljy/sdk/common/utils/http/HttpStatus;

    move-result-object v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isNetworkError()Z
    .registers 3

    .line 81
    sget-object v0, Ljy/sdk/common/utils/http/HttpAccessStatus;->Done:Ljy/sdk/common/utils/http/HttpAccessStatus;

    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHttpAccessStatus()Ljy/sdk/common/utils/http/HttpAccessStatus;

    move-result-object v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isSucceed()Z
    .registers 2

    .line 92
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->isNetworkError()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->isHttpStatusError()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public setElapsedTime(J)V
    .registers 3

    .line 115
    iput-wide p1, p0, Ljy/sdk/common/utils/http/NafHttp;->mElapsedTime:J

    return-void
.end method

.method public setHttpAccessErrMsg([B)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 228
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    move-object p1, v0

    :goto_a
    iput-object p1, p0, Ljy/sdk/common/utils/http/NafHttp;->mErrMsg:Ljava/lang/String;

    return-void
.end method

.method public setHttpAccessStatus(Ljy/sdk/common/utils/http/HttpAccessStatus;)V
    .registers 2

    .line 104
    iput-object p1, p0, Ljy/sdk/common/utils/http/NafHttp;->mHttpAccessStatus:Ljy/sdk/common/utils/http/HttpAccessStatus;

    return-void
.end method

.method public setHttpErrorType(Ljy/sdk/common/utils/http/HttpErrorType;)V
    .registers 2

    .line 458
    iput-object p1, p0, Ljy/sdk/common/utils/http/NafHttp;->mHttpErrType:Ljy/sdk/common/utils/http/HttpErrorType;

    return-void
.end method

.method public setHttpStatus(Ljy/sdk/common/utils/http/HttpStatus;)V
    .registers 2

    .line 128
    iput-object p1, p0, Ljy/sdk/common/utils/http/NafHttp;->mHttpStatus:Ljy/sdk/common/utils/http/HttpStatus;

    return-void
.end method

.method public setPara(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Ljy/sdk/common/utils/http/NafHttp;->mPara:Ljava/lang/String;

    return-void
.end method

.method public setResult([B)V
    .registers 2

    .line 140
    iput-object p1, p0, Ljy/sdk/common/utils/http/NafHttp;->mResult:[B

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Ljy/sdk/common/utils/http/NafHttp;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url ["

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\n"

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "para ["

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getPara()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\n"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HttpAccessStatus ["

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHttpAccessStatus()Ljy/sdk/common/utils/http/HttpAccessStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\n"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ElapsedTime ["

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getElapsedTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ms]\r\n"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HttpStatus ["

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHttpStatus()Ljy/sdk/common/utils/http/HttpStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\n"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Html ["

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\n"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HttpAccessErrorMsg ["

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHttpAccessErrMsg()[B

    move-result-object v1

    if-nez v1, :cond_7d

    const-string v1, "null"

    goto :goto_86

    :cond_7d
    new-instance v1, Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/NafHttp;->getHttpAccessErrMsg()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 179
    :goto_86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\n"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
