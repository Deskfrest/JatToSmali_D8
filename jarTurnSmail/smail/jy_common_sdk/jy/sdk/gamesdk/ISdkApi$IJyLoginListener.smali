.class public interface abstract Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;
.super Ljava/lang/Object;
.source "ISdkApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/ISdkApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IJyLoginListener"
.end annotation


# static fields
.field public static final TYPE_APP_TOKEN:Ljava/lang/String; = "\u6e38\u620f\u4e2d\u5fc3App"

.field public static final TYPE_FAST_REG:Ljava/lang/String; = "fast"

.field public static final TYPE_PHONE_REG:Ljava/lang/String; = "phone"

.field public static final TYPE_USERNAME_REG:Ljava/lang/String; = "account"


# virtual methods
.method public abstract onLoginFailed(Ljava/lang/String;)V
.end method

.method public abstract onLoginSuc(Ljava/lang/String;)V
.end method

.method public abstract onLogout(Z)V
.end method

.method public abstract onReg(Ljava/lang/String;)V
.end method
