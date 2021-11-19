.class public Ljy/sdk/common/api/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    .line 29
    :try_start_2
    new-instance v1, Ljy/sdk/common/utils/http/NafHttp;

    invoke-direct {v1, p0, p1}, Ljy/sdk/common/utils/http/NafHttp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v2, Ljy/sdk/common/utils/http/HttpCtx;

    invoke-direct {v2}, Ljy/sdk/common/utils/http/HttpCtx;-><init>()V

    .line 31
    sget-object v3, Ljy/sdk/common/utils/http/HttpMode;->Get:Ljy/sdk/common/utils/http/HttpMode;

    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/http/HttpCtx;->setHttpMode(Ljy/sdk/common/utils/http/HttpMode;)V

    const/16 v3, 0x3a98

    .line 32
    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/http/HttpCtx;->setReadTimeout(I)V

    .line 33
    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/http/HttpCtx;->setTimeout(I)V

    const-string v3, "jy_http"

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u51c6\u5907\u8bbf\u95ee:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->access(Ljy/sdk/common/utils/http/HttpCtx;)V

    .line 37
    invoke-virtual {v1}, Ljy/sdk/common/utils/http/NafHttp;->isSucceed()Z

    move-result p0

    if-eqz p0, :cond_5d

    .line 38
    invoke-virtual {v1}, Ljy/sdk/common/utils/http/NafHttp;->getHtml()Ljava/lang/String;

    move-result-object p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_7d

    :try_start_44
    const-string p1, "jy_http"

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbf\u95ee\u6210\u529f  \u8fd4\u56de\u5185\u5bb9:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5a} :catch_5b

    goto :goto_84

    :catch_5b
    move-exception p1

    goto :goto_7f

    :cond_5d
    :try_start_5d
    const-string p0, "jy_http"

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbf\u95ee\u5931\u8d25"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljy/sdk/common/utils/http/NafHttp;->getHttpStatus()Ljy/sdk/common/utils/http/HttpStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljy/sdk/common/utils/http/HttpStatus;->getCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_7b} :catch_7d

    move-object p0, v0

    goto :goto_84

    :catch_7d
    move-exception p1

    move-object p0, v0

    :goto_7f
    const-string v0, "jy_http"

    .line 44
    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_84
    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 57
    invoke-static {p1}, Ljy/sdk/common/api/HttpRequest;->prepareurl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljy/sdk/common/api/HttpRequest;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static map2Json(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    :try_start_5
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_27

    goto :goto_d

    :catch_27
    move-exception p0

    const-string v1, "jy_http"

    .line 147
    invoke-static {v1, p0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :cond_2d
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    .line 108
    :try_start_2
    new-instance v1, Ljy/sdk/common/utils/http/NafHttp;

    invoke-direct {v1, p0, p1}, Ljy/sdk/common/utils/http/NafHttp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v2, Ljy/sdk/common/utils/http/HttpCtx;

    invoke-direct {v2}, Ljy/sdk/common/utils/http/HttpCtx;-><init>()V

    .line 110
    sget-object v3, Ljy/sdk/common/utils/http/HttpMode;->Post:Ljy/sdk/common/utils/http/HttpMode;

    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/http/HttpCtx;->setHttpMode(Ljy/sdk/common/utils/http/HttpMode;)V

    const/16 v3, 0x3a98

    .line 111
    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/http/HttpCtx;->setTimeout(I)V

    .line 112
    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/http/HttpCtx;->setReadTimeout(I)V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    .line 113
    invoke-virtual {v1, v3, v4}, Ljy/sdk/common/utils/http/NafHttp;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_46

    .line 115
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljy/sdk/common/utils/http/NafHttp;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :cond_46
    const-string p2, "jy_http"

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u51c6\u5907\u8bbf\u95ee:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/http/NafHttp;->access(Ljy/sdk/common/utils/http/HttpCtx;)V

    .line 121
    invoke-virtual {v1}, Ljy/sdk/common/utils/http/NafHttp;->isSucceed()Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 122
    invoke-virtual {v1}, Ljy/sdk/common/utils/http/NafHttp;->getHtml()Ljava/lang/String;

    move-result-object p1
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_71} :catch_c8

    :try_start_71
    const-string p2, "jy_http"

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u8fd4\u56de\u5185\u5bb9:\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8a} :catch_8b

    goto :goto_cf

    :catch_8b
    move-exception p0

    goto :goto_ca

    :cond_8d
    :try_start_8d
    const-string p1, "jy_http"

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u8bbf\u95ee\u5931\u8d25 "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljy/sdk/common/utils/http/NafHttp;->getHttpStatus()Ljy/sdk/common/utils/http/HttpStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljy/sdk/common/utils/http/HttpStatus;->getCode()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "httpCode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljy/sdk/common/utils/http/NafHttp;->getHttpStatus()Ljy/sdk/common/utils/http/HttpStatus;

    move-result-object p1

    invoke-virtual {p1}, Ljy/sdk/common/utils/http/HttpStatus;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_c7} :catch_c8

    goto :goto_cf

    :catch_c8
    move-exception p0

    move-object p1, v0

    :goto_ca
    const-string p2, "jy_http"

    .line 130
    invoke-static {p2, p0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_cf
    return-object p1
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 73
    invoke-static {p1}, Ljy/sdk/common/api/HttpRequest;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljy/sdk/common/api/HttpRequest;->post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 83
    invoke-static {p1}, Ljy/sdk/common/api/HttpRequest;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Ljy/sdk/common/api/HttpRequest;->post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static prepareurl(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_46

    .line 156
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 160
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_46
    const/4 p0, 0x0

    return-object p0
.end method
