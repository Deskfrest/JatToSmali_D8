.class public Ljy/sdk/gamesdk/widget/JyVerifyView;
.super Landroid/widget/TextView;
.source "JyVerifyView.java"


# static fields
.field static tempCheckNum:[I


# instance fields
.field blueSpan:Landroid/text/style/ForegroundColorSpan;

.field greenSpan:Landroid/text/style/ForegroundColorSpan;

.field private mLineNum:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPointNum:I

.field mTempPaint:Landroid/graphics/Paint;

.field private random:Ljava/util/Random;

.field redSpan:Landroid/text/style/ForegroundColorSpan;

.field private strings:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field whiteSpan:Landroid/text/style/ForegroundColorSpan;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    .line 123
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Ljy/sdk/gamesdk/widget/JyVerifyView;->tempCheckNum:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x6

    .line 30
    iput p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->mLineNum:I

    const/16 v0, 0xf

    .line 32
    iput v0, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->mPointNum:I

    const/16 v1, 0x2d

    .line 36
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "a"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "b"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "c"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "d"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "e"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "f"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "h"

    aput-object v2, v1, p1

    const-string p1, "k"

    const/4 v2, 0x7

    aput-object p1, v1, v2

    const-string p1, "m"

    const/16 v2, 0x8

    aput-object p1, v1, v2

    const-string p1, "n"

    const/16 v2, 0x9

    aput-object p1, v1, v2

    const-string p1, "p"

    const/16 v2, 0xa

    aput-object p1, v1, v2

    const-string p1, "q"

    const/16 v2, 0xb

    aput-object p1, v1, v2

    const-string p1, "r"

    const/16 v2, 0xc

    aput-object p1, v1, v2

    const-string p1, "s"

    const/16 v2, 0xd

    aput-object p1, v1, v2

    const-string p1, "t"

    const/16 v2, 0xe

    aput-object p1, v1, v2

    const-string p1, "w"

    aput-object p1, v1, v0

    const-string p1, "x"

    const/16 v0, 0x10

    aput-object p1, v1, v0

    const-string p1, "y"

    const/16 v0, 0x11

    aput-object p1, v1, v0

    const-string p1, "z"

    const/16 v0, 0x12

    aput-object p1, v1, v0

    const-string p1, "1"

    const/16 v0, 0x13

    aput-object p1, v1, v0

    const-string p1, "2"

    const/16 v0, 0x14

    aput-object p1, v1, v0

    const-string p1, "3"

    const/16 v0, 0x15

    aput-object p1, v1, v0

    const-string p1, "4"

    const/16 v0, 0x16

    aput-object p1, v1, v0

    const-string p1, "5"

    const/16 v0, 0x17

    aput-object p1, v1, v0

    const-string p1, "6"

    const/16 v0, 0x18

    aput-object p1, v1, v0

    const-string p1, "7"

    const/16 v0, 0x19

    aput-object p1, v1, v0

    const-string p1, "8"

    const/16 v0, 0x1a

    aput-object p1, v1, v0

    const-string p1, "9"

    const/16 v0, 0x1b

    aput-object p1, v1, v0

    const-string p1, "0"

    const/16 v0, 0x1c

    aput-object p1, v1, v0

    const-string p1, "A"

    const/16 v0, 0x1d

    aput-object p1, v1, v0

    const-string p1, "B"

    const/16 v0, 0x1e

    aput-object p1, v1, v0

    const-string p1, "C"

    const/16 v0, 0x1f

    aput-object p1, v1, v0

    const-string p1, "D"

    const/16 v0, 0x20

    aput-object p1, v1, v0

    const-string p1, "E"

    const/16 v0, 0x21

    aput-object p1, v1, v0

    const-string p1, "F"

    const/16 v0, 0x22

    aput-object p1, v1, v0

    const-string p1, "G"

    const/16 v0, 0x23

    aput-object p1, v1, v0

    const-string p1, "H"

    const/16 v0, 0x24

    aput-object p1, v1, v0

    const-string p1, "K"

    const/16 v0, 0x25

    aput-object p1, v1, v0

    const-string p1, "L"

    const/16 v0, 0x26

    aput-object p1, v1, v0

    const-string p1, "N"

    const/16 v0, 0x27

    aput-object p1, v1, v0

    const-string p1, "Q"

    const/16 v0, 0x28

    aput-object p1, v1, v0

    const-string p1, "R"

    const/16 v0, 0x29

    aput-object p1, v1, v0

    const-string p1, "T"

    const/16 v0, 0x2a

    aput-object p1, v1, v0

    const-string p1, "Y"

    const/16 v0, 0x2b

    aput-object p1, v1, v0

    const-string p1, "Z"

    const/16 v0, 0x2c

    aput-object p1, v1, v0

    iput-object v1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->strings:[Ljava/lang/String;

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->mTempPaint:Landroid/graphics/Paint;

    .line 190
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v0, -0x10000

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->redSpan:Landroid/text/style/ForegroundColorSpan;

    .line 191
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->whiteSpan:Landroid/text/style/ForegroundColorSpan;

    .line 192
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const v0, -0xffff01

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->blueSpan:Landroid/text/style/ForegroundColorSpan;

    .line 193
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const v0, -0xff0100

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->greenSpan:Landroid/text/style/ForegroundColorSpan;

    .line 49
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->random:Ljava/util/Random;

    .line 50
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Ljy/sdk/gamesdk/widget/JyVerifyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x6

    .line 30
    iput p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->mLineNum:I

    const/16 p2, 0xf

    .line 32
    iput p2, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->mPointNum:I

    const/16 p3, 0x2d

    .line 36
    new-array p3, p3, [Ljava/lang/String;

    const-string v0, "a"

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string v0, "b"

    const/4 v1, 0x1

    aput-object v0, p3, v1

    const-string v0, "c"

    const/4 v1, 0x2

    aput-object v0, p3, v1

    const-string v0, "d"

    const/4 v1, 0x3

    aput-object v0, p3, v1

    const-string v0, "e"

    const/4 v1, 0x4

    aput-object v0, p3, v1

    const-string v0, "f"

    const/4 v1, 0x5

    aput-object v0, p3, v1

    const-string v0, "h"

    aput-object v0, p3, p1

    const-string p1, "k"

    const/4 v0, 0x7

    aput-object p1, p3, v0

    const-string p1, "m"

    const/16 v0, 0x8

    aput-object p1, p3, v0

    const-string p1, "n"

    const/16 v0, 0x9

    aput-object p1, p3, v0

    const-string p1, "p"

    const/16 v0, 0xa

    aput-object p1, p3, v0

    const-string p1, "q"

    const/16 v0, 0xb

    aput-object p1, p3, v0

    const-string p1, "r"

    const/16 v0, 0xc

    aput-object p1, p3, v0

    const-string p1, "s"

    const/16 v0, 0xd

    aput-object p1, p3, v0

    const-string p1, "t"

    const/16 v0, 0xe

    aput-object p1, p3, v0

    const-string p1, "w"

    aput-object p1, p3, p2

    const-string p1, "x"

    const/16 p2, 0x10

    aput-object p1, p3, p2

    const-string p1, "y"

    const/16 p2, 0x11

    aput-object p1, p3, p2

    const-string p1, "z"

    const/16 p2, 0x12

    aput-object p1, p3, p2

    const-string p1, "1"

    const/16 p2, 0x13

    aput-object p1, p3, p2

    const-string p1, "2"

    const/16 p2, 0x14

    aput-object p1, p3, p2

    const-string p1, "3"

    const/16 p2, 0x15

    aput-object p1, p3, p2

    const-string p1, "4"

    const/16 p2, 0x16

    aput-object p1, p3, p2

    const-string p1, "5"

    const/16 p2, 0x17

    aput-object p1, p3, p2

    const-string p1, "6"

    const/16 p2, 0x18

    aput-object p1, p3, p2

    const-string p1, "7"

    const/16 p2, 0x19

    aput-object p1, p3, p2

    const-string p1, "8"

    const/16 p2, 0x1a

    aput-object p1, p3, p2

    const-string p1, "9"

    const/16 p2, 0x1b

    aput-object p1, p3, p2

    const-string p1, "0"

    const/16 p2, 0x1c

    aput-object p1, p3, p2

    const-string p1, "A"

    const/16 p2, 0x1d

    aput-object p1, p3, p2

    const-string p1, "B"

    const/16 p2, 0x1e

    aput-object p1, p3, p2

    const-string p1, "C"

    const/16 p2, 0x1f

    aput-object p1, p3, p2

    const-string p1, "D"

    const/16 p2, 0x20

    aput-object p1, p3, p2

    const-string p1, "E"

    const/16 p2, 0x21

    aput-object p1, p3, p2

    const-string p1, "F"

    const/16 p2, 0x22

    aput-object p1, p3, p2

    const-string p1, "G"

    const/16 p2, 0x23

    aput-object p1, p3, p2

    const-string p1, "H"

    const/16 p2, 0x24

    aput-object p1, p3, p2

    const-string p1, "K"

    const/16 p2, 0x25

    aput-object p1, p3, p2

    const-string p1, "L"

    const/16 p2, 0x26

    aput-object p1, p3, p2

    const-string p1, "N"

    const/16 p2, 0x27

    aput-object p1, p3, p2

    const-string p1, "Q"

    const/16 p2, 0x28

    aput-object p1, p3, p2

    const-string p1, "R"

    const/16 p2, 0x29

    aput-object p1, p3, p2

    const-string p1, "T"

    const/16 p2, 0x2a

    aput-object p1, p3, p2

    const-string p1, "Y"

    const/16 p2, 0x2b

    aput-object p1, p3, p2

    const-string p1, "Z"

    const/16 p2, 0x2c

    aput-object p1, p3, p2

    iput-object p3, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->strings:[Ljava/lang/String;

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->mTempPaint:Landroid/graphics/Paint;

    .line 190
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const/high16 p2, -0x10000

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->redSpan:Landroid/text/style/ForegroundColorSpan;

    .line 191
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->whiteSpan:Landroid/text/style/ForegroundColorSpan;

    .line 192
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const p2, -0xffff01

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->blueSpan:Landroid/text/style/ForegroundColorSpan;

    .line 193
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const p2, -0xff0100

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->greenSpan:Landroid/text/style/ForegroundColorSpan;

    .line 61
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->init()V

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/widget/JyVerifyView;)Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Ljy/sdk/gamesdk/widget/JyVerifyView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 24
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->text:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Ljy/sdk/gamesdk/widget/JyVerifyView;)Ljava/lang/String;
    .registers 1

    .line 24
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->randomText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljy/sdk/gamesdk/widget/JyVerifyView;Ljava/lang/String;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/widget/JyVerifyView;->setColorText(Ljava/lang/String;)V

    return-void
.end method

.method public static getLine(II)[I
    .registers 9

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_21

    .line 141
    sget-object v1, Ljy/sdk/gamesdk/widget/JyVerifyView;->tempCheckNum:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v4, p1

    mul-double v2, v2, v4

    double-to-int v2, v2

    aput v2, v1, v0

    .line 142
    sget-object v1, Ljy/sdk/gamesdk/widget/JyVerifyView;->tempCheckNum:[I

    add-int/lit8 v2, v0, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    int-to-double v5, p0

    mul-double v3, v3, v5

    double-to-int v3, v3

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 144
    :cond_21
    sget-object p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->tempCheckNum:[I

    return-object p0
.end method

.method public static getPoint(II)[I
    .registers 7

    .line 125
    sget-object v0, Ljy/sdk/gamesdk/widget/JyVerifyView;->tempCheckNum:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    int-to-double v3, p1

    mul-double v1, v1, v3

    double-to-int p1, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 126
    sget-object p1, Ljy/sdk/gamesdk/widget/JyVerifyView;->tempCheckNum:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p0

    mul-double v0, v0, v2

    double-to-int p0, v0

    const/4 v0, 0x1

    aput p0, p1, v0

    .line 127
    sget-object p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->tempCheckNum:[I

    return-object p0
.end method

.method private init()V
    .registers 2

    .line 65
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->random:Ljava/util/Random;

    .line 66
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->randomText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->text:Ljava/lang/String;

    const/16 v0, 0x11

    .line 67
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->setGravity(I)V

    .line 68
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->setColorText(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljy/sdk/gamesdk/widget/JyVerifyView$1;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/widget/JyVerifyView$1;-><init>(Ljy/sdk/gamesdk/widget/JyVerifyView;)V

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private randomColor()I
    .registers 2

    const/4 v0, 0x1

    .line 180
    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->randomColor(I)I

    move-result v0

    return v0
.end method

.method private randomColor(I)I
    .registers 6

    .line 183
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->random:Ljava/util/Random;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    div-int/2addr v0, p1

    .line 184
    iget-object v2, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->random:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    div-int/2addr v2, p1

    .line 185
    iget-object v3, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->random:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    div-int/2addr v1, p1

    .line 186
    invoke-static {v0, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method private randomText()Ljava/lang/String;
    .registers 5

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 154
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->mPaint:Landroid/graphics/Paint;

    .line 155
    :goto_c
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_37

    .line 156
    iget-object v1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->random:Ljava/util/Random;

    iget-object v2, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->strings:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->strings:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 160
    :cond_37
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_40

    .line 165
    :cond_50
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private randomTextStyle(Landroid/graphics/Paint;)V
    .registers 3

    .line 169
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->randomColor()I

    move-result v0

    .line 170
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 172
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->random:Ljava/util/Random;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    .line 174
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    move-result p1

    return-void
.end method

.method private setColorText(Ljava/lang/String;)V
    .registers 7

    .line 196
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->redSpan:Landroid/text/style/ForegroundColorSpan;

    const/4 v1, 0x1

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 198
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->whiteSpan:Landroid/text/style/ForegroundColorSpan;

    const/4 v3, 0x2

    const/16 v4, 0x12

    invoke-virtual {v0, p1, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 199
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->blueSpan:Landroid/text/style/ForegroundColorSpan;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 200
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->greenSpan:Landroid/text/style/ForegroundColorSpan;

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 201
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .registers 2

    .line 24
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .line 148
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->text:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 93
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->getHeight()I

    move-result v0

    .line 95
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 98
    :goto_a
    iget v4, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->mLineNum:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2a

    .line 100
    invoke-static {v0, v1}, Ljy/sdk/gamesdk/widget/JyVerifyView;->getLine(II)[I

    move-result-object v4

    .line 101
    aget v6, v4, v2

    int-to-float v8, v6

    aget v5, v4, v5

    int-to-float v9, v5

    const/4 v5, 0x2

    aget v5, v4, v5

    int-to-float v10, v5

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v11, v4

    iget-object v12, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->mTempPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_2a
    const/4 v3, 0x0

    .line 106
    :goto_2b
    iget v4, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->mPointNum:I

    if-ge v3, v4, :cond_43

    .line 108
    invoke-static {v0, v1}, Ljy/sdk/gamesdk/widget/JyVerifyView;->getPoint(II)[I

    move-result-object v4

    .line 109
    aget v6, v4, v2

    int-to-float v6, v6

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 111
    :cond_43
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setOnclick()V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->randomText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->text:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/JyVerifyView;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/JyVerifyView;->postInvalidate()V

    return-void
.end method
