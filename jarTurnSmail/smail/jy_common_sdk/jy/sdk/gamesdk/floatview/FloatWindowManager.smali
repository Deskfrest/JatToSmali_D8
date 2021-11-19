.class public Ljy/sdk/gamesdk/floatview/FloatWindowManager;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final FLOATWINDOW_HIDE:I = 0x0

.field private static final FLOATWINDOW_REMOVE:I = 0x5

.field private static final FLOATWINDOW_SHOW:I = 0x1

.field private static final HIDE_DOT:I = 0x3

.field private static final SET_DOT_NUMBER:I = 0x4

.field private static final SHOW_DOT:I = 0x2

.field private static final TIPS_STATUS:I = 0x6

.field private static mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

.field private static mHandler:Landroid/os/Handler;

.field private static mHasShown:Z

.field private static mWindowManager:Landroid/view/WindowManager;

.field private static wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Ljy/sdk/gamesdk/floatview/FloatWindowManager$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljy/sdk/gamesdk/floatview/FloatLayout;
    .registers 1

    .line 19
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    return-object v0
.end method

.method static synthetic access$100()Landroid/view/WindowManager;
    .registers 1

    .line 19
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$200()Landroid/view/WindowManager$LayoutParams;
    .registers 1

    .line 19
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public static addObtainNumer(Landroid/content/Context;I)V
    .registers 3

    .line 211
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x2

    .line 212
    iput v0, p0, Landroid/os/Message;->what:I

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static checkRedDot(I)V
    .registers 2

    .line 180
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-lez p0, :cond_e

    .line 184
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->setDragFlagViewVisibility(I)V

    goto :goto_15

    .line 186
    :cond_e
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->setDragFlagViewVisibility(I)V

    :goto_15
    return-void
.end method

.method public static checkRedDot(II)V
    .registers 3

    .line 195
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-lez p1, :cond_15

    if-lez p0, :cond_15

    .line 199
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->setDragFlagViewVisibility(I)V

    .line 200
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/floatview/FloatLayout;->setDragFlagViewText(I)V

    goto :goto_1c

    .line 202
    :cond_15
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/floatview/FloatLayout;->setDragFlagViewVisibility(I)V

    :goto_1c
    return-void
.end method

.method public static createFloatWindow(Landroid/content/Context;)V
    .registers 4

    .line 95
    sget-boolean v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHasShown:Z

    if-eqz v0, :cond_5

    return-void

    .line 97
    :cond_5
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 98
    invoke-static {p0}, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    .line 99
    new-instance v1, Ljy/sdk/gamesdk/floatview/FloatLayout;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/floatview/FloatLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    .line 100
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 116
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 119
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x228

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 122
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x800033

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 124
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 126
    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 128
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 129
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x12c

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 132
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 133
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 134
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v2}, Ljy/sdk/gamesdk/floatview/FloatLayout;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 136
    :try_start_57
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    :goto_63
    sput-boolean v1, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHasShown:Z

    return-void
.end method

.method private static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .registers 2

    .line 169
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_c

    .line 170
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    sput-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 174
    :cond_c
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static hasShowFloatView()Z
    .registers 1

    .line 86
    sget-boolean v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHasShown:Z

    return v0
.end method

.method public static hide()V
    .registers 2

    .line 237
    sget-boolean v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHasShown:Z

    if-eqz v0, :cond_b

    .line 240
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_b
    const/4 v0, 0x0

    .line 242
    sput-boolean v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHasShown:Z

    return-void
.end method

.method public static removeFloatWindowManager()V
    .registers 2

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_d

    .line 157
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->isAttachedToWindow()Z

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x1

    .line 159
    :goto_e
    sget-boolean v1, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHasShown:Z

    if-eqz v1, :cond_1e

    if-eqz v0, :cond_1e

    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1e

    .line 161
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1e
    return-void
.end method

.method public static setObtainNumber(Landroid/content/Context;I)V
    .registers 2

    .line 225
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static show()V
    .registers 2

    .line 246
    sget-boolean v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHasShown:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 248
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    :cond_a
    sput-boolean v1, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHasShown:Z

    return-void
.end method

.method public static showNewsTips(I)V
    .registers 3

    .line 260
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x6

    .line 261
    iput v1, v0, Landroid/os/Message;->what:I

    if-lez p0, :cond_12

    const/4 p0, 0x1

    .line 263
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_19

    :cond_12
    const/4 p0, 0x0

    .line 265
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    :goto_19
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static updataRedAndDialog(Landroid/content/Context;)V
    .registers 2

    .line 232
    sget-object p0, Ljy/sdk/gamesdk/floatview/FloatWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
