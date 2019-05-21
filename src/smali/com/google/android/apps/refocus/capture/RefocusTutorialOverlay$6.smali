.class final Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$6;
.super Ljava/lang/Object;
.source "RefocusTutorialOverlay.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;->enableRepeat(Landroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCancelled:Z

.field private synthetic val$set:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;)V
    .locals 1

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$6;->val$set:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$6;->isCancelled:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$6;->isCancelled:Z

    .line 290
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$6;->isCancelled:Z

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$6;->val$set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 285
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$6;->isCancelled:Z

    .line 275
    return-void
.end method
