.class public Ljy/sdk/gamesdk/floatview/DraggableFlagView;
.super Landroid/view/View;
.source "DraggableFlagView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;,
        Ljy/sdk/gamesdk/floatview/DraggableFlagView$OnDraggableFlagViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DraggableFlagView"


# instance fields
.field private context:Landroid/content/Context;

.field private curRadius:I

.field downX:F

.field downY:F

.field private endPoint:Landroid/graphics/Point;

.field private isArrivedMaxMoved:Z

.field private isFirst:Z

.field private isTouched:Z

.field private location:[I

.field private maxMoveLength:I

.field newLp:Landroid/widget/FrameLayout$LayoutParams;

.field private onDraggableFlagViewListener:Ljy/sdk/gamesdk/floatview/DraggableFlagView$OnDraggableFlagViewListener;

.field private originHeight:I

.field originLp:Landroid/widget/FrameLayout$LayoutParams;

.field private originRadius:I

.field private originWidth:I

.field private paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field private patientColor:I

.field private startPoint:Landroid/graphics/Point;

.field private text:Ljava/lang/String;

.field private textFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private textPaint:Landroid/text/TextPaint;

.field private triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x10000

    .line 48
    iput v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->patientColor:I

    .line 79
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->startPoint:Landroid/graphics/Point;

    .line 80
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->endPoint:Landroid/graphics/Point;

    .line 90
    new-instance v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;-><init>(Ljy/sdk/gamesdk/floatview/DraggableFlagView;)V

    iput-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    const-string v0, ""

    .line 92
    iput-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->text:Ljava/lang/String;

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->isFirst:Z

    .line 168
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->path:Landroid/graphics/Path;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 241
    iput v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->downX:F

    .line 242
    iput v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->downY:F

    .line 45
    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x10000

    .line 48
    iput p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->patientColor:I

    .line 79
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->startPoint:Landroid/graphics/Point;

    .line 80
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->endPoint:Landroid/graphics/Point;

    .line 90
    new-instance p2, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    invoke-direct {p2, p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;-><init>(Ljy/sdk/gamesdk/floatview/DraggableFlagView;)V

    iput-object p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    const-string p2, ""

    .line 92
    iput-object p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->text:Ljava/lang/String;

    const/4 p2, 0x1

    .line 117
    iput-boolean p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->isFirst:Z

    .line 168
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->path:Landroid/graphics/Path;

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 241
    iput p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->downX:F

    .line 242
    iput p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->downY:F

    .line 62
    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x10000

    .line 48
    iput p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->patientColor:I

    .line 79
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->startPoint:Landroid/graphics/Point;

    .line 80
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->endPoint:Landroid/graphics/Point;

    .line 90
    new-instance p2, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    invoke-direct {p2, p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;-><init>(Ljy/sdk/gamesdk/floatview/DraggableFlagView;)V

    iput-object p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    const-string p2, ""

    .line 92
    iput-object p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->text:Ljava/lang/String;

    const/4 p2, 0x1

    .line 117
    iput-boolean p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->isFirst:Z

    .line 168
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->path:Landroid/graphics/Path;

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 241
    iput p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->downX:F

    .line 242
    iput p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->downY:F

    .line 67
    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Ljy/sdk/gamesdk/floatview/DraggableFlagView;I)I
    .registers 2

    .line 27
    iput p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    return p1
.end method

.method private changeViewHeight(Landroid/view/View;II)V
    .registers 5

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_8

    .line 339
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originLp:Landroid/widget/FrameLayout$LayoutParams;

    .line 341
    :cond_8
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 342
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 343
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 95
    iput-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->setBackgroundColor(I)V

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->paint:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->patientColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->textPaint:Landroid/text/TextPaint;

    .line 106
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 107
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->textPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 108
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {p1, v1}, Ljy/sdk/gamesdk/floatview/DensityUtil;->sp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 109
    iget-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->textPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 110
    iget-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->textFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-void
.end method

.method private refreshCurRadiusByMoveDistance(I)V
    .registers 4

    .line 319
    iget v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->maxMoveLength:I

    const/4 v1, 0x0

    if-le p1, v0, :cond_b

    const/4 p1, 0x1

    .line 320
    iput-boolean p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->isArrivedMaxMoved:Z

    .line 321
    iput v1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    goto :goto_2c

    .line 323
    :cond_b
    iput-boolean v1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->isArrivedMaxMoved:Z

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    .line 324
    iget v1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->maxMoveLength:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    iget p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originRadius:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    .line 325
    iget-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->context:Landroid/content/Context;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Ljy/sdk/gamesdk/floatview/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    .line 326
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    :goto_2c
    return-void
.end method

.method private refreshStartPoint()V
    .registers 5

    const/4 v0, 0x2

    .line 155
    new-array v0, v0, [I

    iput-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->location:[I

    .line 156
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->location:[I

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->getLocationInWindow([I)V

    const/4 v0, 0x1

    .line 159
    :try_start_b
    iget-object v1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->location:[I

    iget-object v2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->location:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Ljy/sdk/gamesdk/floatview/DeviceUtil;->getTopBarHeight(Landroid/app/Activity;)I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v1, v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    :goto_21
    iget-object v1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->startPoint:Landroid/graphics/Point;

    iget-object v2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->location:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->location:[I

    aget v0, v3, v0

    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private resetAfterDismiss()V
    .registers 2

    const/16 v0, 0x8

    .line 308
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->setVisibility(I)V

    const-string v0, ""

    .line 309
    iput-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->isArrivedMaxMoved:Z

    .line 311
    iget v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originRadius:I

    iput v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    .line 312
    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->postInvalidate()V

    return-void
.end method

.method private startRollBackAnimation(J)V
    .registers 6

    const/4 v0, 0x2

    .line 350
    new-array v0, v0, [F

    iget v1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originRadius:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 351
    new-instance v1, Ljy/sdk/gamesdk/floatview/DraggableFlagView$1;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView$1;-><init>(Ljy/sdk/gamesdk/floatview/DraggableFlagView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 359
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 360
    new-instance v1, Ljy/sdk/gamesdk/floatview/DraggableFlagView$2;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView$2;-><init>(Ljy/sdk/gamesdk/floatview/DraggableFlagView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 367
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 368
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 2

    .line 391
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 172
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x0

    .line 173
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 176
    iget-boolean v2, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->isTouched:Z

    if-eqz v2, :cond_f6

    .line 178
    iget-object v2, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->startPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v4, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    add-int/2addr v2, v4

    .line 179
    iget-object v4, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->startPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    sub-int/2addr v4, v5

    int-to-float v5, v2

    int-to-float v6, v4

    .line 181
    iget v7, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    int-to-float v7, v7

    iget-object v8, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 183
    iget-object v5, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->endPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 184
    iget-object v6, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->endPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v7, v5

    int-to-float v8, v6

    .line 185
    iget v9, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originRadius:I

    int-to-float v9, v9

    iget-object v10, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 187
    iget-boolean v9, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->isArrivedMaxMoved:Z

    if-nez v9, :cond_d8

    .line 188
    iget-object v9, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->path:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 189
    iget-object v9, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    iget-wide v9, v9, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->deltaY:D

    iget-object v11, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    iget-wide v11, v11, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->hypotenuse:D

    div-double/2addr v9, v11

    .line 190
    iget-object v11, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    iget-wide v11, v11, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->deltaX:D

    iget-object v13, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    iget-wide v13, v13, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->hypotenuse:D

    div-double/2addr v11, v13

    .line 193
    iget-object v13, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->path:Landroid/graphics/Path;

    int-to-double v14, v2

    iget v3, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    move/from16 v16, v7

    move/from16 v17, v8

    int-to-double v7, v3

    mul-double v7, v7, v9

    sub-double v7, v14, v7

    double-to-float v3, v7

    int-to-double v7, v4

    iget v1, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    move/from16 v18, v2

    int-to-double v1, v1

    mul-double v1, v1, v11

    sub-double v1, v7, v1

    double-to-float v1, v1

    invoke-virtual {v13, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 198
    iget-object v1, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->path:Landroid/graphics/Path;

    iget v2, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    int-to-double v2, v2

    mul-double v2, v2, v9

    add-double/2addr v2, v14

    double-to-float v2, v2

    iget v3, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    move-wide/from16 v19, v14

    int-to-double v13, v3

    mul-double v13, v13, v11

    add-double/2addr v13, v7

    double-to-float v3, v13

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 203
    iget-object v1, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->path:Landroid/graphics/Path;

    add-int v2, v18, v5

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    int-to-float v3, v4

    int-to-double v4, v5

    iget v13, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originRadius:I

    int-to-double v13, v13

    mul-double v13, v13, v9

    add-double/2addr v13, v4

    double-to-float v13, v13

    int-to-double v14, v6

    iget v6, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originRadius:I

    move-wide/from16 v21, v7

    int-to-double v6, v6

    mul-double v6, v6, v11

    add-double/2addr v6, v14

    double-to-float v6, v6

    invoke-virtual {v1, v2, v3, v13, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 208
    iget-object v1, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->path:Landroid/graphics/Path;

    iget v6, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originRadius:I

    int-to-double v6, v6

    mul-double v6, v6, v9

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iget v5, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originRadius:I

    int-to-double v5, v5

    mul-double v5, v5, v11

    sub-double/2addr v14, v5

    double-to-float v5, v14

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 213
    iget-object v1, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->path:Landroid/graphics/Path;

    iget v4, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    int-to-double v4, v4

    mul-double v4, v4, v9

    sub-double v14, v19, v4

    double-to-float v4, v14

    iget v5, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    int-to-double v5, v5

    mul-double v5, v5, v11

    sub-double v7, v21, v5

    double-to-float v5, v7

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 217
    iget-object v1, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->path:Landroid/graphics/Path;

    iget-object v2, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->paint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_dd

    :cond_d8
    move-object v3, v1

    move/from16 v16, v7

    move/from16 v17, v8

    .line 221
    :goto_dd
    iget-object v1, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->textFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iget-object v2, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->textFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v2

    .line 222
    iget-object v2, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->text:Ljava/lang/String;

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    add-float v8, v17, v1

    iget-object v1, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->textPaint:Landroid/text/TextPaint;

    move/from16 v4, v16

    invoke-virtual {v3, v2, v4, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_127

    :cond_f6
    move-object v3, v1

    .line 226
    iget v1, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    if-lez v1, :cond_127

    .line 227
    iget v1, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    .line 228
    iget v2, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originHeight:I

    iget v4, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    sub-int/2addr v2, v4

    int-to-float v1, v1

    int-to-float v2, v2

    .line 229
    iget v4, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    int-to-float v4, v4

    iget-object v5, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 230
    iget v4, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    iget v5, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originRadius:I

    if-ne v4, v5, :cond_127

    .line 232
    iget-object v4, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->textFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v4, v4

    iget-object v5, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->textFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v4, v5

    .line 233
    iget-object v5, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->text:Ljava/lang/String;

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v2, v4

    iget-object v4, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v5, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_127
    :goto_127
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 123
    iget-boolean p3, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->isFirst:Z

    if-eqz p3, :cond_4f

    if-lez p1, :cond_4f

    if-lez p2, :cond_4f

    const/4 p3, 0x0

    .line 124
    iput-boolean p3, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->isFirst:Z

    .line 126
    iput p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originWidth:I

    .line 127
    iput p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originHeight:I

    .line 129
    iget p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originWidth:I

    iget p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originRadius:I

    .line 130
    iget p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originRadius:I

    iput p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->curRadius:I

    .line 132
    iget-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->context:Landroid/content/Context;

    invoke-static {p1}, Ljy/sdk/gamesdk/floatview/DeviceUtil;->getDeviceHeight(Landroid/content/Context;)I

    move-result p1

    div-int/lit8 p1, p1, 0xf

    iput p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->maxMoveLength:I

    .line 134
    invoke-direct {p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->refreshStartPoint()V

    .line 136
    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 137
    const-class p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 138
    move-object p2, p1

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originLp:Landroid/widget/FrameLayout$LayoutParams;

    .line 140
    :cond_44
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p2, p3, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object p2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->newLp:Landroid/widget/FrameLayout$LayoutParams;

    :cond_4f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 246
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_dc

    goto/16 :goto_db

    .line 266
    :pswitch_e
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v3, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->downX:F

    sub-float/2addr v1, v3

    float-to-double v3, v1

    iput-wide v3, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->deltaX:D

    .line 267
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->downY:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v1

    float-to-double v3, v3

    iput-wide v3, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->deltaY:D

    .line 268
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    iget-wide v0, v0, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->deltaX:D

    iget-object v3, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    iget-wide v3, v3, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->deltaX:D

    mul-double v0, v0, v3

    iget-object v3, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    iget-wide v3, v3, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->deltaY:D

    iget-object v5, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    iget-wide v5, v5, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->deltaY:D

    mul-double v3, v3, v5

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 269
    iget-object v3, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->triangle:Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;

    iput-wide v0, v3, Ljy/sdk/gamesdk/floatview/DraggableFlagView$Triangle;->hypotenuse:D

    double-to-int v0, v0

    .line 271
    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->refreshCurRadiusByMoveDistance(I)V

    .line 273
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->endPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 274
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->endPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 276
    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->postInvalidate()V

    goto/16 :goto_db

    .line 280
    :pswitch_62
    iput-boolean v1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->isTouched:Z

    .line 281
    iget-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originLp:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-boolean p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->isArrivedMaxMoved:Z

    if-eqz p1, :cond_84

    .line 284
    iget p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originWidth:I

    iget v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originHeight:I

    invoke-direct {p0, p0, p1, v0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->changeViewHeight(Landroid/view/View;II)V

    .line 285
    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->postInvalidate()V

    .line 286
    iget-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->onDraggableFlagViewListener:Ljy/sdk/gamesdk/floatview/DraggableFlagView$OnDraggableFlagViewListener;

    if-eqz p1, :cond_80

    .line 287
    iget-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->onDraggableFlagViewListener:Ljy/sdk/gamesdk/floatview/DraggableFlagView$OnDraggableFlagViewListener;

    invoke-interface {p1, p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView$OnDraggableFlagViewListener;->onFlagDismiss(Ljy/sdk/gamesdk/floatview/DraggableFlagView;)V

    .line 290
    :cond_80
    invoke-direct {p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->resetAfterDismiss()V

    goto :goto_90

    .line 292
    :cond_84
    iget p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originWidth:I

    iget v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->originHeight:I

    invoke-direct {p0, p0, p1, v0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->changeViewHeight(Landroid/view/View;II)V

    const-wide/16 v0, 0x1f4

    .line 293
    invoke-direct {p0, v0, v1}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->startRollBackAnimation(J)V

    :goto_90
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 296
    iput p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->downX:F

    .line 297
    iput p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->downY:F

    goto :goto_db

    .line 250
    :pswitch_98
    iput-boolean v2, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->isTouched:Z

    .line 251
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->newLp:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->endPoint:Landroid/graphics/Point;

    iget v3, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->downX:F

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 253
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->endPoint:Landroid/graphics/Point;

    iget v3, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->downY:F

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 256
    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->context:Landroid/content/Context;

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v0, v3}, Ljy/sdk/gamesdk/floatview/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v3, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->context:Landroid/content/Context;

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v3, v4}, Ljy/sdk/gamesdk/floatview/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {p0, p0, v0, v3}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->changeViewHeight(Landroid/view/View;II)V

    .line 257
    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->postInvalidate()V

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->location:[I

    aget v1, v3, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->downX:F

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->location:[I

    aget v0, v0, v2

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->downY:F

    :goto_db
    return v2

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_98
        :pswitch_62
        :pswitch_e
    .end packed-switch
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 147
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-direct {p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->refreshStartPoint()V

    return-void
.end method

.method public setOnDraggableFlagViewListener(Ljy/sdk/gamesdk/floatview/DraggableFlagView$OnDraggableFlagViewListener;)V
    .registers 2

    .line 40
    iput-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->onDraggableFlagViewListener:Ljy/sdk/gamesdk/floatview/DraggableFlagView$OnDraggableFlagViewListener;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 395
    iput-object p1, p0, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 396
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->setVisibility(I)V

    .line 397
    invoke-virtual {p0}, Ljy/sdk/gamesdk/floatview/DraggableFlagView;->postInvalidate()V

    return-void
.end method
