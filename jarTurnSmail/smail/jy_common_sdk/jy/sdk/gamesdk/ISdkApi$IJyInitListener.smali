.class public interface abstract Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;
.super Ljava/lang/Object;
.source "ISdkApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/ISdkApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IJyInitListener"
.end annotation


# virtual methods
.method public abstract initFailed(Ljava/lang/String;)V
.end method

.method public abstract initSuc(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
