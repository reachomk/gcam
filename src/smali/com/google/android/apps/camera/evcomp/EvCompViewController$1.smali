.class final Lcom/google/android/apps/camera/evcomp/EvCompViewController$1;
.super Ljava/lang/Object;
.source "EvCompViewController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/evcomp/EvCompViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$evCompView:Lcom/google/android/apps/camera/evcomp/EvCompView;

.field private synthetic val$rulerLongDashLength:F

.field private synthetic val$rulerShortDashLength:F


# direct methods
.method constructor <init>(FFLcom/google/android/apps/camera/evcomp/EvCompView;)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController$1;->val$rulerShortDashLength:F

    iput p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController$1;->val$rulerLongDashLength:F

    iput-object p3, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController$1;->val$evCompView:Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 90
    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController$1;->val$rulerShortDashLength:F

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController$1;->val$rulerLongDashLength:F

    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController$1;->val$rulerShortDashLength:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController$1;->val$evCompView:Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setDashLengthPx(F)V

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController$1;->val$evCompView:Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setDrawLeftMarker(F)V

    .line 94
    return-void
.end method
