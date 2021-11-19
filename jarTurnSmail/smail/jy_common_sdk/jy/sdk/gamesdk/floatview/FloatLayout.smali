.class public Ljy/sdk/gamesdk/floatview/FloatLayout;
.super Landroid/widget/FrameLayout;
.source "FloatLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility",
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;,
        Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;
    }
.end annotation


# static fields
.field private static final CLOSE_TIPSVIEW:I = 0xc8

.field private static final FLOAT_ALL:I = 0x64

.field private static final FLOAT_HALF:I = 0x65

.field private static final FLOAT_HIDE:I = 0x66

.field private static FLOAT_STATUS:I = 0x64

.field private static final MSG_HIDE:I = 0x1

.field private static closeTipsListener:Z = true

.field private static isHiding:Z = false

.field private static isLeft:Z = true

.field public static isShowDot:Z = false

.field private static isThreading:Z = false

.field private static mContext:Landroid/content/Context; = null

.field private static mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout; = null

.field private static mFloatView:Landroid/widget/ImageView; = null

.field private static final mHandler:Landroid/os/Handler;

.field private static mRedChot:Landroid/widget/TextView; = null

.field private static mScreenHeight:I = 0x0

.field private static mScreenWidth:I = 0x0

.field private static mWindowManager:Landroid/view/WindowManager; = null

.field private static mWmParams:Landroid/view/WindowManager$LayoutParams; = null

.field private static needListener:Z = true

.field private static tipsTv:Landroid/widget/TextView;


# instance fields
.field private StartX:F

.field private StartY:F

.field private endTime:J

.field private isclick:Z

.field private mCloseTipsView:Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;

.field private mCountTimeThread:Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;

.field private mMoveStartX:F

.field private mMoveStartY:F

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private startTime:J

.field private timeListener:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 529
    new-instance v0, Ljy/sdk/gamesdk/floatview/FloatLayout$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Ljy/sdk/gamesdk/floatview/FloatLayout$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Ljy/sdk/gamesdk/floatview/FloatLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    sput-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    .line 63
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljy/sdk/common/utils/misc/UIUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    sput p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mScreenWidth:I

    .line 64
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljy/sdk/common/utils/misc/UIUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    sput p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mScreenHeight:I

    .line 65
    sput-object p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 38
    iput p2, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->StartX:F

    .line 40
    iput p2, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->StartY:F

    .line 53
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->timeListener:Landroid/os/Handler;

    .line 70
    sput-object p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    const/4 p2, 0x1

    .line 71
    sput-boolean p2, Ljy/sdk/gamesdk/floatview/FloatLayout;->isLeft:Z

    const-string v0, "window"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v1

    const-string v2, "jy_layout_floatview"

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/misc/ResUtils;->getLayoutResByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "float_id"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    .line 76
    invoke-static {p1}, Ljy/sdk/gamesdk/utils/JyImageUtil;->build(Landroid/content/Context;)Ljy/sdk/gamesdk/utils/JyImageUtil;

    move-result-object p1

    sget-object v0, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v0, Ljy/sdk/gamesdk/entity/InitInfo;->logoUrl:Ljava/lang/String;

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljy/sdk/gamesdk/utils/JyImageUtil;->bindBitmap(Ljava/lang/String;Landroid/widget/ImageView;Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;)V

    .line 77
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object p1

    const-string v0, "jy_float_dot"

    invoke-virtual {p1, v0}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/floatview/FloatLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sput-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    .line 79
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object p1

    const-string v0, "jy_float_tips"

    invoke-virtual {p1, v0}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/floatview/FloatLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sput-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->tipsTv:Landroid/widget/TextView;

    .line 80
    sput-boolean p2, Ljy/sdk/gamesdk/floatview/FloatLayout;->needListener:Z

    const/4 p1, 0x0

    .line 81
    sput-boolean p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isHiding:Z

    const/16 p1, 0x64

    .line 82
    sput p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->FLOAT_STATUS:I

    .line 83
    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->startThread()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 28
    sget-boolean v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->closeTipsListener:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 28
    sput-boolean p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->closeTipsListener:Z

    return p0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .line 28
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/widget/TextView;
    .registers 1

    .line 28
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 28
    sget-boolean v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->needListener:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .registers 1

    .line 28
    sput-boolean p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->needListener:Z

    return p0
.end method

.method static synthetic access$200()Landroid/widget/ImageView;
    .registers 1

    .line 28
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 28
    sget-boolean v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->isLeft:Z

    return v0
.end method

.method static synthetic access$400()Landroid/view/WindowManager$LayoutParams;
    .registers 1

    .line 28
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 28
    sget v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$600()Ljy/sdk/gamesdk/floatview/FloatLayout;
    .registers 1

    .line 28
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    return-object v0
.end method

.method static synthetic access$700()Landroid/view/WindowManager;
    .registers 1

    .line 28
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$800()I
    .registers 1

    .line 28
    sget v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->FLOAT_STATUS:I

    return v0
.end method

.method static synthetic access$802(I)I
    .registers 1

    .line 28
    sput p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->FLOAT_STATUS:I

    return p0
.end method

.method static synthetic access$902(Z)Z
    .registers 1

    .line 28
    sput-boolean p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->isHiding:Z

    return p0
.end method

.method public static closeNewtips()V
    .registers 3

    const/4 v0, 0x1

    .line 416
    sput-boolean v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->isShowDot:Z

    .line 417
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->tipsTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    sget-boolean v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->isShowDot:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 419
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1a

    .line 421
    :cond_15
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    :goto_1a
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 424
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 425
    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 427
    sget-boolean v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isLeft:Z

    if-eqz v1, :cond_41

    const v1, 0x800005

    .line 428
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 429
    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4b

    :cond_41
    const v1, 0x800003

    .line 431
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 432
    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    :goto_4b
    sget-boolean v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->isLeft:Z

    if-nez v0, :cond_7f

    .line 435
    sget-boolean v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->isHiding:Z

    if-eqz v0, :cond_6e

    .line 436
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljy/sdk/gamesdk/floatview/DeviceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    .line 437
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_7f

    .line 439
    :cond_6e
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljy/sdk/gamesdk/floatview/DeviceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 444
    :cond_7f
    :goto_7f
    :try_start_7f
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWindowManager:Landroid/view/WindowManager;

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8d
    return-void
.end method

.method private startCloseThread()V
    .registers 3

    .line 473
    new-instance v0, Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;-><init>(Ljy/sdk/gamesdk/floatview/FloatLayout;I)V

    iput-object v0, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mCloseTipsView:Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;

    .line 474
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mCloseTipsView:Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/floatview/FloatLayout$CloseTipsView;->start()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    const/4 v0, 0x1

    .line 97
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xff

    const/16 v5, 0x8

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_25a

    goto/16 :goto_20b

    .line 125
    :pswitch_19
    sput-boolean v6, Ljy/sdk/gamesdk/floatview/FloatLayout;->needListener:Z

    .line 127
    iget-object p1, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mCountTimeThread:Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;->reset()V

    .line 128
    sget-boolean p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isShowDot:Z

    if-nez p1, :cond_29

    .line 129
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :cond_29
    iget p1, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->StartX:F

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v3, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->StartX:F

    sub-float/2addr v3, v1

    mul-float p1, p1, v3

    iget v3, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->StartY:F

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget v5, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->StartY:F

    sub-float/2addr v5, v2

    mul-float v3, v3, v5

    add-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int p1, v7

    .line 133
    sget-object v3, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    if-lt p1, v3, :cond_20b

    .line 134
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mTouchStartX:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 135
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mTouchStartY:F

    sub-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 137
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez p1, :cond_6c

    .line 138
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 140
    :cond_6c
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mScreenWidth:I

    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_84

    .line 141
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mScreenWidth:I

    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 143
    :cond_84
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sget v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mScreenHeight:I

    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_9c

    .line 144
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mScreenHeight:I

    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 146
    :cond_9c
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez p1, :cond_a6

    .line 147
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a6} :catch_254

    .line 150
    :cond_a6
    :try_start_a6
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWindowManager:Landroid/view/WindowManager;

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_af} :catch_b0

    goto :goto_b4

    :catch_b0
    move-exception p1

    .line 152
    :try_start_b1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b4
    return v6

    .line 159
    :pswitch_b5
    sput-boolean v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->needListener:Z

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->endTime:J

    .line 162
    iget-wide v2, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->endTime:J

    iget-wide v7, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->startTime:J

    const/4 p1, 0x0

    sub-long v9, v2, v7

    long-to-double v2, v9

    const-wide/high16 v7, 0x4069000000000000L    # 200.0

    cmpl-double p1, v2, v7

    if-lez p1, :cond_ce

    .line 163
    iput-boolean v6, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->isclick:Z

    goto :goto_d0

    .line 165
    :cond_ce
    iput-boolean v0, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->isclick:Z

    :goto_d0
    int-to-float p1, v1

    .line 167
    iget v1, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mTouchStartX:F

    sub-float/2addr p1, v1

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljy/sdk/gamesdk/floatview/DeviceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_165

    .line 168
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljy/sdk/gamesdk/floatview/DeviceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 169
    sput-boolean v6, Ljy/sdk/gamesdk/floatview/FloatLayout;->isLeft:Z

    .line 171
    sget-boolean p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isShowDot:Z

    if-eqz p1, :cond_15e

    .line 172
    invoke-virtual {p0, v6}, Ljy/sdk/gamesdk/floatview/FloatLayout;->setDragFlagViewVisibility(I)V

    .line 173
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    .line 175
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "99+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x800003

    if-eqz v2, :cond_14b

    .line 178
    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v5, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ljy/sdk/gamesdk/floatview/DeviceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    sget-object v7, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v5, v7

    sget-object v7, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    .line 179
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 180
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 181
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 182
    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_153

    .line 184
    :cond_14b
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 185
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 186
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 188
    :goto_153
    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_161

    .line 191
    :cond_15e
    invoke-virtual {p0, v5}, Ljy/sdk/gamesdk/floatview/FloatLayout;->setDragFlagViewVisibility(I)V

    .line 194
    :goto_161
    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->startThread()V

    goto :goto_1a9

    .line 196
    :cond_165
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 197
    sput-boolean v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->isLeft:Z

    .line 199
    sget-boolean p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isShowDot:Z

    if-eqz p1, :cond_1a3

    .line 200
    invoke-virtual {p0, v6}, Ljy/sdk/gamesdk/floatview/FloatLayout;->setDragFlagViewVisibility(I)V

    .line 201
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 203
    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "99+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_198

    .line 204
    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v1, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_19d

    :cond_198
    const v1, 0x800005

    .line 206
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 208
    :goto_19d
    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a6

    .line 210
    :cond_1a3
    invoke-virtual {p0, v5}, Ljy/sdk/gamesdk/floatview/FloatLayout;->setDragFlagViewVisibility(I)V

    .line 213
    :goto_1a6
    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->startThread()V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_1a9} :catch_254

    .line 216
    :goto_1a9
    :try_start_1a9
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWindowManager:Landroid/view/WindowManager;

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1b0} :catch_1b1

    goto :goto_1b5

    :catch_1b1
    move-exception p1

    .line 218
    :try_start_1b2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1b5
    const/4 p1, 0x0

    .line 220
    iput p1, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mTouchStartY:F

    iput p1, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mTouchStartX:F

    goto :goto_20b

    .line 103
    :pswitch_1bb
    sget-boolean v3, Ljy/sdk/gamesdk/floatview/FloatLayout;->isLeft:Z

    if-eqz v3, :cond_1c4

    .line 104
    sget-object v3, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1d1

    .line 106
    :cond_1c4
    sget-object v3, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget v5, Ljy/sdk/gamesdk/floatview/FloatLayout;->mScreenWidth:I

    sget-object v7, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v5, v7

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1d1} :catch_254

    .line 109
    :goto_1d1
    :try_start_1d1
    sget-object v3, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWindowManager:Landroid/view/WindowManager;

    sget-object v5, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    sget-object v7, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v5, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1da
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1da} :catch_1db

    goto :goto_1df

    :catch_1db
    move-exception v3

    .line 111
    :try_start_1dc
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    :goto_1df
    sget-object v3, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 114
    sget-object v3, Ljy/sdk/gamesdk/floatview/FloatLayout;->tipsTv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1ef

    .line 115
    invoke-static {}, Ljy/sdk/gamesdk/floatview/FloatLayout;->closeNewtips()V

    :cond_1ef
    const/16 v3, 0x64

    .line 117
    sput v3, Ljy/sdk/gamesdk/floatview/FloatLayout;->FLOAT_STATUS:I

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->startTime:J

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mTouchStartX:F

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mTouchStartY:F

    int-to-float p1, v1

    .line 121
    iput p1, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->StartX:F

    int-to-float p1, v2

    .line 122
    iput p1, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->StartY:F

    .line 224
    :cond_20b
    :goto_20b
    iget-boolean p1, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->isclick:Z

    if-eqz p1, :cond_258

    .line 225
    iput-boolean v6, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->isclick:Z

    .line 226
    sget-boolean p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isHiding:Z

    if-eqz p1, :cond_241

    .line 227
    sget-boolean p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isLeft:Z

    if-eqz p1, :cond_21e

    .line 228
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_22b

    .line 230
    :cond_21e
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mScreenWidth:I

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I
    :try_end_22b
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_22b} :catch_254

    .line 233
    :goto_22b
    :try_start_22b
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWindowManager:Landroid/view/WindowManager;

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_22b .. :try_end_234} :catch_235

    goto :goto_239

    :catch_235
    move-exception p1

    .line 235
    :try_start_236
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    :goto_239
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 238
    sput-boolean v6, Ljy/sdk/gamesdk/floatview/FloatLayout;->isHiding:Z

    goto :goto_258

    .line 241
    :cond_241
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    .line 242
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v1

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v3}, Ljy/sdk/gamesdk/api/ApiClient;->sdkGetBuoyCenterUrl(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {p1, v1}, Ljy/sdk/gamesdk/activity/AccountActivity;->showAccountActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_253} :catch_254

    goto :goto_258

    :catch_254
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_258
    :goto_258
    return v0

    nop

    :pswitch_data_25a
    .packed-switch 0x0
        :pswitch_1bb
        :pswitch_b5
        :pswitch_19
    .end packed-switch
.end method

.method public setDragFlagViewText(I)V
    .registers 9

    .line 279
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 280
    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 281
    sget-boolean v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->isLeft:Z

    if-eqz v2, :cond_1a

    const v2, 0x800005

    .line 282
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1f

    :cond_1a
    const v2, 0x800003

    .line 284
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_1f
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_70

    .line 287
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p1, v4}, Ljy/sdk/gamesdk/floatview/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 288
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {p1, v4}, Ljy/sdk/gamesdk/floatview/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 289
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 290
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 292
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v4

    const-string v5, "jy_redcode_round_bg"

    invoke-virtual {v4, v5}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 293
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    sget-boolean p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isHiding:Z

    if-eqz p1, :cond_155

    .line 298
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mScreenWidth:I

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_155

    :cond_70
    const/16 v4, 0x63

    const/high16 v5, 0x41600000    # 14.0f

    if-le p1, v4, :cond_f8

    .line 301
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {p1, v4}, Ljy/sdk/gamesdk/floatview/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 302
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Ljy/sdk/gamesdk/floatview/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 303
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v4

    const-string v5, "jy_redcode_wrapround_bg"

    invoke-virtual {v4, v5}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    sget-boolean p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isLeft:Z

    const/16 v4, 0x14

    if-eqz p1, :cond_ae

    .line 306
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 307
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_b4

    .line 309
    :cond_ae
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 310
    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 312
    :goto_b4
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    const-string v0, "99+"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    sget-boolean p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isHiding:Z

    if-eqz p1, :cond_e5

    .line 316
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljy/sdk/gamesdk/floatview/DeviceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    .line 317
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, v4

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_155

    .line 319
    :cond_e5
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljy/sdk/gamesdk/floatview/DeviceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_155

    .line 323
    :cond_f8
    sget-object v4, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Ljy/sdk/gamesdk/floatview/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 324
    sget-object v4, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Ljy/sdk/gamesdk/floatview/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 325
    sget-object v4, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v5

    const-string v6, "jy_redcode_round_bg"

    invoke-virtual {v5, v6}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 327
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 328
    sget-object v4, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    sget-boolean p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isHiding:Z

    if-eqz p1, :cond_144

    .line 333
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mScreenWidth:I

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_155

    .line 336
    :cond_144
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljy/sdk/gamesdk/floatview/DeviceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 339
    :cond_155
    :goto_155
    sget-boolean p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isLeft:Z

    if-eqz p1, :cond_16e

    .line 340
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 341
    sget-boolean p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isHiding:Z

    if-eqz p1, :cond_16e

    .line 342
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 347
    :cond_16e
    :try_start_16e
    sget-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWindowManager:Landroid/view/WindowManager;

    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    sget p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->FLOAT_STATUS:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_183

    .line 349
    sput-boolean v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->needListener:Z

    .line 350
    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->startThread()V

    goto :goto_18a

    .line 352
    :cond_183
    sput-boolean v3, Ljy/sdk/gamesdk/floatview/FloatLayout;->needListener:Z
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_185} :catch_186

    goto :goto_18a

    :catch_186
    move-exception p1

    .line 357
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_18a
    return-void
.end method

.method public setDragFlagViewVisibility(I)V
    .registers 3

    .line 266
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->postInvalidate()V

    if-nez p1, :cond_e

    const/4 p1, 0x1

    .line 269
    sput-boolean p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isShowDot:Z

    goto :goto_11

    :cond_e
    const/4 p1, 0x0

    .line 271
    sput-boolean p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->isShowDot:Z

    :goto_11
    return-void
.end method

.method public setParams(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2

    .line 259
    sput-object p1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public showNewtips()V
    .registers 6

    .line 365
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->tipsTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 366
    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 367
    sget-boolean v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->isLeft:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4f

    .line 368
    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v2, v4}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 369
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 371
    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->tipsTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->tipsTv:Landroid/widget/TextView;

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v1

    const-string v2, "jy_floatwindow_tips_left"

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawableResIDByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 375
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800005

    .line 376
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 377
    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c6

    .line 380
    :cond_4f
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 381
    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v2, v4}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 383
    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->tipsTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->tipsTv:Landroid/widget/TextView;

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v1

    const-string v2, "jy_floatwindow_tips_right"

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawableResIDByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 387
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800003

    .line 388
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 389
    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    sget-boolean v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->isHiding:Z

    if-eqz v0, :cond_ae

    .line 391
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljy/sdk/gamesdk/floatview/DeviceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    .line 392
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_c6

    .line 394
    :cond_ae
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljy/sdk/gamesdk/floatview/DeviceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 399
    :goto_c6
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mRedChot:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->tipsTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    :try_start_d2
    sget-object v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWindowManager:Landroid/view/WindowManager;

    sget-object v1, Ljy/sdk/gamesdk/floatview/FloatLayout;->mFloatLayout:Ljy/sdk/gamesdk/floatview/FloatLayout;

    sget-object v2, Ljy/sdk/gamesdk/floatview/FloatLayout;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_db} :catch_dc

    goto :goto_e0

    :catch_dc
    move-exception v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e0
    const/4 v0, 0x1

    .line 407
    sput-boolean v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->closeTipsListener:Z

    .line 408
    invoke-direct {p0}, Ljy/sdk/gamesdk/floatview/FloatLayout;->startCloseThread()V

    return-void
.end method

.method public startThread()V
    .registers 3

    .line 457
    :try_start_0
    sget-boolean v0, Ljy/sdk/gamesdk/floatview/FloatLayout;->needListener:Z

    if-eqz v0, :cond_12

    .line 458
    new-instance v0, Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;-><init>(Ljy/sdk/gamesdk/floatview/FloatLayout;I)V

    iput-object v0, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mCountTimeThread:Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;

    .line 459
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mCountTimeThread:Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;->start()V

    goto :goto_1c

    .line 461
    :cond_12
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/FloatLayout;->mCountTimeThread:Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/floatview/FloatLayout$CountTimeThread;->stop()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    .line 464
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1c
    return-void
.end method
