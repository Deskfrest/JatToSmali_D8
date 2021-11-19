.class public interface abstract Ljy/sdk/shell/module/ICommonInterface;
.super Ljava/lang/Object;
.source "ICommonInterface.java"

# interfaces
.implements Ljy/sdk/shell/module/IModule;


# static fields
.field public static final MODULE_TYPE:I = 0x1


# virtual methods
.method public abstract exit(Landroid/app/Activity;)V
.end method

.method public abstract initModule(Landroid/app/Activity;Ljy/sdk/shell/callback/ISdkListener;)V
.end method

.method public abstract login(Landroid/app/Activity;)V
.end method

.method public abstract logout(Landroid/app/Activity;Z)V
.end method

.method public abstract pay(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyPayParams;)V
.end method

.method public abstract submitData(Landroid/app/Activity;Ljy/sdk/shell/proxy/JyUserExtraData;)V
.end method
