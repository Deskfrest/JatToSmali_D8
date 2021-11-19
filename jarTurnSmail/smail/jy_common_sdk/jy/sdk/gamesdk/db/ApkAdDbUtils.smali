.class public Ljy/sdk/gamesdk/db/ApkAdDbUtils;
.super Ljava/lang/Object;
.source "ApkAdDbUtils.java"


# static fields
.field public static DB_NAME:Ljava/lang/String; = "apkad.db"

.field public static TABLE_NAME:Ljava/lang/String; = "apkad"

.field private static helper:Ljy/sdk/gamesdk/db/DataDbHelper;

.field private static volatile instance:Ljy/sdk/gamesdk/db/ApkAdDbUtils;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->helper:Ljy/sdk/gamesdk/db/DataDbHelper;

    if-nez v0, :cond_15

    .line 29
    new-instance v0, Ljy/sdk/gamesdk/db/DataDbHelper;

    sget-object v1, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->mContext:Landroid/content/Context;

    sget-object v2, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->DB_NAME:Ljava/lang/String;

    sget-object v3, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->TABLE_NAME:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljy/sdk/gamesdk/db/DataDbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->helper:Ljy/sdk/gamesdk/db/DataDbHelper;

    :cond_15
    return-void
.end method

.method public static getInstance()Ljy/sdk/gamesdk/db/ApkAdDbUtils;
    .registers 2

    .line 38
    sget-object v0, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->instance:Ljy/sdk/gamesdk/db/ApkAdDbUtils;

    if-nez v0, :cond_17

    .line 39
    const-class v0, Ljy/sdk/gamesdk/db/ApkAdDbUtils;

    monitor-enter v0

    .line 40
    :try_start_7
    sget-object v1, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->instance:Ljy/sdk/gamesdk/db/ApkAdDbUtils;

    if-nez v1, :cond_12

    .line 41
    new-instance v1, Ljy/sdk/gamesdk/db/ApkAdDbUtils;

    invoke-direct {v1}, Ljy/sdk/gamesdk/db/ApkAdDbUtils;-><init>()V

    sput-object v1, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->instance:Ljy/sdk/gamesdk/db/ApkAdDbUtils;

    .line 43
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 45
    :cond_17
    :goto_17
    sget-object v0, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->instance:Ljy/sdk/gamesdk/db/ApkAdDbUtils;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addData(Ljy/sdk/gamesdk/entity/DataInfo;)V
    .registers 6

    .line 82
    :try_start_0
    sget-object v0, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->helper:Ljy/sdk/gamesdk/db/DataDbHelper;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/db/DataDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "moduleId"

    .line 84
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getModuleId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "optCode"

    .line 85
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getOptCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "extend1"

    .line 86
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getExtend1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extend2"

    .line 87
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getExtend2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extend3"

    .line 88
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getExtend3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extend4"

    .line 89
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getExtend4()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extend5"

    .line 90
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getExtend5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extend6"

    .line 91
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getExtend6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extend7"

    .line 92
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getExtend7()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extend8"

    .line 93
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getExtend8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extend9"

    .line 94
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getExtend9()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extend10"

    .line 95
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getExtend10()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v2, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->TABLE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v0, "jy_sdk"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert dataInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getModuleId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getOptCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ae} :catch_af

    goto :goto_b3

    :catch_af
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b3
    return-void
.end method

.method public delete(Ljy/sdk/gamesdk/entity/DataInfo;)V
    .registers 9

    .line 105
    :try_start_0
    sget-object v0, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->helper:Ljy/sdk/gamesdk/db/DataDbHelper;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/db/DataDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 106
    sget-object v1, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->TABLE_NAME:Ljava/lang/String;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v0, "jy_sdk"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete dataInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getModuleId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/DataInfo;->getOptCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_56
    return-void
.end method

.method public queryData()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljy/sdk/gamesdk/entity/DataInfo;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    :try_start_5
    sget-object v1, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->helper:Ljy/sdk/gamesdk/db/DataDbHelper;

    invoke-virtual {v1}, Ljy/sdk/gamesdk/db/DataDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 53
    sget-object v3, Ljy/sdk/gamesdk/db/ApkAdDbUtils;->TABLE_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 55
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 57
    :cond_1d
    new-instance v2, Ljy/sdk/gamesdk/entity/DataInfo;

    invoke-direct {v2}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>()V

    const-string v3, "_id"

    .line 58
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/DataInfo;->setId(I)V

    const-string v3, "moduleId"

    .line 59
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/DataInfo;->setModuleId(I)V

    const-string v3, "optCode"

    .line 60
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/DataInfo;->setOptCode(I)V

    const-string v3, "extend1"

    .line 61
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/DataInfo;->setExtend1(Ljava/lang/String;)V

    const-string v3, "extend2"

    .line 62
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/DataInfo;->setExtend2(Ljava/lang/String;)V

    const-string v3, "extend3"

    .line 63
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/DataInfo;->setExtend3(Ljava/lang/String;)V

    const-string v3, "extend4"

    .line 64
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/DataInfo;->setExtend4(Ljava/lang/String;)V

    const-string v3, "extend5"

    .line 65
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/DataInfo;->setExtend5(Ljava/lang/String;)V

    const-string v3, "extend6"

    .line 66
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/DataInfo;->setExtend6(Ljava/lang/String;)V

    const-string v3, "extend7"

    .line 67
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/DataInfo;->setExtend7(Ljava/lang/String;)V

    const-string v3, "extend8"

    .line 68
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/DataInfo;->setExtend8(Ljava/lang/String;)V

    const-string v3, "extend9"

    .line 69
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/DataInfo;->setExtend9(Ljava/lang/String;)V

    const-string v3, "extend10"

    .line 70
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/DataInfo;->setExtend10(Ljava/lang/String;)V

    .line 71
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d2} :catch_d5

    if-nez v2, :cond_1d

    goto :goto_d9

    :catch_d5
    move-exception v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d9
    :goto_d9
    return-object v0
.end method
