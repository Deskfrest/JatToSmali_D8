.class public Ljy/sdk/gamesdk/widget/KeyboardLayout;
.super Landroid/widget/RelativeLayout;
.source "KeyboardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;,
        Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;
    }
.end annotation


# instance fields
.field private mIsKeyboardActive:Z

.field private mKeyboardHeight:I

.field private mListener:Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1, v0, v1}, Ljy/sdk/gamesdk/widget/KeyboardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Ljy/sdk/gamesdk/widget/KeyboardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout;->mIsKeyboardActive:Z

    .line 16
    iput p1, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout;->mKeyboardHeight:I

    .line 29
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/KeyboardLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;-><init>(Ljy/sdk/gamesdk/widget/KeyboardLayout;Ljy/sdk/gamesdk/widget/KeyboardLayout$1;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$102(Ljy/sdk/gamesdk/widget/KeyboardLayout;I)I
    .registers 2

    .line 11
    iput p1, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout;->mKeyboardHeight:I

    return p1
.end method

.method static synthetic access$202(Ljy/sdk/gamesdk/widget/KeyboardLayout;Z)Z
    .registers 2

    .line 11
    iput-boolean p1, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout;->mIsKeyboardActive:Z

    return p1
.end method

.method static synthetic access$300(Ljy/sdk/gamesdk/widget/KeyboardLayout;)Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;
    .registers 1

    .line 11
    iget-object p0, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout;->mListener:Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;

    return-object p0
.end method


# virtual methods
.method public getKeyboardHeight()I
    .registers 2

    .line 50
    iget v0, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout;->mKeyboardHeight:I

    return v0
.end method

.method public getKeyboardListener()Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;
    .registers 2

    .line 37
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout;->mListener:Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;

    return-object v0
.end method

.method public isKeyboardActive()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout;->mIsKeyboardActive:Z

    return v0
.end method

.method public setKeyboardListener(Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;)V
    .registers 2

    .line 33
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout;->mListener:Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;

    return-void
.end method
