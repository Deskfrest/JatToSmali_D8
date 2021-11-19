.class public Ljy/sdk/common/utils/misc/ResUtils;
.super Ljava/lang/Object;
.source "ResUtils.java"


# static fields
.field private static ctx:Landroid/content/Context;

.field private static volatile mInstance:Ljy/sdk/common/utils/misc/ResUtils;


# instance fields
.field sTempValue:Landroid/util/TypedValue;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Ljy/sdk/common/utils/misc/ResUtils;->sTempValue:Landroid/util/TypedValue;

    return-void
.end method

.method public static getInstance()Ljy/sdk/common/utils/misc/ResUtils;
    .registers 2

    .line 34
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->mInstance:Ljy/sdk/common/utils/misc/ResUtils;

    if-nez v0, :cond_17

    .line 35
    const-class v0, Ljy/sdk/common/utils/misc/ResUtils;

    monitor-enter v0

    .line 36
    :try_start_7
    sget-object v1, Ljy/sdk/common/utils/misc/ResUtils;->mInstance:Ljy/sdk/common/utils/misc/ResUtils;

    if-nez v1, :cond_12

    .line 37
    new-instance v1, Ljy/sdk/common/utils/misc/ResUtils;

    invoke-direct {v1}, Ljy/sdk/common/utils/misc/ResUtils;-><init>()V

    sput-object v1, Ljy/sdk/common/utils/misc/ResUtils;->mInstance:Ljy/sdk/common/utils/misc/ResUtils;

    .line 39
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 41
    :cond_17
    :goto_17
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->mInstance:Ljy/sdk/common/utils/misc/ResUtils;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAnimResIDByName(Ljava/lang/String;)I
    .registers 5

    .line 74
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "anim"

    sget-object v2, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getArrayResIDByName(Ljava/lang/String;)I
    .registers 5

    .line 78
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "array"

    sget-object v2, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAttrResIDByName(Ljava/lang/String;)I
    .registers 5

    .line 66
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "attr"

    sget-object v2, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getColor(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_f

    .line 184
    invoke-virtual {p0, p2}, Ljy/sdk/common/utils/misc/ResUtils;->getColorResIDByName(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    return p1

    .line 186
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p2}, Ljy/sdk/common/utils/misc/ResUtils;->getColorResIDByName(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getColorResIDByName(Ljava/lang/String;)I
    .registers 5

    .line 62
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    sget-object v2, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getDimenResIDByName(Ljava/lang/String;)I
    .registers 5

    .line 83
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    sget-object v2, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 160
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    .line 161
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_50

    .line 162
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1e

    .line 163
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_50

    .line 166
    :cond_1e
    const-class v0, Ljy/sdk/common/utils/misc/ResUtils;

    monitor-enter v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_4b

    .line 167
    :try_start_21
    iget-object v1, p0, Ljy/sdk/common/utils/misc/ResUtils;->sTempValue:Landroid/util/TypedValue;

    if-nez v1, :cond_2c

    .line 168
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Ljy/sdk/common/utils/misc/ResUtils;->sTempValue:Landroid/util/TypedValue;

    .line 170
    :cond_2c
    sget-object v1, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Ljy/sdk/common/utils/misc/ResUtils;->sTempValue:Landroid/util/TypedValue;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 171
    iget-object p1, p0, Ljy/sdk/common/utils/misc/ResUtils;->sTempValue:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    .line 172
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_48

    .line 173
    :try_start_3d
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_47} :catch_4b

    goto :goto_50

    :catchall_48
    move-exception p1

    .line 172
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw p1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4b} :catch_4b

    :catch_4b
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_50
    return-object p1
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 127
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    .line 128
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawableResIDByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_6b

    .line 129
    :cond_15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2e

    .line 130
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawableResIDByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_6b

    .line 133
    :cond_2e
    const-class v0, Ljy/sdk/common/utils/misc/ResUtils;

    monitor-enter v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_63

    .line 134
    :try_start_31
    iget-object v1, p0, Ljy/sdk/common/utils/misc/ResUtils;->sTempValue:Landroid/util/TypedValue;

    if-nez v1, :cond_3c

    .line 135
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Ljy/sdk/common/utils/misc/ResUtils;->sTempValue:Landroid/util/TypedValue;

    .line 137
    :cond_3c
    sget-object v1, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawableResIDByName(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Ljy/sdk/common/utils/misc/ResUtils;->sTempValue:Landroid/util/TypedValue;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 138
    iget-object p1, p0, Ljy/sdk/common/utils/misc/ResUtils;->sTempValue:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    .line 139
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_31 .. :try_end_55} :catchall_60

    .line 140
    :try_start_55
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5f} :catch_63

    goto :goto_6b

    :catchall_60
    move-exception p1

    .line 139
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    :try_start_62
    throw p1
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_63} :catch_63

    :catch_63
    const-string p1, "jy_sdk"

    const-string v0, " getDrawable error~"

    .line 143
    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_6b
    return-object p1
.end method

.method public getDrawableResIDByName(Ljava/lang/String;)I
    .registers 5

    .line 58
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    sget-object v2, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getIdResByName(Ljava/lang/String;)I
    .registers 5

    .line 45
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    sget-object v2, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLayoutResByName(Ljava/lang/String;)I
    .registers 5

    .line 53
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "layout"

    sget-object v2, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getStringResByName(Ljava/lang/String;)I
    .registers 5

    .line 49
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    sget-object v2, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getStyleResIDByName(Ljava/lang/String;)I
    .registers 5

    .line 70
    sget-object v0, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "style"

    sget-object v2, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final getStyleableIntArray(Ljava/lang/String;)[I
    .registers 5

    const/4 v0, 0x0

    .line 89
    :try_start_1
    sget-object v1, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    if-nez v1, :cond_6

    return-object v0

    .line 91
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".R$styleable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2b} :catch_2c

    return-object p1

    :catch_2c
    move-exception p1

    const-string v1, "jy_utils"

    .line 95
    invoke-static {v1, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getStyleableIntArrayIndex(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 102
    :try_start_1
    sget-object v1, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    if-nez v1, :cond_6

    return v0

    .line 104
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljy/sdk/common/utils/misc/ResUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".R$styleable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_30} :catch_31

    return p1

    :catch_31
    move-exception p1

    const-string v1, "jy_utils"

    .line 108
    invoke-static {v1, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
