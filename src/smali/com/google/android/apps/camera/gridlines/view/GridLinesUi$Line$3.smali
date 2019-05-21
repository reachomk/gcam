.class final Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GridLinesUi.java"


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
    .line 114
    iput-object p1, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line$3;->this$0:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line$3;->this$0:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;->hidden:Z

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line$3;->this$0:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;

    invoke-static {v0}, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;->access$000(Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Line;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 119
    return-void
.end method
