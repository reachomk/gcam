.class public Lcom/android/camera/ui/PrimaryShutterButton;
.super Lcom/android/camera/ui/ShutterButtonBase;
.source "PrimaryShutterButton.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PrimaryShutterButton$ShutterButtonOutlineProvider;,
        Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;,
        Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;,
        Lcom/android/camera/ui/PrimaryShutterButton$OnDrawListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final burstStartedLock:Ljava/lang/Object;

.field private buttonCenterX:I

.field private buttonCenterY:I

.field private buttonContentPaint:Landroid/graphics/Paint;

.field private buttonImageHalfWidth:I

.field private buttonImageHalfWidthExpanded:I

.field private buttonImageRect:Landroid/graphics/Rect;

.field private buttonPaint:Landroid/graphics/Paint;

.field private buttonRect:Landroid/graphics/RectF;

.field private buttonRippleAnimator:Landroid/animation/ValueAnimator;

.field private buttonSize:I

.field private cancelButtonImage:Landroid/graphics/drawable/Drawable;

.field private colorEvaluator:Landroid/animation/ArgbEvaluator;

.field private confirmButtonImage:Landroid/graphics/drawable/Drawable;

.field private currentButtonImage:Landroid/graphics/drawable/Drawable;

.field private currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

.field private curve060Interpolator:Landroid/view/animation/Interpolator;

.field private curve1000Interpolator:Landroid/view/animation/Interpolator;

.field private curve4060Interpolator:Landroid/view/animation/Interpolator;

.field private curve6040Interpolator:Landroid/view/animation/Interpolator;

.field private curve6060Interpolator:Landroid/view/animation/Interpolator;

.field private disableChangeAnimationRunnable:Ljava/lang/Runnable;

.field private enableStateChangeAnimator:Landroid/animation/ValueAnimator;

.field private fadeStopSquareAnimator:Landroid/animation/ValueAnimator;

.field private fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private imageButtonAnimator:Landroid/animation/ValueAnimator;

.field private isLongPressAnimationInProgress:Z

.field private isLongPressInProgress:Z

.field private isRippleEffectAnimating:Z

.field private isVideoButtonAnimating:Z

.field private isVideoRecording:Z

.field private linearInterpolator:Landroid/view/animation/Interpolator;

.field private longPressStartAnimator:Landroid/animation/AnimatorSet;

.field private longPressStopAnimator:Landroid/animation/ValueAnimator;

.field private mainButtonPaintColor:I

.field private oldPressed:Z

.field private onDrawListener:Lcom/android/camera/ui/PrimaryShutterButton$OnDrawListener;

.field private photoButtonCurrentRadius:I

.field private photoButtonRadius:I

.field private photoCirclePaint:Landroid/graphics/Paint;

.field private photoPaintCancelColor:I

.field private photoPaintIdleColor:I

.field private photoPaintPressedColor:I

.field private photoRippleCurrentRadius:I

.field private ripplePaint:Landroid/graphics/Paint;

.field private roundButtonCurrentRadius:I

.field private roundButtonRadius:I

.field private scaleFactor:F

.field private supressLongPressAnimation:Z

.field private videoBreathingAnimator:Landroid/animation/ValueAnimator;

.field private videoButtonBreathingRadius:I

.field private videoButtonCurrentRadius:I

.field private videoButtonRadius:I

.field private videoButtonStopSquareCurrentHalfSize:I

.field private videoButtonStopSquareHalfSize:I

.field private videoCirclePaint:Landroid/graphics/Paint;

.field private videoClickAnimationsListener:Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;

.field private videoClickAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "PrimaryShutter"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/PrimaryShutterButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ShutterButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    sget-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PHOTO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->burstStartedLock:Ljava/lang/Object;

    .line 1412
    new-instance v0, Lcom/android/camera/ui/PrimaryShutterButton$28;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PrimaryShutterButton$28;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->disableChangeAnimationRunnable:Ljava/lang/Runnable;

    .line 219
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/ui/PrimaryShutterButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 221
    new-instance v0, Lcom/android/camera/ui/SimpleLongPressGestureDetector;

    new-instance v1, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;

    invoke-direct {v1, p0, v5}, Lcom/android/camera/ui/PrimaryShutterButton$LongPressGestureListener;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;B)V

    const-wide/16 v2, 0x15e

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/SimpleLongPressGestureDetector;-><init>(Landroid/view/GestureDetector$SimpleOnGestureListener;J)V

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->gestureDetector:Lcom/android/camera/ui/SimpleLongPressGestureDetector;

    .line 224
    iput p3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonSize:I

    .line 225
    div-int/lit8 v0, p5, 0x2

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoButtonRadius:I

    .line 226
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoButtonRadius:I

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoRippleCurrentRadius:I

    .line 228
    div-int/lit8 v0, p6, 0x2

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonRadius:I

    .line 229
    div-int/lit8 v0, p7, 0x2

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonBreathingRadius:I

    .line 230
    div-int/lit8 v0, p8, 0x2

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonStopSquareHalfSize:I

    .line 231
    div-int/lit8 v0, p4, 0x2

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->roundButtonRadius:I

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->mainButtonPaintColor:I

    .line 234
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01e5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoPaintIdleColor:I

    .line 235
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01e7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoPaintCancelColor:I

    .line 236
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01e6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoPaintPressedColor:I

    .line 238
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonPaint:Landroid/graphics/Paint;

    .line 239
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->mainButtonPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoCirclePaint:Landroid/graphics/Paint;

    .line 243
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoPaintIdleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->ripplePaint:Landroid/graphics/Paint;

    .line 246
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->ripplePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoPaintPressedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonContentPaint:Landroid/graphics/Paint;

    .line 250
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoCirclePaint:Landroid/graphics/Paint;

    .line 251
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01e8

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->resetShutterButton(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 258
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->linearInterpolator:Landroid/view/animation/Interpolator;

    .line 260
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->curve4060Interpolator:Landroid/view/animation/Interpolator;

    .line 262
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->curve6040Interpolator:Landroid/view/animation/Interpolator;

    .line 264
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->curve6060Interpolator:Landroid/view/animation/Interpolator;

    .line 266
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->curve060Interpolator:Landroid/view/animation/Interpolator;

    .line 268
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->curve1000Interpolator:Landroid/view/animation/Interpolator;

    .line 270
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonRect:Landroid/graphics/RectF;

    .line 273
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->cancelButtonImage:Landroid/graphics/drawable/Drawable;

    .line 276
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->confirmButtonImage:Landroid/graphics/drawable/Drawable;

    .line 277
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->confirmButtonImage:Landroid/graphics/drawable/Drawable;

    .line 279
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->confirmButtonImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonImageRect:Landroid/graphics/Rect;

    .line 280
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonImageRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonImageHalfWidth:I

    .line 281
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonImageHalfWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonImageHalfWidthExpanded:I

    .line 283
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    .line 285
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->scaleFactor:F

    .line 287
    new-instance v0, Lcom/android/camera/ui/PrimaryShutterButton$ShutterButtonOutlineProvider;

    invoke-direct {v0, p0, v5}, Lcom/android/camera/ui/PrimaryShutterButton$ShutterButtonOutlineProvider;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;B)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 288
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/PrimaryShutterButton;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoButtonRadius:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/PrimaryShutterButton;Z)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isLongPressInProgress:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/camera/ui/PrimaryShutterButton;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonCurrentRadius:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->ripplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/ui/PrimaryShutterButton;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isRippleEffectAnimating:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/camera/ui/PrimaryShutterButton;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoRippleCurrentRadius:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->curve4060Interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->curve6040Interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->enableStateChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/ui/PrimaryShutterButton;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->enableStateChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/PrimaryShutterButton;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getBreathingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/PrimaryShutterButton;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/ui/PrimaryShutterButton;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isVideoRecording:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fadeStopSquareAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/ui/PrimaryShutterButton;)Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoClickAnimationsListener:Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/ui/PrimaryShutterButton;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonRadius:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/camera/ui/PrimaryShutterButton;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonStopSquareCurrentHalfSize:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoClickAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/ui/PrimaryShutterButton;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->mainButtonPaintColor:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/ui/PrimaryShutterButton;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoPaintPressedColor:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/animation/ArgbEvaluator;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/PrimaryShutterButton;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->burstStartedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/ui/PrimaryShutterButton;)Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/camera/ui/PrimaryShutterButton;Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/camera/ui/PrimaryShutterButton;Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PrimaryShutterButton;->updateContentDescription(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/ui/PrimaryShutterButton;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonImageHalfWidth:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/camera/ui/PrimaryShutterButton;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonImageHalfWidthExpanded:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonContentPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/ui/PrimaryShutterButton;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterX:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/ui/PrimaryShutterButton;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterY:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonImageRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/ui/PrimaryShutterButton;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->updateButtonRect()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/PrimaryShutterButton;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->supressLongPressAnimation:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/ui/PrimaryShutterButton;Z)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/ui/PrimaryShutterButton;Z)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->supressLongPressAnimation:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/camera/ui/PrimaryShutterButton;Z)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->runEnableChangeAnimation(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/ui/PrimaryShutterButton;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->roundButtonRadius:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/PrimaryShutterButton;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PrimaryShutterButton;->runLongPressAnimation(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/camera/ui/PrimaryShutterButton;Z)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isVideoButtonAnimating:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/ui/PrimaryShutterButton;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoButtonCurrentRadius:I

    return p1
.end method

.method private final callShutterButtonFocus(Z)V
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->listener:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->listener:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;->onShutterButtonFocus(Z)V

    .line 1326
    :cond_0
    return-void
.end method

.method private final getBreathingAnimator()Landroid/animation/ValueAnimator;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 823
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoBreathingAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 824
    new-array v0, v4, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->roundButtonRadius:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonBreathingRadius:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoBreathingAnimator:Landroid/animation/ValueAnimator;

    .line 825
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoBreathingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 826
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoBreathingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 827
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoBreathingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 829
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoBreathingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/PrimaryShutterButton$15;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PrimaryShutterButton$15;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoBreathingAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private final getRoundButtonScaleAnimator(FI)Landroid/view/ViewPropertyAnimator;
    .locals 4

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 662
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 663
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 664
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 665
    new-instance v1, Lcom/android/camera/ui/PrimaryShutterButton$9;

    invoke-direct {v1}, Lcom/android/camera/ui/PrimaryShutterButton$9;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 672
    return-object v0
.end method

.method private static isVideoMode(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)Z
    .locals 1

    .prologue
    .line 1404
    sget-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->VIDEO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->VIDEO_HFR:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final runEnableChangeAnimation(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 945
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->enableStateChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->enableStateChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->enableStateChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 949
    :cond_0
    if-eqz p1, :cond_4

    .line 951
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    .line 996
    :cond_1
    :goto_0
    return-void

    .line 954
    :cond_2
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->enableStateChangeAnimator:Landroid/animation/ValueAnimator;

    .line 964
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonRippleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonRippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 965
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonRippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 970
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->enableStateChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 971
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->enableStateChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/PrimaryShutterButton$20;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PrimaryShutterButton$20;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 983
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->enableStateChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/PrimaryShutterButton$21;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PrimaryShutterButton$21;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 995
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->enableStateChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 957
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    .line 960
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->enableStateChangeAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 954
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 960
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final runImageButtonAnimation(ZIZ)V
    .locals 10

    .prologue
    const-wide/16 v8, 0xfa

    const/4 v7, 0x2

    .line 1006
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->roundButtonRadius:I

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoButtonRadius:I

    sub-int v3, v0, v1

    .line 1007
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    .line 1008
    if-eqz p1, :cond_1

    .line 1009
    new-array v0, v7, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->imageButtonAnimator:Landroid/animation/ValueAnimator;

    .line 1014
    :goto_0
    if-nez p3, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->ripplePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1018
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->roundButtonCurrentRadius:I

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoRippleCurrentRadius:I

    .line 1019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isRippleEffectAnimating:Z

    .line 1020
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoPaintIdleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1022
    :cond_0
    iget-object v6, p0, Lcom/android/camera/ui/PrimaryShutterButton;->imageButtonAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/PrimaryShutterButton$22;

    move-object v1, p0

    move v2, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/PrimaryShutterButton$22;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;ZIII)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1042
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->imageButtonAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/PrimaryShutterButton$23;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/PrimaryShutterButton$23;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1061
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->setClickEnabled(Z)V

    .line 1062
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->imageButtonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1063
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->imageButtonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 4069
    if-eqz p1, :cond_2

    .line 4070
    new-array v0, v7, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4071
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4076
    :goto_1
    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonImageHalfWidthExpanded:I

    iget v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonImageHalfWidth:I

    sub-int/2addr v1, v2

    .line 4078
    new-instance v2, Lcom/android/camera/ui/PrimaryShutterButton$24;

    invoke-direct {v2, p0, p3, v1}, Lcom/android/camera/ui/PrimaryShutterButton$24;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;ZI)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4100
    new-instance v1, Lcom/android/camera/ui/PrimaryShutterButton$25;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PrimaryShutterButton$25;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4115
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4116
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1065
    return-void

    .line 1011
    :cond_1
    new-array v0, v7, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->imageButtonAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 4073
    :cond_2
    new-array v0, v7, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4074
    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 1009
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 4070
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1011
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 4073
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final runLongPressAnimation(Z)V
    .locals 7

    .prologue
    const-wide/16 v2, 0xfa

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 850
    iput-boolean p1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isLongPressAnimationInProgress:Z

    .line 851
    if-eqz p1, :cond_1

    .line 3859
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->longPressStartAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 3861
    new-array v0, v4, [I

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoButtonRadius:I

    aput v1, v0, v6

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->roundButtonRadius:I

    int-to-float v1, v1

    float-to-int v1, v1

    aput v1, v0, v5

    .line 3862
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3864
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3865
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 3866
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 3867
    new-instance v1, Lcom/android/camera/ui/PrimaryShutterButton$16;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PrimaryShutterButton$16;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3877
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3878
    const-wide/16 v2, 0x7af

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3879
    new-instance v2, Lcom/android/camera/ui/PrimaryShutterButton$17;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/PrimaryShutterButton$17;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3893
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->longPressStartAnimator:Landroid/animation/AnimatorSet;

    .line 3894
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->longPressStartAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3896
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->longPressStartAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 856
    :goto_0
    return-void

    .line 3900
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->longPressStartAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->longPressStartAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3901
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->longPressStartAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3904
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->longPressStopAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    .line 3906
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 3907
    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->longPressStopAnimator:Landroid/animation/ValueAnimator;

    .line 3908
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->longPressStopAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3909
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->longPressStopAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/PrimaryShutterButton$18;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton$18;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3925
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->longPressStopAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/PrimaryShutterButton$19;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PrimaryShutterButton$19;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3934
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->longPressStopAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3877
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 3907
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final runSplashInAnimation()V
    .locals 2

    .prologue
    .line 644
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->scaleFactor:F

    mul-float/2addr v0, v1

    const/16 v1, 0xfa

    .line 645
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->getRoundButtonScaleAnimator(FI)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 649
    return-void
.end method

.method private final updateButtonRect()V
    .locals 5

    .prologue
    .line 1180
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->roundButtonCurrentRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->scaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1181
    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterX:I

    sub-int/2addr v1, v0

    .line 1182
    iget v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterY:I

    sub-int/2addr v2, v0

    .line 1183
    shl-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v1

    .line 1184
    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    .line 1185
    iget-object v4, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonRect:Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1186
    return-void
.end method

.method private final updateContentDescription(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)V
    .locals 2

    .prologue
    .line 304
    sget-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PHOTO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->LENSBLUR:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PANORAMA:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-ne p1, v0, :cond_1

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 316
    return-void

    .line 308
    :cond_1
    sget-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->CONFIRM:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-ne p1, v0, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_2
    sget-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->CANCEL:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-ne p1, v0, :cond_3

    .line 311
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public buildDrawingCache(Z)V
    .locals 0

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->invalidate()V

    .line 1400
    invoke-super {p0, p1}, Lcom/android/camera/ui/ShutterButtonBase;->buildDrawingCache(Z)V

    .line 1401
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 1191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 1197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    .line 1200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1201
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_4

    .line 1202
    :cond_2
    if-eqz v0, :cond_6

    .line 1203
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->gestureDetector:Lcom/android/camera/ui/SimpleLongPressGestureDetector;

    invoke-virtual {v0}, Lcom/android/camera/ui/SimpleLongPressGestureDetector;->cancelLongPress()V

    .line 1207
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->burstStartedLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1208
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isLongPressInProgress:Z

    .line 1210
    iget-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isLongPressAnimationInProgress:Z

    if-eqz v0, :cond_7

    .line 1211
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->runLongPressAnimation(Z)V

    .line 1212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->setPressed(Z)V

    .line 1213
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->listener:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;

    if-eqz v0, :cond_3

    .line 1214
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->listener:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;

    invoke-interface {v0}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;->onShutterButtonLongPressRelease()V

    .line 1225
    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 1228
    new-instance v0, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    .line 1230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/camera/uiutils/TouchCoordinate;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->touchCoordinate:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    .line 1232
    :cond_5
    invoke-super {p0, p1}, Lcom/android/camera/ui/ShutterButtonBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1205
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->gestureDetector:Lcom/android/camera/ui/SimpleLongPressGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SimpleLongPressGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1216
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->supressLongPressAnimation:Z

    .line 1221
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->listener:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;

    if-eqz v0, :cond_3

    .line 1222
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->listener:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;

    invoke-interface {v0}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;->onShutterButtonLongPressRelease()V

    goto :goto_1

    .line 1225
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1282
    invoke-super {p0}, Lcom/android/camera/ui/ShutterButtonBase;->drawableStateChanged()V

    .line 1283
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->isPressed()Z

    move-result v1

    .line 1284
    iget-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->oldPressed:Z

    if-eq v1, v0, :cond_1

    .line 4508
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getClickEnabledObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1286
    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 1308
    new-instance v0, Lcom/android/camera/ui/PrimaryShutterButton$27;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PrimaryShutterButton$27;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 1318
    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->oldPressed:Z

    .line 1320
    :cond_1
    return-void

    .line 4514
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonRippleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonRippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4518
    :cond_3
    if-eqz v1, :cond_4

    .line 4633
    const v0, 0x3f87ae14    # 1.06f

    iget v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->scaleFactor:F

    mul-float/2addr v0, v2

    const/16 v2, 0x64

    .line 4634
    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/PrimaryShutterButton;->getRoundButtonScaleAnimator(FI)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4637
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4523
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    sget-object v2, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PHOTO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-ne v0, v2, :cond_0

    .line 4524
    if-eqz v1, :cond_5

    .line 4525
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4527
    :goto_3
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4528
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->linearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4529
    new-instance v2, Lcom/android/camera/ui/PrimaryShutterButton$5;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/PrimaryShutterButton$5;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4539
    new-instance v2, Lcom/android/camera/ui/PrimaryShutterButton$6;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/ui/PrimaryShutterButton$6;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4558
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 4521
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->runSplashInAnimation()V

    goto :goto_2

    .line 4525
    :cond_5
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_3

    .line 1316
    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_1

    .line 4525
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected final getPhotoCirclePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->onDrawListener:Lcom/android/camera/ui/PrimaryShutterButton$OnDrawListener;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->onDrawListener:Lcom/android/camera/ui/PrimaryShutterButton$OnDrawListener;

    invoke-interface {v0}, Lcom/android/camera/ui/PrimaryShutterButton$OnDrawListener;->onDraw()V

    .line 1134
    iget-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->clickEnabled:Z

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->onDrawListener:Lcom/android/camera/ui/PrimaryShutterButton$OnDrawListener;

    invoke-interface {v0}, Lcom/android/camera/ui/PrimaryShutterButton$OnDrawListener;->onEnabled()V

    .line 1140
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->roundButtonCurrentRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->scaleFactor:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1144
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoButtonCurrentRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->scaleFactor:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1147
    iget-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isRippleEffectAnimating:Z

    if-eqz v0, :cond_1

    .line 1148
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoRippleCurrentRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->scaleFactor:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->isVideoMode(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isVideoButtonAnimating:Z

    if-eqz v0, :cond_4

    .line 1155
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonCurrentRadius:I

    if-lez v0, :cond_3

    .line 1156
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonCurrentRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->scaleFactor:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1160
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonStopSquareCurrentHalfSize:I

    if-lez v0, :cond_4

    .line 1161
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonStopSquareCurrentHalfSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->scaleFactor:F

    mul-float/2addr v0, v1

    .line 1162
    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterX:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterY:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterX:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterY:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonContentPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1171
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    sget-object v1, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->CANCEL:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    sget-object v1, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->CONFIRM:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentButtonImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 1174
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentButtonImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonImageRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1175
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentButtonImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1177
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 1384
    invoke-direct {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->updateButtonRect()V

    .line 1385
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/ShutterButtonBase;->onMeasure(II)V

    .line 1386
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonSize:I

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonSize:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->setMeasuredDimension(II)V

    .line 1387
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->invalidate()V

    .line 1388
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 1377
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterX:I

    .line 1378
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonCenterY:I

    .line 1379
    invoke-direct {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->updateButtonRect()V

    .line 1380
    return-void
.end method

.method public final resetShutterButton(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 464
    sget-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PHOTO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->LENSBLUR:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PANORAMA:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-ne p1, v0, :cond_1

    .line 467
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoButtonRadius:I

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoButtonCurrentRadius:I

    .line 468
    iput v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonCurrentRadius:I

    .line 469
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 470
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 477
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->roundButtonRadius:I

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->roundButtonCurrentRadius:I

    .line 478
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoButtonRadius:I

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoRippleCurrentRadius:I

    .line 479
    iput-boolean v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isLongPressAnimationInProgress:Z

    .line 480
    iput-boolean v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isRippleEffectAnimating:Z

    .line 481
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/PrimaryShutterButton;->setPressed(Z)V

    .line 482
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/PrimaryShutterButton;->setScaleX(F)V

    .line 483
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/PrimaryShutterButton;->setScaleY(F)V

    .line 484
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->invalidate()V

    .line 485
    return-void

    .line 473
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonRadius:I

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonCurrentRadius:I

    .line 474
    iput v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonStopSquareCurrentHalfSize:I

    .line 475
    iput v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoButtonCurrentRadius:I

    goto :goto_0
.end method

.method protected final runClickAnimation()V
    .locals 4

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 497
    :goto_0
    return-void

    .line 3567
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonRippleAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 3580
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3582
    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->roundButtonRadius:I

    iget v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoButtonRadius:I

    sub-int/2addr v1, v2

    .line 3583
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3584
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3585
    new-instance v2, Lcom/android/camera/ui/PrimaryShutterButton$7;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/ui/PrimaryShutterButton$7;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3607
    new-instance v1, Lcom/android/camera/ui/PrimaryShutterButton$8;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PrimaryShutterButton$8;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3568
    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonRippleAnimator:Landroid/animation/ValueAnimator;

    .line 3570
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonRippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3571
    invoke-direct {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->runSplashInAnimation()V

    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 3580
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 1238
    invoke-super {p0, p1}, Lcom/android/camera/ui/ShutterButtonBase;->setEnabled(Z)V

    .line 1239
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/PrimaryShutterButton;->setClickEnabled(Z)V

    .line 1240
    if-eqz p1, :cond_1

    .line 1242
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->disableChangeAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1243
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->runEnableChangeAnimation(Z)V

    .line 1252
    :cond_0
    :goto_0
    return-void

    .line 1244
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    sget-object v1, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PHOTO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-ne v0, v1, :cond_0

    .line 1248
    iget-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isVideoButtonAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isLongPressInProgress:Z

    if-nez v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->disableChangeAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/ui/PrimaryShutterButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final setEnabledWithoutAnimation(Z)V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 1258
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    sget-object v1, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PHOTO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-ne v0, v1, :cond_0

    .line 1259
    invoke-super {p0, p1}, Lcom/android/camera/ui/ShutterButtonBase;->setEnabled(Z)V

    .line 1260
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/PrimaryShutterButton;->setClickEnabled(Z)V

    .line 1261
    if-eqz p1, :cond_1

    .line 1263
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->disableChangeAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1264
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1265
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1271
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->invalidate()V

    .line 1273
    :cond_0
    return-void

    .line 1267
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->buttonPaint:Landroid/graphics/Paint;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1268
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1269
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->baseElevationOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->setTranslationZ(F)V

    goto :goto_0
.end method

.method public final setMode(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x15e

    const-wide/16 v10, 0x96

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 291
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isVideoRecording:Z

    if-eqz v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 2384
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->roundButtonRadius:I

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoButtonRadius:I

    sub-int v2, v0, v1

    .line 2385
    invoke-static {p1}, Lcom/android/camera/ui/PrimaryShutterButton;->isVideoMode(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)Z

    move-result v3

    .line 2386
    if-eqz v3, :cond_2

    .line 2387
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2388
    const-wide/16 v4, 0x190

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2390
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2391
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2392
    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2401
    :goto_1
    iget-object v4, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2402
    new-instance v4, Lcom/android/camera/ui/PrimaryShutterButton$2;

    invoke-direct {v4, p0, v2}, Lcom/android/camera/ui/PrimaryShutterButton$2;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;I)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2412
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2413
    new-instance v2, Lcom/android/camera/ui/PrimaryShutterButton$3;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ui/PrimaryShutterButton$3;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2428
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2429
    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2441
    invoke-static {p1}, Lcom/android/camera/ui/PrimaryShutterButton;->isVideoMode(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2442
    new-array v0, v6, [I

    aput v7, v0, v7

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonRadius:I

    aput v1, v0, v8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2443
    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2444
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2445
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->curve1000Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2452
    :goto_2
    new-instance v1, Lcom/android/camera/ui/PrimaryShutterButton$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PrimaryShutterButton$4;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2357
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2358
    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2359
    new-instance v0, Lcom/android/camera/ui/PrimaryShutterButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PrimaryShutterButton$1;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2371
    iput-boolean v8, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isVideoButtonAnimating:Z

    .line 2372
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 295
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    .line 297
    invoke-virtual {p1}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->setTag(Ljava/lang/Object;)V

    .line 299
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PrimaryShutterButton;->updateContentDescription(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)V

    goto/16 :goto_0

    .line 2394
    :cond_2
    new-array v0, v6, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2395
    const-wide/16 v4, 0x1a1

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2397
    new-array v0, v6, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2398
    const-wide/16 v4, 0x1a1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 2447
    :cond_3
    new-array v0, v6, [I

    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonRadius:I

    aput v1, v0, v7

    aput v7, v0, v8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2448
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2449
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->curve060Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .line 2387
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2390
    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data

    .line 2394
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2397
    :array_3
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public final setOnDrawListener(Lcom/android/camera/ui/PrimaryShutterButton$OnDrawListener;)V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->onDrawListener:Lcom/android/camera/ui/PrimaryShutterButton$OnDrawListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot set first draw listener more than once."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 334
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->onDrawListener:Lcom/android/camera/ui/PrimaryShutterButton$OnDrawListener;

    .line 337
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->invalidate()V

    .line 338
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setScale(F)V
    .locals 2

    .prologue
    .line 1120
    iput p1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->scaleFactor:F

    .line 1121
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 1122
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/PrimaryShutterButton$26;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PrimaryShutterButton$26;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1127
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1128
    return-void
.end method

.method public final setVideoClickAnimationsListener(Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoClickAnimationsListener:Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;

    .line 346
    return-void
.end method

.method public final toggleRecordingMode(ZZ)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 325
    .line 2683
    iget-boolean v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isVideoRecording:Z

    if-eq p1, v0, :cond_2

    .line 2688
    if-eqz p2, :cond_0

    .line 2691
    invoke-direct {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->runSplashInAnimation()V

    .line 2693
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->isVideoRecording:Z

    .line 2694
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoClickAnimationsListener:Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;

    if-eqz v0, :cond_1

    .line 2695
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoClickAnimationsListener:Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;->onAnimationsStarted()V

    .line 2782
    :cond_1
    if-eqz p2, :cond_4

    .line 2783
    if-nez p1, :cond_3

    .line 2785
    new-array v0, v6, [I

    iget v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonStopSquareHalfSize:I

    aput v3, v0, v1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fadeStopSquareAnimator:Landroid/animation/ValueAnimator;

    .line 2786
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fadeStopSquareAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2787
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fadeStopSquareAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->curve4060Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2794
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fadeStopSquareAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/camera/ui/PrimaryShutterButton$13;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/PrimaryShutterButton$13;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2802
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fadeStopSquareAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/camera/ui/PrimaryShutterButton$14;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/PrimaryShutterButton$14;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2812
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fadeStopSquareAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2699
    :goto_1
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->roundButtonRadius:I

    iget v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonRadius:I

    sub-int/2addr v0, v3

    .line 2700
    if-eqz p2, :cond_7

    .line 2704
    if-nez p1, :cond_6

    .line 2706
    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoClickAnimator:Landroid/animation/ValueAnimator;

    .line 2707
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoClickAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->curve6060Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2709
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoClickAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/camera/ui/PrimaryShutterButton$10;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/PrimaryShutterButton$10;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2751
    :goto_2
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoClickAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2753
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoClickAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/camera/ui/PrimaryShutterButton$12;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton$12;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2763
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->setClickEnabled(Z)V

    .line 2764
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoClickAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_3
    return-void

    .line 2790
    :cond_3
    new-array v0, v6, [I

    aput v1, v0, v1

    iget v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonStopSquareHalfSize:I

    aput v3, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fadeStopSquareAnimator:Landroid/animation/ValueAnimator;

    .line 2791
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fadeStopSquareAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2792
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fadeStopSquareAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 2814
    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonStopSquareHalfSize:I

    :goto_4
    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonStopSquareCurrentHalfSize:I

    .line 2815
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->invalidate()V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 2814
    goto :goto_4

    .line 2724
    :cond_6
    new-array v2, v6, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoClickAnimator:Landroid/animation/ValueAnimator;

    .line 2725
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoClickAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/camera/ui/PrimaryShutterButton;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2727
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoClickAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/camera/ui/PrimaryShutterButton$11;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/PrimaryShutterButton$11;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 2766
    :cond_7
    if-eqz p1, :cond_8

    move v1, v2

    .line 2767
    :cond_8
    iget v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonRadius:I

    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->videoButtonCurrentRadius:I

    .line 2768
    if-nez p1, :cond_9

    .line 2769
    invoke-direct {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->getBreathingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2771
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/ui/PrimaryShutterButton;->invalidate()V

    goto :goto_3

    .line 2706
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2724
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final transitionToCancel()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1331
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    sget-object v2, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PHOTO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-eq v1, v2, :cond_0

    .line 1332
    sget-object v0, Lcom/android/camera/ui/PrimaryShutterButton;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "transitionToCancel while ShutterButtonMode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const/4 v0, 0x0

    .line 1340
    :goto_0
    return v0

    .line 1335
    :cond_0
    sget-object v1, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->CANCEL:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    iput-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    .line 1336
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    invoke-direct {p0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->updateContentDescription(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)V

    .line 1337
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->cancelButtonImage:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentButtonImage:Landroid/graphics/drawable/Drawable;

    .line 1339
    iget v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoPaintCancelColor:I

    invoke-direct {p0, v0, v1, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->runImageButtonAnimation(ZIZ)V

    goto :goto_0
.end method

.method public final transitionToCapture()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1363
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    sget-object v3, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->CANCEL:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-ne v2, v3, :cond_0

    .line 1364
    iget v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoPaintIdleColor:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->runImageButtonAnimation(ZIZ)V

    .line 1372
    :goto_0
    return v0

    .line 1366
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    sget-object v3, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->CONFIRM:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-ne v2, v3, :cond_1

    .line 1367
    iget v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoPaintIdleColor:I

    invoke-direct {p0, v1, v2, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->runImageButtonAnimation(ZIZ)V

    goto :goto_0

    .line 1371
    :cond_1
    sget-object v0, Lcom/android/camera/ui/PrimaryShutterButton;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "transitionToCapture while ShutterButtonMode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1372
    goto :goto_0
.end method

.method public transitionToConfirm()Z
    .locals 1

    .prologue
    .line 1345
    iget v0, p0, Lcom/android/camera/ui/PrimaryShutterButton;->photoPaintPressedColor:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->transitionToConfirm(I)Z

    move-result v0

    return v0
.end method

.method protected final transitionToConfirm(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1350
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    sget-object v2, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PHOTO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    if-eq v1, v2, :cond_0

    .line 1351
    const/4 v0, 0x0

    .line 1357
    :goto_0
    return v0

    .line 1353
    :cond_0
    sget-object v1, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->CONFIRM:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    iput-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    .line 1354
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->confirmButtonImage:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentButtonImage:Landroid/graphics/drawable/Drawable;

    .line 1355
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton;->currentMode:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    invoke-direct {p0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->updateContentDescription(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)V

    .line 1356
    invoke-direct {p0, v0, p1, v0}, Lcom/android/camera/ui/PrimaryShutterButton;->runImageButtonAnimation(ZIZ)V

    goto :goto_0
.end method
