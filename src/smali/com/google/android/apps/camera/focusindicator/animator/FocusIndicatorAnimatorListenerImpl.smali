.class public final Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;
.super Ljava/lang/Object;
.source "FocusIndicatorAnimatorListenerImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;


# instance fields
.field private final chipTextView:Landroid/widget/TextView;

.field private final focusIndicatorRingDrawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

.field private final focusIndicatorRingView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;->chipTextView:Landroid/widget/TextView;

    .line 25
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;->focusIndicatorRingView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    .line 26
    iput-object p3, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;->focusIndicatorRingDrawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;->focusIndicatorRingDrawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;->focusIndicatorRingView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;->chipTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final chipOpacityUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl$6;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl$6;-><init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;)V

    return-object v0
.end method

.method public final chipSizeUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl$7;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl$7;-><init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;)V

    return-object v0
.end method

.method public final innerSplashDiameterUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl$1;-><init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;)V

    return-object v0
.end method

.method public final innerSplashOpacityUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl$2;-><init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;)V

    return-object v0
.end method

.method public final outerRingDiameterUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl$3;-><init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;)V

    return-object v0
.end method

.method public final outerRingOpacityUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl$4;-><init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;)V

    return-object v0
.end method

.method public final outerRingThicknessUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl$5;-><init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;)V

    return-object v0
.end method
