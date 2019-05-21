.class final Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line$4;
.super Ljava/lang/Object;
.source "GridLinesUi.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;->animateAlpha(I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line$4;->this$0:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line$4;->this$0:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;->setAlpha(I)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line$4;->this$0:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;

    invoke-static {v0}, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;->access$000(Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 127
    return-void
.end method
