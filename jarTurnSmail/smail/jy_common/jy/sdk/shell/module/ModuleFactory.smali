.class public Ljy/sdk/shell/module/ModuleFactory;
.super Ljava/lang/Object;
.source "ModuleFactory.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field static channelModule:Ljy/sdk/shell/module/ICommonInterface;

.field private static volatile instance:Ljy/sdk/shell/module/ModuleFactory;

.field private static supportedModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljy/sdk/shell/module/ModuleFactory;->supportedModules:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Ljy/sdk/shell/module/ModuleFactory;
    .registers 2

    .line 30
    sget-object v0, Ljy/sdk/shell/module/ModuleFactory;->instance:Ljy/sdk/shell/module/ModuleFactory;

    if-nez v0, :cond_17

    .line 31
    const-class v0, Ljy/sdk/shell/module/ModuleFactory;

    monitor-enter v0

    .line 32
    :try_start_7
    sget-object v1, Ljy/sdk/shell/module/ModuleFactory;->instance:Ljy/sdk/shell/module/ModuleFactory;

    if-nez v1, :cond_12

    .line 33
    new-instance v1, Ljy/sdk/shell/module/ModuleFactory;

    invoke-direct {v1}, Ljy/sdk/shell/module/ModuleFactory;-><init>()V

    sput-object v1, Ljy/sdk/shell/module/ModuleFactory;->instance:Ljy/sdk/shell/module/ModuleFactory;

    .line 35
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 37
    :cond_17
    :goto_17
    sget-object v0, Ljy/sdk/shell/module/ModuleFactory;->instance:Ljy/sdk/shell/module/ModuleFactory;

    return-object v0
.end method

.method private getModuleName(I)Ljava/lang/String;
    .registers 4

    .line 50
    sget-object v0, Ljy/sdk/shell/module/ModuleFactory;->supportedModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 51
    sget-object v0, Ljy/sdk/shell/module/ModuleFactory;->supportedModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method private isSupportModule(I)Z
    .registers 3

    .line 46
    sget-object v0, Ljy/sdk/shell/module/ModuleFactory;->supportedModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private loadModule(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljy/sdk/shell/module/IModule;",
            ">(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "jy_sdk"

    const-string v1, "rf new Module"

    .line 66
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 69
    :try_start_8
    invoke-direct {p0, p1}, Ljy/sdk/shell/module/ModuleFactory;->isSupportModule(I)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "jy_sdk"

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The config of the sdk is not support module typeCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 74
    :cond_25
    invoke-direct {p0, p1}, Ljy/sdk/shell/module/ModuleFactory;->getModuleName(I)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string p1, "jy_sdk"

    const-string v1, "the module type is exist ,but the name is not find in list"

    .line 76
    invoke-static {p1, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 80
    :cond_37
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 83
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy/sdk/shell/module/IModule;

    .line 84
    invoke-interface {v1, p1}, Ljy/sdk/shell/module/IModule;->setModuleName(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4d} :catch_4e

    return-object v1

    :catch_4e
    move-exception p1

    const-string v1, "jy_sdk"

    .line 87
    invoke-static {v1, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private loadModuleInfo(Landroid/content/Context;)V
    .registers 5

    const-string v0, "jy_userlmp"

    .line 107
    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/ManifestUtil;->getMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 109
    sget-object v0, Ljy/sdk/shell/module/ModuleFactory;->supportedModules:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "jy_sdk"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cur Supported Module type: 1, name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_2d
    const-string p1, "jy_sdk"

    const-string v0, "meta jy_userlmp has not declare in manifest ? "

    .line 112
    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    return-void
.end method


# virtual methods
.method public getChannelModule(Landroid/content/Context;)Ljy/sdk/shell/module/ICommonInterface;
    .registers 3

    .line 98
    sget-object v0, Ljy/sdk/shell/module/ModuleFactory;->supportedModules:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 99
    invoke-direct {p0, p1}, Ljy/sdk/shell/module/ModuleFactory;->loadModuleInfo(Landroid/content/Context;)V

    .line 100
    :cond_b
    sget-object p1, Ljy/sdk/shell/module/ModuleFactory;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    if-nez p1, :cond_1c

    .line 101
    invoke-static {}, Ljy/sdk/shell/module/ModuleFactory;->getInstance()Ljy/sdk/shell/module/ModuleFactory;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljy/sdk/shell/module/ModuleFactory;->loadModule(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljy/sdk/shell/module/ICommonInterface;

    sput-object p1, Ljy/sdk/shell/module/ModuleFactory;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    .line 103
    :cond_1c
    sget-object p1, Ljy/sdk/shell/module/ModuleFactory;->channelModule:Ljy/sdk/shell/module/ICommonInterface;

    return-object p1
.end method
