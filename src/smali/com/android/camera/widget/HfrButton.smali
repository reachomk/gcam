.class public Lcom/android/camera/widget/HfrButton;
.super Landroid/widget/ImageButton;
.source "HfrButton.java"

# interfaces
.implements Lcom/android/camera/widget/AnimatedImageButton;


# instance fields
.field private animator:Landroid/animation/Animator;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private descriptionStrings:[Ljava/lang/String;

.field private fpsString:Ljava/lang/String;

.field private final fpsTextPaint:Landroid/graphics/Paint;

.field private is240FpsSupported:Z

.field private numStates:I

.field private onStateChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

.field private onStatePreChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

.field private rateStrings:[Ljava/lang/String;

.field private final rateTextPaint:Landroid/graphics/Paint;

.field private smoothRotator:Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

.field private state:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const v7, 0x7f0b0218

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/android/camera/widget/HfrButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/HfrButton$1;-><init>(Lcom/android/camera/widget/HfrButton;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/HfrButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-array v0, v6, [I

    aput v4, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/HfrButton;->animator:Landroid/animation/Animator;

    .line 61
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->animator:Landroid/animation/Animator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/HfrButton;->backgroundPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/widget/HfrButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0219

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/camera/widget/HfrButton;->createTextPaint(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/HfrButton;->rateTextPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->rateTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/widget/HfrButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/camera/widget/HfrButton;->createTextPaint(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/HfrButton;->fpsTextPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->fpsTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/widget/HfrButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/camera/widget/HfrButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/HfrButton;->fpsString:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/widget/HfrButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/HfrButton;->rateStrings:[Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/widget/HfrButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/HfrButton;->descriptionStrings:[Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->rateStrings:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/camera/widget/HfrButton;->numStates:I

    .line 79
    iput v4, p0, Lcom/android/camera/widget/HfrButton;->state:I

    .line 80
    invoke-direct {p0, v4}, Lcom/android/camera/widget/HfrButton;->setTextFromState(I)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/HfrButton;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/android/camera/widget/HfrButton;->state:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/HfrButton;IZ)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/widget/HfrButton;->nextState(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/widget/HfrButton;)Lcom/android/camera/widget/OnStateChangeListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->onStatePreChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/widget/HfrButton;)Lcom/android/camera/widget/OnStateChangeListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->onStateChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

    return-object v0
.end method

.method private final createTextPaint(I)Landroid/graphics/Paint;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 86
    int-to-float v1, p1

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/widget/HfrButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 87
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 93
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    return-object v0
.end method

.method private final nextState(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 99
    add-int/lit8 v0, p1, 0x1

    .line 100
    iget v1, p0, Lcom/android/camera/widget/HfrButton;->numStates:I

    if-lt v0, v1, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 104
    :cond_0
    if-eqz p2, :cond_2

    .line 1192
    invoke-direct {p0, v0, v3}, Lcom/android/camera/widget/HfrButton;->shouldSetState(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1196
    iget-object v1, p0, Lcom/android/camera/widget/HfrButton;->animator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1197
    iget-object v1, p0, Lcom/android/camera/widget/HfrButton;->animator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/camera/widget/HfrButton$2;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/camera/widget/HfrButton$2;-><init>(Lcom/android/camera/widget/HfrButton;ZI)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1219
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/widget/HfrButton;->setState(IZ)V

    goto :goto_0
.end method

.method private final setTextFromState(I)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->rateStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/camera/widget/HfrButton;->text:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->descriptionStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/HfrButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->descriptionStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/HfrButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/widget/HfrButton;->invalidate()V

    .line 132
    return-void
.end method

.method private final shouldSetState(IZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 160
    iget v1, p0, Lcom/android/camera/widget/HfrButton;->state:I

    if-ne p1, v1, :cond_0

    .line 169
    :goto_0
    return v0

    .line 164
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/widget/HfrButton;->is240FpsSupported:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/widget/HfrButton;->rateStrings:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, "240"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/HfrButton;->nextState(IZ)V

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 225
    new-instance v0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/widget/HfrButton;->smoothRotator:Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    .line 226
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->smoothRotator:Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->onAttachedToWindow()V

    .line 227
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->smoothRotator:Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->onConfigurationChanged()V

    .line 233
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/widget/HfrButton;->backgroundPaint:Landroid/graphics/Paint;

    .line 113
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 121
    iget-object v2, p0, Lcom/android/camera/widget/HfrButton;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/widget/HfrButton;->rateTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/widget/HfrButton;->fpsTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    add-float/2addr v1, v2

    .line 124
    iget-object v2, p0, Lcom/android/camera/widget/HfrButton;->fpsString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/widget/HfrButton;->fpsTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 125
    return-void
.end method

.method public final setIs240FpsSupported(Z)V
    .locals 0

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/camera/widget/HfrButton;->is240FpsSupported:Z

    .line 136
    return-void
.end method

.method public final setOnPreChangeListener(Lcom/android/camera/widget/OnStateChangeListener;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/camera/widget/HfrButton;->onStatePreChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

    .line 146
    return-void
.end method

.method public final setOnStateChangeListener(Lcom/android/camera/widget/OnStateChangeListener;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/camera/widget/HfrButton;->onStateChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

    .line 151
    return-void
.end method

.method public final setState(IZ)V
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/widget/HfrButton;->shouldSetState(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->onStatePreChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->onStatePreChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

    iget v1, p0, Lcom/android/camera/widget/HfrButton;->state:I

    invoke-interface {v0, v1}, Lcom/android/camera/widget/OnStateChangeListener;->stateChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR94KLC___(I)V

    .line 182
    :cond_2
    iput p1, p0, Lcom/android/camera/widget/HfrButton;->state:I

    .line 183
    invoke-direct {p0, p1}, Lcom/android/camera/widget/HfrButton;->setTextFromState(I)V

    .line 185
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->onStateChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton;->onStateChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

    invoke-interface {v0, p1}, Lcom/android/camera/widget/OnStateChangeListener;->stateChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR94KLC___(I)V

    goto :goto_0
.end method
