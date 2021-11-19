.class public Ljy/sdk/gamesdk/db/UserDbUtils;
.super Ljava/lang/Object;
.source "UserDbUtils.java"


# static fields
.field private static helper:Ljy/sdk/gamesdk/db/UserDbHelper;

.field private static volatile instance:Ljy/sdk/gamesdk/db/UserDbUtils;

.field private static mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Ljy/sdk/gamesdk/db/UserDbUtils;->helper:Ljy/sdk/gamesdk/db/UserDbHelper;

    if-nez v0, :cond_10

    .line 23
    new-instance v0, Ljy/sdk/gamesdk/db/UserDbHelper;

    sget-object v1, Ljy/sdk/gamesdk/db/UserDbUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljy/sdk/gamesdk/db/UserDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljy/sdk/gamesdk/db/UserDbUtils;->helper:Ljy/sdk/gamesdk/db/UserDbHelper;

    :cond_10
    return-void
.end method

.method public static getInstance()Ljy/sdk/gamesdk/db/UserDbUtils;
    .registers 2

    .line 32
    sget-object v0, Ljy/sdk/gamesdk/db/UserDbUtils;->instance:Ljy/sdk/gamesdk/db/UserDbUtils;

    if-nez v0, :cond_17

    .line 33
    const-class v0, Ljy/sdk/gamesdk/db/UserDbUtils;

    monitor-enter v0

    .line 34
    :try_start_7
    sget-object v1, Ljy/sdk/gamesdk/db/UserDbUtils;->instance:Ljy/sdk/gamesdk/db/UserDbUtils;

    if-nez v1, :cond_12

    .line 35
    new-instance v1, Ljy/sdk/gamesdk/db/UserDbUtils;

    invoke-direct {v1}, Ljy/sdk/gamesdk/db/UserDbUtils;-><init>()V

    sput-object v1, Ljy/sdk/gamesdk/db/UserDbUtils;->instance:Ljy/sdk/gamesdk/db/UserDbUtils;

    .line 37
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 39
    :cond_17
    :goto_17
    sget-object v0, Ljy/sdk/gamesdk/db/UserDbUtils;->instance:Ljy/sdk/gamesdk/db/UserDbUtils;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Ljy/sdk/gamesdk/db/UserDbUtils;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addUser(Ljy/sdk/gamesdk/entity/UserInfo;)V
    .registers 6

    .line 101
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/UserInfo;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_41

    .line 105
    :cond_15
    :try_start_15
    sget-object v0, Ljy/sdk/gamesdk/db/UserDbUtils;->helper:Ljy/sdk/gamesdk/db/UserDbHelper;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/db/UserDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 106
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "username"

    .line 107
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "password"

    .line 108
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/UserInfo;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "users"

    const/4 v2, 0x0

    .line 109
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_40
    return-void

    :cond_41
    :goto_41
    return-void
.end method

.method public deteleByUserName(Ljava/lang/String;)V
    .registers 7

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 120
    :cond_7
    :try_start_7
    sget-object v0, Ljy/sdk/gamesdk/db/UserDbUtils;->helper:Ljy/sdk/gamesdk/db/UserDbHelper;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/db/UserDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    const-string v2, "username=?"

    const/4 v3, 0x1

    .line 121
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_22
    return-void
.end method

.method public queryByUsername(Ljava/lang/String;)Z
    .registers 12

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 69
    :cond_8
    :try_start_8
    sget-object v0, Ljy/sdk/gamesdk/db/UserDbUtils;->helper:Ljy/sdk/gamesdk/db/UserDbHelper;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/db/UserDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "users"

    const/4 v4, 0x0

    const-string v5, "username=?"

    const/4 v0, 0x1

    .line 70
    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 71
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 74
    :cond_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_2d

    if-nez v2, :cond_25

    return v0

    :cond_2c
    return v1

    :catch_2d
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public queryUser()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljy/sdk/gamesdk/entity/UserInfo;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    :try_start_5
    sget-object v1, Ljy/sdk/gamesdk/db/UserDbUtils;->helper:Ljy/sdk/gamesdk/db/UserDbHelper;

    invoke-virtual {v1}, Ljy/sdk/gamesdk/db/UserDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "users"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 46
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 48
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 50
    :cond_1d
    new-instance v2, Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-direct {v2}, Ljy/sdk/gamesdk/entity/UserInfo;-><init>()V

    const-string v3, "_id"

    .line 51
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/UserInfo;->setId(I)V

    const-string v3, "username"

    .line 52
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    const-string v3, "password"

    .line 53
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/UserInfo;->setPassword(Ljava/lang/String;)V

    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_50} :catch_53

    if-nez v2, :cond_1d

    goto :goto_57

    :catch_53
    move-exception v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_57
    :goto_57
    return-object v0
.end method

.method public updateUserPass(Ljy/sdk/gamesdk/entity/UserInfo;)V
    .registers 8

    .line 85
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 89
    :cond_b
    :try_start_b
    sget-object v0, Ljy/sdk/gamesdk/db/UserDbUtils;->helper:Ljy/sdk/gamesdk/db/UserDbHelper;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/db/UserDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "password"

    .line 91
    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/UserInfo;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "users"

    const-string v3, "username=?"

    const/4 v4, 0x1

    .line 92
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_38
    return-void
.end method
