.class public Ljy/sdk/gamesdk/widget/CountDownTimerButton;
.super Landroid/widget/Button;
.source "CountDownTimerButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private afterTimeDown:Ljava/lang/String;

.field private befforTimeDown:Ljava/lang/String;

.field private current_duration:J

.field private duration:J

.field private mHandler:Landroid/os/Handler;

.field private pressColor:Ljava/lang/String;

.field private startTimeDown:Ljava/lang/String;

.field private startTimeDownColor:Ljava/lang/String;

.field private unpressColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-wide/32 v0, 0xea60

    .line 27
    iput-wide v0, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->duration:J

    const-string p1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    .line 32
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->befforTimeDown:Ljava/lang/String;

    const-string p1, "\u540e\u91cd\u65b0\u83b7\u53d6"

    .line 35
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->startTimeDown:Ljava/lang/String;

    const-string p1, "\u91cd\u65b0\u83b7\u53d6"

    .line 39
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->afterTimeDown:Ljava/lang/String;

    const-string p1, "#fff8f8f8"

    .line 42
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->unpressColor:Ljava/lang/String;

    const-string p1, "#ff32c3e9"

    .line 44
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->pressColor:Ljava/lang/String;

    const-string p1, "#00ffffff"

    .line 47
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->startTimeDownColor:Ljava/lang/String;

    .line 110
    new-instance p1, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;

    invoke-direct {p1, p0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;-><init>(Ljy/sdk/gamesdk/widget/CountDownTimerButton;)V

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->mHandler:Landroid/os/Handler;

    .line 52
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/32 p1, 0xea60

    .line 27
    iput-wide p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->duration:J

    const-string p1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    .line 32
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->befforTimeDown:Ljava/lang/String;

    const-string p1, "\u540e\u91cd\u65b0\u83b7\u53d6"

    .line 35
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->startTimeDown:Ljava/lang/String;

    const-string p1, "\u91cd\u65b0\u83b7\u53d6"

    .line 39
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->afterTimeDown:Ljava/lang/String;

    const-string p1, "#fff8f8f8"

    .line 42
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->unpressColor:Ljava/lang/String;

    const-string p1, "#ff32c3e9"

    .line 44
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->pressColor:Ljava/lang/String;

    const-string p1, "#00ffffff"

    .line 47
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->startTimeDownColor:Ljava/lang/String;

    .line 110
    new-instance p1, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;

    invoke-direct {p1, p0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;-><init>(Ljy/sdk/gamesdk/widget/CountDownTimerButton;)V

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/32 p1, 0xea60

    .line 27
    iput-wide p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->duration:J

    const-string p1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    .line 32
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->befforTimeDown:Ljava/lang/String;

    const-string p1, "\u540e\u91cd\u65b0\u83b7\u53d6"

    .line 35
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->startTimeDown:Ljava/lang/String;

    const-string p1, "\u91cd\u65b0\u83b7\u53d6"

    .line 39
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->afterTimeDown:Ljava/lang/String;

    const-string p1, "#fff8f8f8"

    .line 42
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->unpressColor:Ljava/lang/String;

    const-string p1, "#ff32c3e9"

    .line 44
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->pressColor:Ljava/lang/String;

    const-string p1, "#00ffffff"

    .line 47
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->startTimeDownColor:Ljava/lang/String;

    .line 110
    new-instance p1, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;

    invoke-direct {p1, p0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton$1;-><init>(Ljy/sdk/gamesdk/widget/CountDownTimerButton;)V

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->init()V

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/widget/CountDownTimerButton;)J
    .registers 3

    .line 24
    iget-wide v0, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->current_duration:J

    return-wide v0
.end method

.method static synthetic access$002(Ljy/sdk/gamesdk/widget/CountDownTimerButton;J)J
    .registers 3

    .line 24
    iput-wide p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->current_duration:J

    return-wide p1
.end method

.method static synthetic access$100(Ljy/sdk/gamesdk/widget/CountDownTimerButton;)Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->startTimeDown:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ljy/sdk/gamesdk/widget/CountDownTimerButton;Ljava/lang/String;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->setTextI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljy/sdk/gamesdk/widget/CountDownTimerButton;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->stopTimer()V

    return-void
.end method

.method static synthetic access$400(Ljy/sdk/gamesdk/widget/CountDownTimerButton;)Landroid/os/Handler;
    .registers 1

    .line 24
    iget-object p0, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private init()V
    .registers 8

    .line 85
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 86
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v2, 0x8

    .line 87
    new-array v3, v2, [F

    fill-array-data v3, :array_56

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 88
    iget-object v3, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->pressColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 90
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 91
    new-array v2, v2, [F

    fill-array-data v2, :array_6a

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 92
    iget-object v2, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->unpressColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x1

    .line 94
    new-array v4, v2, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v4, v5

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 95
    new-array v1, v2, [I

    const v4, -0x10100a7

    aput v4, v1, v5

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->befforTimeDown:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->setTextI(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v2}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->setClickable(Z)V

    return-void

    nop

    :array_56
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_6a
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private setTextI(Ljava/lang/String;)V
    .registers 4

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_25

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<u>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</u>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 104
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<u>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</u>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->setText(Ljava/lang/CharSequence;)V

    :goto_42
    return-void
.end method

.method private startTimer()V
    .registers 5

    .line 137
    iget-wide v0, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->duration:J

    iput-wide v0, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->current_duration:J

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->startTimeDownColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->setBackgroundColor(I)V

    .line 141
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopTimeDown()V
    .registers 1

    .line 164
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->stopTimer()V

    return-void
.end method

.method private stopTimer()V
    .registers 3

    const/4 v0, 0x1

    .line 151
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->unpressColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->setBackgroundColor(I)V

    .line 153
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->afterTimeDown:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->setTextI(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setAfterTimeDownText(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->afterTimeDown:Ljava/lang/String;

    return-void
.end method

.method public setBefforTimeDownText(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->befforTimeDown:Ljava/lang/String;

    return-void
.end method

.method public setStartTimeDownText(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->startTimeDown:Ljava/lang/String;

    return-void
.end method

.method public startTimeDown()V
    .registers 1

    .line 159
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->startTimer()V

    return-void
.end method
