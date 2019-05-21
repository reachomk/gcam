.class public Lcom/android/camera/ui/CaptureAnimationOverlay;
.super Landroid/view/View;
.source "CaptureAnimationOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CaptureAnimationOverlay$State;
    }
.end annotation


# instance fields
.field private final alphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private flashAnimation:Landroid/animation/AnimatorSet;

.field private final linearInterpolator:Landroid/view/animation/Interpolator;

.field private final previewArea:Landroid/graphics/RectF;

.field private scrimFadingAnimation:Landroid/animation/AnimatorSet;

.field private state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "CaptureAnimOverlay"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    sget v0, Lcom/android/camera/ui/CaptureAnimationOverlay$State;->NO_ANIMATION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->previewArea:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->backgroundPaint:Landroid/graphics/Paint;

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/ui/CaptureAnimationOverlay;->resetColor()V

    .line 76
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->linearInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/CaptureAnimationOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/ui/CaptureAnimationOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    new-instance v0, Lcom/android/camera/ui/CaptureAnimationOverlay$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CaptureAnimationOverlay$1;-><init>(Lcom/android/camera/ui/CaptureAnimationOverlay;)V

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->alphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/CaptureAnimationOverlay;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->backgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$102$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQ3C5O78TBICL0MSQBDC5Q6IRRE9TR6ASJCC5SJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTB95T1M2S3KELP6AGBED5MM2T39DTN4UTJ5E9M62U94ADQ62T357CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9F8DGN0T3LE9IK2RJ9DLGN8QBFDP7NCPBIDHGNI92JEHGN8P9R(Lcom/android/camera/ui/CaptureAnimationOverlay;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/ui/CaptureAnimationOverlay;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->flashAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method


# virtual methods
.method public final clearScrim()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->scrimFadingAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->scrimFadingAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->scrimFadingAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 210
    :cond_0
    sget v0, Lcom/android/camera/ui/CaptureAnimationOverlay$State;->NO_ANIMATION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    .line 211
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CaptureAnimationOverlay;->setVisibility(I)V

    .line 212
    return-void
.end method

.method public final fadeScrim(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->scrimFadingAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->scrimFadingAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->scrimFadingAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 160
    :cond_0
    if-eqz p1, :cond_1

    .line 161
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 162
    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 163
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->alphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 171
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->scrimFadingAnimation:Landroid/animation/AnimatorSet;

    .line 172
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->scrimFadingAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->scrimFadingAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/camera/ui/CaptureAnimationOverlay$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/CaptureAnimationOverlay$3;-><init>(Lcom/android/camera/ui/CaptureAnimationOverlay;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->scrimFadingAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 200
    return-void

    .line 165
    :cond_1
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 166
    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 167
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 161
    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
    .end array-data

    .line 165
    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x0
    .end array-data
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    sget v1, Lcom/android/camera/ui/CaptureAnimationOverlay$State;->NO_ANIMATION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    if-eq v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->previewArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->previewArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 221
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 95
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->previewArea:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 98
    return-void
.end method

.method public final resetColor()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    return-void
.end method

.method public final setColor(I)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    return-void
.end method

.method public final startFlashAnimation()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 107
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->flashAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->flashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->flashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 114
    :cond_0
    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 115
    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 117
    const-wide/16 v4, 0x42

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 118
    const-wide/16 v4, 0xa6

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 120
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->alphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 121
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->alphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 122
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->linearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 123
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->linearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 125
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->flashAnimation:Landroid/animation/AnimatorSet;

    .line 126
    iget-object v3, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->flashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 127
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->flashAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/camera/ui/CaptureAnimationOverlay$2;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/ui/CaptureAnimationOverlay$2;-><init>(Lcom/android/camera/ui/CaptureAnimationOverlay;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    iget-object v1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay;->flashAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 145
    return-object v0

    .line 114
    :array_0
    .array-data 4
        0x3f428f5c    # 0.76f
        0x3f428f5c    # 0.76f
    .end array-data

    .line 115
    :array_1
    .array-data 4
        0x3f428f5c    # 0.76f
        0x0
    .end array-data
.end method
