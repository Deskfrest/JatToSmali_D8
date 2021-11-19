.class public Ljy/sdk/gamesdk/widget/NoticeMarqueeView;
.super Landroid/widget/TextView;
.source "NoticeMarqueeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/gamesdk/widget/NoticeMarqueeView$OncompleteListener;
    }
.end annotation


# static fields
.field public static final LEFT_TO_RIGHT:I = 0x0

.field public static final RIGHT_TO_LEFT:I = 0x1

.field public static final SCROLL_FAST:I = 0x2

.field public static final SCROLL_NORM:I = 0x1

.field public static final SCROLL_SLOW:I = 0x0

.field public static final TAG:Ljava/lang/String; = "NoticeMarqueeView"

.field public static isShowing:Z = false

.field private static layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private static noticeMarqueeView:Ljy/sdk/gamesdk/widget/NoticeMarqueeView;


# instance fields
.field private bg_color:Ljava/lang/String;

.field private circleTimes:I

.field public direction:I

.field private hasCircled:I

.field private isMeasured:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mStep:F

.field private offX:F

.field private oncompleteListener:Ljy/sdk/gamesdk/widget/NoticeMarqueeView$OncompleteListener;

.field paint:Landroid/graphics/Paint;

.field private text:Ljava/lang/String;

.field private textLength:F

.field private viewAndTextWidth:F

.field private viewWidth:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 242
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 41
    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->direction:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->offX:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 50
    iput v1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->mStep:F

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->mPaint:Landroid/graphics/Paint;

    .line 59
    iput v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->textLength:F

    .line 63
    iput v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->viewWidth:F

    .line 67
    iput v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->y:F

    .line 71
    iput v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->viewAndTextWidth:F

    const-string p1, ""

    .line 75
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->text:Ljava/lang/String;

    const/4 p1, 0x3

    .line 78
    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->circleTimes:I

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->hasCircled:I

    const-string v0, "#000000"

    .line 88
    iput-object v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->bg_color:Ljava/lang/String;

    .line 169
    iput-boolean p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->isMeasured:Z

    .line 84
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->initView()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, p2, v0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->initView()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 41
    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->direction:I

    const/4 p2, 0x0

    .line 46
    iput p2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->offX:F

    const/high16 p3, 0x40000000    # 2.0f

    .line 50
    iput p3, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->mStep:F

    .line 54
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->mPaint:Landroid/graphics/Paint;

    .line 59
    iput p2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->textLength:F

    .line 63
    iput p2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->viewWidth:F

    .line 67
    iput p2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->y:F

    .line 71
    iput p2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->viewAndTextWidth:F

    const-string p1, ""

    .line 75
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->text:Ljava/lang/String;

    const/4 p1, 0x3

    .line 78
    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->circleTimes:I

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->hasCircled:I

    const-string p2, "#000000"

    .line 88
    iput-object p2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->bg_color:Ljava/lang/String;

    .line 169
    iput-boolean p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->isMeasured:Z

    .line 142
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->initView()V

    return-void
.end method

.method private getDrawable(IIIF)Landroid/graphics/drawable/GradientDrawable;
    .registers 6

    .line 127
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 128
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 129
    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 130
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 p1, 0x32

    .line 131
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    return-object v0
.end method

.method private getStateBar()I
    .registers 5

    .line 119
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_19

    .line 121
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1b

    :cond_19
    const/16 v0, 0xa

    :goto_1b
    return v0
.end method

.method private initView()V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->setLines(I)V

    .line 92
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 93
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 94
    iget-object v2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->bg_color:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->bg_color:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    int-to-float v4, v1

    invoke-direct {p0, v2, v3, v0, v4}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->getDrawable(IIIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    div-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, v1, v0, v1, v0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->setPadding(IIII)V

    .line 96
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->initWindowParams()V

    return-void
.end method

.method private initWindowParams()V
    .registers 5

    .line 100
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 101
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljy/sdk/common/utils/misc/UIUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x7

    .line 102
    div-int/lit8 v1, v1, 0x8

    .line 103
    sget-object v2, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 104
    sget-object v2, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x28

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 105
    sget-object v2, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 106
    sget-object v2, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 107
    sget-object v2, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 108
    sget-object v2, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 109
    sget-object v2, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    sub-int/2addr v0, v1

    div-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 110
    sget-object v0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 111
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljy/sdk/common/utils/misc/UIUtil;->isOritationVertical(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 112
    sget-object v0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->getStateBar()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_5b
    return-void
.end method

.method public static remove(Landroid/app/Activity;)V
    .registers 3

    .line 277
    sget-object v0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->noticeMarqueeView:Ljy/sdk/gamesdk/widget/NoticeMarqueeView;

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 279
    :try_start_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    sget-object v1, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->noticeMarqueeView:Ljy/sdk/gamesdk/widget/NoticeMarqueeView;

    invoke-interface {p0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 281
    sput-object v0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->noticeMarqueeView:Ljy/sdk/gamesdk/widget/NoticeMarqueeView;

    const/4 p0, 0x0

    .line 282
    sput-boolean p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->isShowing:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception p0

    .line 284
    sput-object v0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->noticeMarqueeView:Ljy/sdk/gamesdk/widget/NoticeMarqueeView;

    .line 285
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private scrollText(Ljava/lang/String;Ljy/sdk/gamesdk/widget/NoticeMarqueeView$OncompleteListener;)V
    .registers 5

    .line 155
    iput-object p2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->oncompleteListener:Ljy/sdk/gamesdk/widget/NoticeMarqueeView$OncompleteListener;

    .line 156
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->text:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    iput-object p2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->mPaint:Landroid/graphics/Paint;

    .line 158
    iget-object p2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->mPaint:Landroid/graphics/Paint;

    const-string v0, "#FFD1A3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object p2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->sp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    iget-object p2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->textLength:F

    return-void
.end method

.method private setScrollDirection(I)V
    .registers 2

    .line 240
    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->direction:I

    return-void
.end method

.method private setScrollMode(I)V
    .registers 3

    if-nez p1, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    .line 226
    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->mStep:F

    goto :goto_13

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    const/high16 p1, 0x40000000    # 2.0f

    .line 228
    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->mStep:F

    goto :goto_13

    :cond_f
    const/high16 p1, 0x40400000    # 3.0f

    .line 230
    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->mStep:F

    :goto_13
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 5

    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 252
    :cond_7
    sget-boolean v0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->isShowing:Z

    if-eqz v0, :cond_13

    const-string p0, "jy_sdk"

    const-string p1, "last MARQUEE is still exist"

    .line 253
    invoke-static {p0, p1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_13
    new-instance v0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->noticeMarqueeView:Ljy/sdk/gamesdk/widget/NoticeMarqueeView;

    .line 259
    sget-object v0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->noticeMarqueeView:Ljy/sdk/gamesdk/widget/NoticeMarqueeView;

    new-instance v1, Ljy/sdk/gamesdk/widget/NoticeMarqueeView$1;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, p1, v1}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->scrollText(Ljava/lang/String;Ljy/sdk/gamesdk/widget/NoticeMarqueeView$OncompleteListener;)V

    .line 266
    :try_start_24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    sget-object p1, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->noticeMarqueeView:Ljy/sdk/gamesdk/widget/NoticeMarqueeView;

    sget-object v0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p0, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x1

    .line 267
    sput-boolean p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->isShowing:Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_32} :catch_33

    goto :goto_3d

    :catch_33
    move-exception p0

    const/4 p1, 0x0

    .line 269
    sput-boolean p1, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->isShowing:Z

    const/4 p1, 0x0

    .line 270
    sput-object p1, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->noticeMarqueeView:Ljy/sdk/gamesdk/widget/NoticeMarqueeView;

    .line 271
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    :goto_3d
    sget-object p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->noticeMarqueeView:Ljy/sdk/gamesdk/widget/NoticeMarqueeView;

    invoke-virtual {p0, p2}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 172
    iget-boolean v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->isMeasured:Z

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x1

    if-nez v0, :cond_28

    .line 173
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->viewWidth:F

    .line 175
    iget v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->viewWidth:F

    iget v3, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->textLength:F

    add-float/2addr v0, v3

    iput v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->viewAndTextWidth:F

    .line 177
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->getTextSize()F

    move-result v0

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    iput v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->y:F

    .line 179
    iget v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->viewWidth:F

    div-float/2addr v0, v1

    iput v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->offX:F

    .line 180
    iput-boolean v2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->isMeasured:Z

    .line 182
    :cond_28
    iget v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->direction:I

    if-ne v0, v2, :cond_5d

    .line 184
    iget v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->offX:F

    iget v3, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->viewAndTextWidth:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_43

    .line 188
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->text:Ljava/lang/String;

    iget v1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->viewWidth:F

    iget v2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->offX:F

    sub-float/2addr v1, v2

    iget v2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->y:F

    iget-object v3, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8e

    .line 190
    :cond_43
    iget p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->viewWidth:F

    div-float/2addr p1, v1

    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->offX:F

    .line 191
    iget p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->hasCircled:I

    add-int/2addr p1, v2

    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->hasCircled:I

    .line 192
    iget p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->hasCircled:I

    iget v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->circleTimes:I

    if-lt p1, v0, :cond_8e

    iget-object p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->oncompleteListener:Ljy/sdk/gamesdk/widget/NoticeMarqueeView$OncompleteListener;

    if-eqz p1, :cond_8e

    .line 193
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->oncompleteListener:Ljy/sdk/gamesdk/widget/NoticeMarqueeView$OncompleteListener;

    invoke-interface {p1}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView$OncompleteListener;->onComplete()V

    goto :goto_8e

    .line 198
    :cond_5d
    iget v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->offX:F

    iget v3, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->viewAndTextWidth:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_75

    .line 202
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->text:Ljava/lang/String;

    iget v1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->textLength:F

    neg-float v1, v1

    iget v2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->offX:F

    add-float/2addr v1, v2

    iget v2, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->y:F

    iget-object v3, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8e

    .line 204
    :cond_75
    iget p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->viewWidth:F

    div-float/2addr p1, v1

    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->offX:F

    .line 205
    iget p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->hasCircled:I

    add-int/2addr p1, v2

    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->hasCircled:I

    .line 206
    iget p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->hasCircled:I

    iget v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->circleTimes:I

    if-lt p1, v0, :cond_8e

    iget-object p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->oncompleteListener:Ljy/sdk/gamesdk/widget/NoticeMarqueeView$OncompleteListener;

    if-eqz p1, :cond_8e

    .line 207
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->oncompleteListener:Ljy/sdk/gamesdk/widget/NoticeMarqueeView$OncompleteListener;

    invoke-interface {p1}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView$OncompleteListener;->onComplete()V

    .line 213
    :cond_8e
    :goto_8e
    iget p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->offX:F

    iget v0, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->mStep:F

    add-float/2addr p1, v0

    iput p1, p0, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->offX:F

    .line 216
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 165
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method
