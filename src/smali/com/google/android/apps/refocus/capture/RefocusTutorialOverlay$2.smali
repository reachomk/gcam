.class final Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$2;
.super Ljava/lang/Object;
.source "RefocusTutorialOverlay.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$2;->this$0:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$2;->this$0:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

    iget-object v1, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$2;->this$0:Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;

    invoke-static {v1}, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;->access$500(Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, -0x3ee00000    # -10.0f

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;->access$000(Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;Landroid/widget/ImageView;F)V

    .line 212
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 213
    return-void
.end method
