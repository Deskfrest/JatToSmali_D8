.class public interface abstract Ljy/sdk/common/utils/http/IHttp;
.super Ljava/lang/Object;
.source "IHttp.java"


# virtual methods
.method public abstract access()V
.end method

.method public abstract access(Ljy/sdk/common/utils/http/HttpCtx;)V
.end method

.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getElapsedTime()J
.end method

.method public abstract getErrorStr()Ljava/lang/String;
.end method

.method public abstract getHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHtml()Ljava/lang/String;
.end method

.method public abstract getHtml(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract getHttpAccessErrMsg()[B
.end method

.method public abstract getHttpAccessStatus()Ljy/sdk/common/utils/http/HttpAccessStatus;
.end method

.method public abstract getHttpErrorType()Ljy/sdk/common/utils/http/HttpErrorType;
.end method

.method public abstract getHttpStatus()Ljy/sdk/common/utils/http/HttpStatus;
.end method

.method public abstract getPara()Ljava/lang/String;
.end method

.method public abstract getResult()[B
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract isHttpStatusError()Z
.end method

.method public abstract isNetworkError()Z
.end method

.method public abstract isSucceed()Z
.end method

.method public abstract setElapsedTime(J)V
.end method

.method public abstract setHttpAccessErrMsg([B)V
.end method

.method public abstract setHttpAccessStatus(Ljy/sdk/common/utils/http/HttpAccessStatus;)V
.end method

.method public abstract setHttpErrorType(Ljy/sdk/common/utils/http/HttpErrorType;)V
.end method

.method public abstract setHttpStatus(Ljy/sdk/common/utils/http/HttpStatus;)V
.end method

.method public abstract setPara(Ljava/lang/String;)V
.end method

.method public abstract setResult([B)V
.end method

.method public abstract setUrl(Ljava/lang/String;)V
.end method
