.class final Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GridZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->startZoomIn(Lcom/android/camera/burst/editor/grid/BurstImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

.field private synthetic val$activeImageView:Lcom/ortiz/touch/TouchImageView;

.field private synthetic val$gridImageView:Lcom/android/camera/burst/editor/grid/BurstImageView;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Lcom/android/camera/burst/editor/grid/BurstImageView;Lcom/ortiz/touch/TouchImageView;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$4;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    iput-object p2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$4;->val$gridImageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    iput-object p3, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$4;->val$activeImageView:Lcom/ortiz/touch/TouchImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 528
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$4;->val$gridImageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/editor/grid/BurstImageView;->setAlpha(F)V

    .line 529
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$4;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-static {v0, v2}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$1002(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 532
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$4;->val$activeImageView:Lcom/ortiz/touch/TouchImageView;

    invoke-virtual {v0, v2}, Lcom/ortiz/touch/TouchImageView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 533
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$4;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-static {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$800(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$4;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-static {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$000(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 518
    iget-object v2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$4;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-static {v2, v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$900(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Landroid/view/View;)V

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$4;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 522
    return-void
.end method
