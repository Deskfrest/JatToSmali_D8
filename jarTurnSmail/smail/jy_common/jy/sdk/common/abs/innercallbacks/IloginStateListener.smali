.class public interface abstract Ljy/sdk/common/abs/innercallbacks/IloginStateListener;
.super Ljava/lang/Object;
.source "IloginStateListener.java"


# virtual methods
.method public abstract onLoginFailed(Ljava/lang/String;)V
.end method

.method public abstract onLoginSuc(Ljava/util/Map;Ljy/sdk/common/abs/innercallbacks/INotifyListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljy/sdk/common/abs/innercallbacks/INotifyListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onLogout(Z)V
.end method
