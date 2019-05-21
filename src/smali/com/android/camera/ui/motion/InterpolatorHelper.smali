.class public final Lcom/android/camera/ui/motion/InterpolatorHelper;
.super Ljava/lang/Object;
.source "InterpolatorHelper.java"


# static fields
.field private static FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field private static LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 15
    sput-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static getFastOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 44
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const v0, 0x10c000d

    .line 40
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 44
    :goto_1
    sget-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method public static getLinearOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 29
    :goto_0
    return-object v0

    .line 23
    :cond_0
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    const v0, 0x10c000e

    .line 25
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 29
    :goto_1
    sget-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/camera/ui/motion/InterpolatorHelper;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method
