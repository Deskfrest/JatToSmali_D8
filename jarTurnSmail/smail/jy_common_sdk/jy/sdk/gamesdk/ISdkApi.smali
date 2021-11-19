.class public interface abstract Ljy/sdk/gamesdk/ISdkApi;
.super Ljava/lang/Object;
.source "ISdkApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;,
        Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;,
        Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;
    }
.end annotation


# virtual methods
.method public abstract exit(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IDialogListener;)V
.end method

.method public abstract initInApplication(Landroid/app/Application;)V
.end method

.method public abstract initSdk(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;)V
.end method

.method public abstract login(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;)V
.end method

.method public abstract logout(Landroid/app/Activity;Z)V
.end method

.method public abstract pay(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;)V
.end method

.method public abstract submitData(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyUserExtraData;)V
.end method
