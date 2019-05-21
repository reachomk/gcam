.class final Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$3;
.super Ljava/lang/Object;
.source "GridFrameViewHolder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;-><init>(Lcom/android/camera/burst/editor/grid/GridFramesImageViewAdapter;Landroid/widget/FrameLayout;Lcom/android/camera/burst/editor/grid/BurstGrid$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$3;->this$0:Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder$3;->this$0:Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->access$100(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;F)V

    .line 105
    return-void
.end method
