.class public interface abstract Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;
.super Ljava/lang/Object;
.source "ISdkApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/ISdkApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IJyPayListener"
.end annotation


# virtual methods
.method public abstract onPayFail(Ljava/lang/String;)V
.end method

.method public abstract onPayQuery(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPaySuc(Ljava/lang/String;)V
.end method
