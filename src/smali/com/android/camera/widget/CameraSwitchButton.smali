.class public Lcom/android/camera/widget/CameraSwitchButton;
.super Landroid/widget/ImageButton;
.source "CameraSwitchButton.java"

# interfaces
.implements Lcom/android/camera/widget/AnimatedImageButton;


# instance fields
.field private buttonAnimatable:Landroid/graphics/drawable/Animatable;

.field private clickEnabled:Z

.field private currentRippleAlpha:F

.field private currentRippleRadius:F

.field private fastOutSlowInAnimator:Landroid/animation/ValueAnimator;

.field private onStateChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

.field private onStatePreChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private pixelDensity:F

.field private smoothRotator:Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

.field private state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->clickEnabled:Z

    .line 44
    new-instance v0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->smoothRotator:Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    .line 51
    invoke-direct {p0}, Lcom/android/camera/widget/CameraSwitchButton;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->clickEnabled:Z

    .line 44
    new-instance v0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->smoothRotator:Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    .line 56
    invoke-direct {p0}, Lcom/android/camera/widget/CameraSwitchButton;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->clickEnabled:Z

    .line 44
    new-instance v0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->smoothRotator:Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    .line 61
    invoke-direct {p0}, Lcom/android/camera/widget/CameraSwitchButton;->init()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/CameraSwitchButton;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->clickEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/CameraSwitchButton;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->state:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/widget/CameraSwitchButton;F)F
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/android/camera/widget/CameraSwitchButton;->currentRippleAlpha:F

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/widget/CameraSwitchButton;F)F
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/android/camera/widget/CameraSwitchButton;->currentRippleRadius:F

    return p1
.end method

.method private final announceNewDescription()V
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/camera/widget/CameraSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/CameraSwitchButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/camera/widget/CameraSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/CameraSwitchButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/CameraSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/CameraSwitchButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/camera/widget/CameraSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/CameraSwitchButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private final init()V
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/camera/widget/CameraSwitchButton;->unsetDarkFrontFacingDrawable()V

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/widget/CameraSwitchButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    iput-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->buttonAnimatable:Landroid/graphics/drawable/Animatable;

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/widget/CameraSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->pixelDensity:F

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    new-instance v0, Lcom/android/camera/widget/CameraSwitchButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/CameraSwitchButton$1;-><init>(Lcom/android/camera/widget/CameraSwitchButton;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/CameraSwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v0, Lcom/android/camera/widget/CameraSwitchButton$2;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/CameraSwitchButton$2;-><init>(Lcom/android/camera/widget/CameraSwitchButton;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/CameraSwitchButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/CameraSwitchButton;->setFocusable(Z)V

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->fastOutSlowInAnimator:Landroid/animation/ValueAnimator;

    .line 101
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->fastOutSlowInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 102
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->fastOutSlowInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->fastOutSlowInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/widget/CameraSwitchButton$3;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/CameraSwitchButton$3;-><init>(Lcom/android/camera/widget/CameraSwitchButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    return-void

    .line 100
    nop

    :array_0
    .array-data 4
        0x41e00000    # 28.0f
        0x42400000    # 48.0f
    .end array-data
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 118
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->smoothRotator:Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->onAttachedToWindow()V

    .line 119
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->smoothRotator:Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->onConfigurationChanged()V

    .line 125
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 185
    invoke-virtual {p0}, Lcom/android/camera/widget/CameraSwitchButton;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/android/camera/widget/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 188
    const/high16 v2, 0x41e00000    # 28.0f

    iget v3, p0, Lcom/android/camera/widget/CameraSwitchButton;->pixelDensity:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/widget/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/camera/widget/CameraSwitchButton;->currentRippleAlpha:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 196
    iget v2, p0, Lcom/android/camera/widget/CameraSwitchButton;->currentRippleRadius:F

    iget v3, p0, Lcom/android/camera/widget/CameraSwitchButton;->pixelDensity:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/widget/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public final setOnPreChangeListener(Lcom/android/camera/widget/OnStateChangeListener;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/camera/widget/CameraSwitchButton;->onStatePreChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

    .line 169
    return-void
.end method

.method public final setOnStateChangeListener(Lcom/android/camera/widget/OnStateChangeListener;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/camera/widget/CameraSwitchButton;->onStateChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

    .line 174
    return-void
.end method

.method public final setState(IZ)V
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->state:I

    if-ne v0, p1, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/android/camera/widget/CameraSwitchButton;->announceNewDescription()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iput p1, p0, Lcom/android/camera/widget/CameraSwitchButton;->state:I

    .line 135
    invoke-direct {p0}, Lcom/android/camera/widget/CameraSwitchButton;->announceNewDescription()V

    .line 137
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->onStateChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->onStateChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

    .line 1163
    iget v1, p0, Lcom/android/camera/widget/CameraSwitchButton;->state:I

    .line 138
    invoke-interface {v0, v1}, Lcom/android/camera/widget/OnStateChangeListener;->stateChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR94KLC___(I)V

    goto :goto_0
.end method

.method public final setStateAnimated(IZ)V
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->state:I

    if-ne v0, p1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->onStatePreChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->onStatePreChangeListener:Lcom/android/camera/widget/OnStateChangeListener;

    iget v1, p0, Lcom/android/camera/widget/CameraSwitchButton;->state:I

    invoke-interface {v0, v1}, Lcom/android/camera/widget/OnStateChangeListener;->stateChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR94KLC___(I)V

    .line 152
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/widget/CameraSwitchButton;->setState(IZ)V

    .line 155
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->buttonAnimatable:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 158
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton;->fastOutSlowInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public final unsetDarkFrontFacingDrawable()V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/camera/widget/CameraSwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b021b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/CameraSwitchButton;->setColorFilter(I)V

    .line 224
    return-void
.end method
